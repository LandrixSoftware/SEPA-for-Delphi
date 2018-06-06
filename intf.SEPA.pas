unit intf.SEPA;

interface

uses
  System.SysUtils, System.Variants, System.Classes,System.StrUtils,
  System.Generics.Collections,System.DateUtils,System.IOUtils,
  WinAPI.ShellAPi,WinAPI.Windows,
  Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf,
  intf.SEPATypes;

type
  TSEPANtry = class(TObject)
  public
    Amount : Currency;
    AmountCurrency : String;
    BookingDate : TDateTime;
    ValutaDate : TDateTime;
    NtryDtlsTxDtlsMndtId : String;
    NtryDtlsTxDtlsCdtrName : String;
    NtryDtlsTxDtlsCdtrId : String;
    NtryDtlsTxDtlsCdtrAcctIBAN : String;
    NtryDtlsTxDtlsCdtrAcctBIC : String;
    NtryDtlsTxDtlsRmtInfIstrd : String;
  public
    constructor Create;
    procedure Clear;
    procedure LoadData(_Node : IXMLReportEntry2);
  end;

  TSEPANtryList = class(TObjectList<TSEPANtry>)
  public
  end;

  TSEPARpt = class(TObject)
  public
    ID : String;
    CreationDateTime : TDateTime;
    FromDateTime : TDateTime;
    ToDateTime : TDateTime;

    AcctIBAN : String;
    AcctCurrency : String;

    BalanceOpeningBookedAmount : Currency;
    BalanceClosingBookedAmount : Currency;

    Entries : TSEPANtryList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    procedure LoadData(_Node : IXMLAccountReport11);
  end;

  TSEPARptList = class(TObjectList<TSEPARpt>)
  end;

  TSEPABankStatement = class(TObject)
  public type
    TSubsemblyBanking4WOptions = record
      AppFilename : String;
      WalletFilename : String;
      AccessToken : String;
      Unattended : Boolean;
      AccountsBroadcast : Boolean;
      AcctIBAN : String;
      AcctNo : String;
      ExportFromDate : TDate;
      ExportToDate : TDate;
    end;
  private
    procedure InternalLoadDocument(_Xml : IXMLDocument);
  public
    Rpt : TSEPARptList;
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    procedure LoadFromFile(const _Filename : String);
    procedure LoadFromStream(_Stream : TStream);
    procedure LoadFromXMLStr(const _XML : String);
    function  LoadFromSubsemblyBanking4W(_Opt : TSubsemblyBanking4WOptions; out _LastErrorStr : String) : Boolean;
  end;

implementation

{ TSEPABankStatement }

constructor TSEPABankStatement.Create;
begin
  Rpt := TSEPARptList.Create;
  Clear;
end;

destructor TSEPABankStatement.Destroy;
begin
  if Assigned(Rpt) then begin  Rpt.Free; Rpt := nil; end;
  inherited;
end;

procedure TSEPABankStatement.Clear;
begin
  Rpt.Clear;
end;

procedure TSEPABankStatement.LoadFromFile(const _Filename: String);
var
  xml : IXMLDocument;
begin
  if not FileExists(_Filename) then
    exit;
  xml := TXMLDocument.Create(_FileName);
  {$IFDEF USE_OXMLDomVendor}TXMLDocument(xml).DOMVendor := GetDOMVendor(sOXmlDOMVendor);{$ENDIF}
  InternalLoadDocument(xml);
end;

procedure TSEPABankStatement.LoadFromStream(_Stream: TStream);
var
  xml : IXMLDocument;
begin
  if _Stream = nil then
    exit;
  xml := TXMLDocument.Create(nil);
  {$IFDEF USE_OXMLDomVendor}TXMLDocument(xml).DOMVendor := GetDOMVendor(sOXmlDOMVendor);{$ENDIF}
  xml.LoadFromStream(_Stream);
  InternalLoadDocument(xml);
end;

function TSEPABankStatement.LoadFromSubsemblyBanking4W(
  _Opt: TSubsemblyBanking4WOptions; out _LastErrorStr : String) : Boolean;
var
  params,fn : String;
  shExecInfo : SHELLEXECUTEINFOW;
  lastError : Integer;
begin
  Result := false;
  _LastErrorStr := '';

  if _Opt.AppFilename.IsEmpty then
    _Opt.AppFilename := 'C:\Program Files (x86)\TopBanking\TopBanking.exe';
  if _Opt.WalletFilename.IsEmpty then
    exit;
  if _Opt.AccessToken.IsEmpty then
    exit;
  if _Opt.AcctIBAN.IsEmpty and _Opt.AcctNo.IsEmpty then
    exit;
  if (_Opt.ExportFromDate = 0) or (_Opt.ExportToDate = 0) then
    exit;
  if not TFile.Exists(_Opt.AppFilename) then
    exit;
  if not TFile.Exists(_Opt.WalletFilename) then
    exit;

  fn := TPath.GetTempFileName;

  params := '-Cmd '+
           '-Wallet "'+_Opt.WalletFilename+'" '+
           '-Token '+_Opt.AccessToken;
  if _Opt.Unattended then
    params := params + ' -Unattended';
  if _Opt.AccountsBroadcast then
    params := params + ' -SendRecv Rundruf';
  if _Opt.AcctNo.IsEmpty then
    params := params + ' -AcctIBAN '+_Opt.AcctIBAN
  else
    params := params + ' -AcctNo '+_Opt.AcctNo;
  params := params + ' -AcctCurrency EUR';
  params := params + ' -ExportFrom '+FormatDateTime('yyyy-mm-dd',_Opt.ExportFromDate);
  params := params + ' -ExportTo '+FormatDateTime('yyyy-mm-dd',_Opt.ExportToDate);
  params := params + ' -ExportCAMT "'+fn+'"';


  shExecInfo.Wnd := 0;//GetForegroundWindow;
  shExecInfo.cbSize := sizeof(SHELLEXECUTEINFOW);
  shExecInfo.fMask := SEE_MASK_NOCLOSEPROCESS;
  shExecInfo.lpVerb := 'open';
  shExecInfo.lpFile := PWideChar(_Opt.AppFilename);
  shExecInfo.lpParameters := PWideChar(params);
  shExecInfo.lpDirectory := PWideChar(TPath.GetDirectoryName(_Opt.AppFilename));
  shExecInfo.nShow := SW_HIDE;
  Result := ShellExecuteExW(@ShExecInfo);

  try
    if Result then
      WaitForSingleObject(ShExecInfo.hProcess, INFINITE)
    else
    begin
      lastError := GetLastError;
      case lastError of
        //0 TopBanking.exe hat alle Kommandos erfolgreich ausgeführt.
        1000 : _LastErrorStr := 'Der Anwender hat ein Kommando manuell abgebrochen. Zum Beispiel bei der PIN-Eingabe. Die folgenden Kommandos wurden nicht ausgeführt.';
        9000 : _LastErrorStr := 'Von einer Bank wurde bei der Übertragung ein Fehlercode empfangen.';
        10000 : _LastErrorStr := 'Die übergebenen Parameter sind ungültig. Überprüfen Sie die Kommandozeile.';
        10001 : _LastErrorStr := 'Der gewählte Datentresor konnte nicht selektiert werden. Prüfen Sie, ob der angegebene Datentresor eine korrekte Datentresordatei ist und beschreibbar ist.';
        10002 : _LastErrorStr := 'Der gewählte Datentresor konnte nicht geöffnet werden. Vermutlich war das übergebene Passwort falsch.';
        10003 : _LastErrorStr := 'Der gewählte Datentresor existiert nicht und konnte nicht angelegt werden. Überprüfen Sie, ob der angegebene Ort beschreibbar ist.';
        10004 : _LastErrorStr := 'Die übergebene Importdatei war ungültig.';
        10005 : _LastErrorStr := 'Es liegt keine Business Lizenz vor. Für die Nutzung des Kommandozeilenmodus ist eine Business Lizenz erforderlich, die im Programm erst eingetragen werden muss.';
        20000 : _LastErrorStr := 'Ein interner Fehler ist aufgetreten.';
      end;
    end;
  finally
    CloseHandle(ShExecInfo.hProcess);
  end;

  if Result then
  if TFile.Exists(fn) then
  begin
    LoadFromFile(fn);
    TFile.Delete(fn);
  end else
    result := false;
end;

procedure TSEPABankStatement.LoadFromXMLStr(const _XML: String);
var
  xml : IXMLDocument;
begin
  if _XML.IsEmpty then
    exit;
  xml := TXMLDocument.Create(nil);
  {$IFDEF USE_OXMLDomVendor}TXMLDocument(xml).DOMVendor := GetDOMVendor(sOXmlDOMVendor);{$ENDIF}
  xml.LoadFromXML(_XML);
  InternalLoadDocument(xml);
end;

procedure TSEPABankStatement.InternalLoadDocument(_Xml: IXMLDocument);
var
  xml : IXMLDocument05200102;
  i : Integer;
  itmrpt : TSEPARpt;
begin
  xml := _Xml.GetDocBinding('Document', TXMLDocument05200102, TSEPATypesHelper.TargetNamespace05200102) as IXMLDocument05200102;

  for i := 0 to xml.BkToCstmrAcctRpt.Rpt.Count-1 do
  begin
    itmrpt := TSEPARpt.Create;
    itmrpt.LoadData(xml.BkToCstmrAcctRpt.Rpt[i]);
    Rpt.Add(itmrpt);
  end;
end;

{ TSEPARpt }

constructor TSEPARpt.Create;
begin
  Entries := TSEPANtryList.Create;
  Clear;
end;

destructor TSEPARpt.Destroy;
begin
  if Assigned(Entries) then begin  Entries.Free; Entries := nil; end;
  inherited;
end;

procedure TSEPARpt.Clear;
begin
  ID := '';
  CreationDateTime := 0;
  FromDateTime := 0;
  ToDateTime := 0;
  AcctIBAN := '';
  AcctCurrency := '';
  BalanceOpeningBookedAmount := 0;
  BalanceClosingBookedAmount := 0;
  Entries.Clear;
end;

procedure TSEPARpt.LoadData(_Node: IXMLAccountReport11);
var
  i : Integer;
  itm : TSEPANtry;
begin
  {$IF CompilerVersion <= 30.0}
  if Pos('.', _Node.FrToDt.FrDtTm) = 0 then _Node.FrToDt.FrDtTm := ReplaceText(_Node.FrToDt.FrDtTm,'+','.0+');
  if Pos('.', _Node.FrToDt.ToDtTm) = 0 then _Node.FrToDt.ToDtTm := ReplaceText(_Node.FrToDt.ToDtTm,'+','.0+');
  {$ENDIF}
  ID := _Node.Id;
  CreationDateTime := ISO8601ToDate(_Node.CreDtTm,false);
  FromDateTime := ISO8601ToDate(_Node.FrToDt.FrDtTm,false);
  ToDateTime := ISO8601ToDate(_Node.FrToDt.ToDtTm,false);
  AcctIBAN := _Node.Acct.Id.IBAN;
  AcctCurrency := _Node.Acct.Ccy;
  for i := 0 to _Node.Bal.Count-1 do
  begin
    //OPBD Opening Booked balance Book balance of the account at the beginning of the account reporting period. It always equals the closing book balance from the previous report.
    if SameText(_Node.Bal[i].Tp.CdOrPrtry.Cd,'OPBD') then
    begin
      BalanceOpeningBookedAmount := StrToCurrDef(ReplaceText(_Node.Bal[i].Amt.Text,'.',FormatSettings.DecimalSeparator),0);
    end else
    //CLBD ClosingBooked Schlusssaldo
    if SameText(_Node.Bal[i].Tp.CdOrPrtry.Cd,'CLBD') then
    begin
      BalanceClosingBookedAmount := StrToCurrDef(ReplaceText(_Node.Bal[i].Amt.Text,'.',FormatSettings.DecimalSeparator),0);
    end;
    if SameText(_Node.Bal[i].CdtDbtInd,'DBIT') then
      BalanceOpeningBookedAmount := -BalanceOpeningBookedAmount
    else
    if SameText(_Node.Bal[i].CdtDbtInd,'CRDT') then
      BalanceOpeningBookedAmount := Abs(BalanceOpeningBookedAmount);
    //CLAV ClosingAvailable Aktueller Valutensaldo zum angegeben Datum
    //FWAV ForwardAvailable Zukünftiger Valutensaldo zum angegeben Datum
    //ITBD InterimBooked Zwischensaldo im Buchungstag des kontoführenden Instituts
    //PRCD PreviouslyClosedBooked Anfangssaldo
  end;
  for i := 0 to _Node.Ntry.Count-1 do
  begin
    itm := TSEPANtry.Create;
    itm.LoadData(_Node.Ntry[i]);
    Entries.Add(itm);
  end;
end;

{ TSEPANtry }

constructor TSEPANtry.Create;
begin
  Clear;
end;

procedure TSEPANtry.Clear;
begin
  Amount := 0;
  AmountCurrency := '';
  BookingDate := 0;
  ValutaDate := 0;
  NtryDtlsTxDtlsMndtId := '';
  NtryDtlsTxDtlsCdtrName := '';
  NtryDtlsTxDtlsCdtrId := '';
  NtryDtlsTxDtlsCdtrAcctIBAN := '';
  NtryDtlsTxDtlsCdtrAcctBIC := '';
  NtryDtlsTxDtlsRmtInfIstrd := '';
end;

procedure TSEPANtry.LoadData(_Node: IXMLReportEntry2);
begin
  Amount := StrToCurrDef(ReplaceText(_Node.Amt.Text,'.',FormatSettings.DecimalSeparator),0);
  AmountCurrency := _Node.Amt.Ccy;

  if SameText(_Node.CdtDbtInd,'DBIT') then
    Amount := -Amount
  else
  if SameText(_Node.CdtDbtInd,'CRDT') then
    Amount := Abs(Amount);

  BookingDate := ISO8601ToDate(ifthen(_Node.BookgDt.Dt.IsEmpty,_Node.BookgDt.DtTm,_Node.BookgDt.Dt),_Node.ValDt.DtTm.IsEmpty);
  ValutaDate := ISO8601ToDate(ifthen(_Node.ValDt.Dt.IsEmpty,_Node.ValDt.DtTm,_Node.ValDt.Dt),_Node.ValDt.DtTm.IsEmpty);
  if _Node.NtryDtls.Count > 0 then
  if _Node.NtryDtls[0].TxDtls.Count > 0 then
  begin
    NtryDtlsTxDtlsMndtId := _Node.NtryDtls[0].TxDtls[0].Refs.MsgId;
    NtryDtlsTxDtlsCdtrName := _Node.NtryDtls[0].TxDtls[0].RltdPties.Cdtr.Nm;
    NtryDtlsTxDtlsCdtrId := _Node.NtryDtls[0].TxDtls[0].RltdPties.Cdtr.Id.PrvtId.Othr.Id;
    NtryDtlsTxDtlsCdtrAcctIBAN := _Node.NtryDtls[0].TxDtls[0].RltdPties.CdtrAcct.Id.IBAN;
    NtryDtlsTxDtlsCdtrAcctBIC := _Node.NtryDtls[0].TxDtls[0].RltdAgts.CdtrAgt.FinInstnId.BIC;
    NtryDtlsTxDtlsRmtInfIstrd := _Node.NtryDtls[0].TxDtls[0].RmtInf.Ustrd;
  end;
end;

end.
