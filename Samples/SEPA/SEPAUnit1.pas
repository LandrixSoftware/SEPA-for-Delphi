unit SEPAUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.DateUtils, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Graphics,
  Xml.XMLDoc, Xml.XMLIntf, Soap.XSBuiltIns,
  intf.SEPA
  ;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  kntoausz : TSEPABankStatement;
  kntoauszopt : TSEPABankStatement.TSubsemblyBanking4WOptions;
  err : String;
  i : Integer;
begin
  kntoausz := TSEPABankStatement.Create;
  try
    kntoauszopt.WalletFilename := 'Dateiname der Wallet-Datei.sub';
    kntoauszopt.AccessToken := 'Zugriffstoken fuer passwortfreien Abfragemodus';
    kntoauszopt.Unattended := true;
    kntoauszopt.AcctIBAN := 'DE...IBAN des auszulesenden Kontos';
    kntoauszopt.ExportFromDate := StartOfAMonth(YearOf(date),1);
    kntoauszopt.ExportToDate := EndOfAMonth(YearOf(date),1);
    if not kntoausz.LoadFromSubsemblyBanking4W(kntoauszopt,err) then
    begin
      MessageDlg(err, mtError, [mbOK], 0);
      exit;
    end;
    Memo1.Lines.Add('ID '+kntoausz.Rpt[0].ID);
    Memo1.Lines.Add('IBAN '+kntoausz.Rpt[0].AcctIBAN);
    Memo1.Lines.Add('CreationDateTime '+DateTimeToStr(kntoausz.Rpt[0].CreationDateTime));
    Memo1.Lines.Add('FromDateTime '+DateTimeToStr(kntoausz.Rpt[0].FromDateTime));
    Memo1.Lines.Add('ToDateTime '+DateTimeToStr(kntoausz.Rpt[0].ToDateTime));
    Memo1.Lines.Add('BalanceOpening '+Format('%n',[kntoausz.Rpt[0].BalanceOpeningBookedAmount]));
    for i := 0 to kntoausz.Rpt[0].Entries.Count-1 do
    begin
      Memo1.Lines.Add(Format('%n %s %s %s %s',[kntoausz.Rpt[0].Entries[i].Amount,
                                   DateTimeToStr(kntoausz.Rpt[0].Entries[i].BookingDate),
                                   DateTimeToStr(kntoausz.Rpt[0].Entries[i].ValutaDate),
                                   kntoausz.Rpt[0].Entries[i].NtryDtlsTxDtlsCdtrName,
                                   kntoausz.Rpt[0].Entries[i].NtryDtlsTxDtlsRmtInfIstrd]));

    end;

    Memo1.Lines.Add('BalanceClosing '+Format('%n',[kntoausz.Rpt[0].BalanceClosingBookedAmount]));
  finally
    kntoausz.Free;
  end;
end;

end.
