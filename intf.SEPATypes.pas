unit intf.SEPATypes;

//v3.1

interface

{$DEFINE USE_OXMLDomVendor} //http://www.kluug.net/oxml.php

uses
  System.SysUtils,System.Classes,System.Variants,
  System.Generics.Collections,
  Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf
  {$IFDEF USE_OXMLDomVendor},OXmlDOMVendor{$ENDIF}
  ;

type

//************************ pain.001.001.03_GBIC_2.xsd **************************

{ Forward-Deklarationen }

  IXMLDocument00100103 = interface;
  IXMLCustomerCreditTransferInitiationV03 = interface;
  IXMLGroupHeaderSCT = interface;
  IXMLPartyIdentificationSEPA1 = interface;
  IXMLPartySEPAChoice = interface;
  IXMLOrganisationIdentificationSEPAChoice = interface;
  IXMLGenericOrganisationIdentification1 = interface;
  IXMLOrganisationIdentificationSchemeName1Choice = interface;
  IXMLPersonIdentificationSEPA1Choice = interface;
  IXMLDateAndPlaceOfBirth = interface;
  IXMLGenericPersonIdentification1 = interface;
  IXMLPersonIdentificationSchemeName1Choice = interface;
  IXMLPaymentInstructionInformationSCT = interface;
  IXMLPaymentInstructionInformationSCTList = interface;
  IXMLPaymentTypeInformationSCT1 = interface;
  IXMLServiceLevel = interface;
  IXMLCategoryPurposeSEPA = interface;
  IXMLPartyIdentificationSEPA2 = interface;
  IXMLPostalAddressSEPA = interface;
  IXMLCashAccountSEPA1 = interface;
  IXMLAccountIdentificationSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA3 = interface;
  IXMLFinancialInstitutionIdentificationSEPA3 = interface;
  IXMLOthrIdentification = interface;
  IXMLCreditTransferTransactionInformationSCT = interface;
  IXMLCreditTransferTransactionInformationSCTList = interface;
  IXMLPaymentIdentificationSEPA = interface;
  IXMLPaymentTypeInformationSCT2 = interface;
  IXMLAmountTypeSEPA = interface;
  IXMLActiveOrHistoricCurrencyAndAmountSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA1 = interface;
  IXMLFinancialInstitutionIdentificationSEPA1 = interface;
  IXMLCashAccountSEPA2 = interface;
  IXMLPurposeSEPA = interface;
  IXMLRemittanceInformationSEPA1Choice = interface;
  IXMLStructuredRemittanceInformationSEPA1 = interface;
  IXMLCreditorReferenceInformationSEPA1 = interface;
  IXMLCreditorReferenceTypeSEPA = interface;
  IXMLCreditorReferenceTypeCodeSEPA = interface;
  IXMLMax70TextList = interface;

{ IXMLDocument00100103 }

  IXMLDocument00100103 = interface(IXMLNode)
    ['{72867741-9AB6-4E59-AC24-A28014BE8888}']
    { Eigenschaftszugriff }
    function Get_CstmrCdtTrfInitn: IXMLCustomerCreditTransferInitiationV03;
    { Methoden & Eigenschaften }
    property CstmrCdtTrfInitn: IXMLCustomerCreditTransferInitiationV03 read Get_CstmrCdtTrfInitn;
  end;

{ IXMLCustomerCreditTransferInitiationV03 }

  IXMLCustomerCreditTransferInitiationV03 = interface(IXMLNode)
    ['{A610B82B-F1D5-47C1-96EC-28128B070CAD}']
    { Eigenschaftszugriff }
    function Get_GrpHdr: IXMLGroupHeaderSCT;
    function Get_PmtInf: IXMLPaymentInstructionInformationSCTList;
    { Methoden & Eigenschaften }
    property GrpHdr: IXMLGroupHeaderSCT read Get_GrpHdr;
    property PmtInf: IXMLPaymentInstructionInformationSCTList read Get_PmtInf;
  end;

{ IXMLGroupHeaderSCT }

  IXMLGroupHeaderSCT = interface(IXMLNode)
    ['{85CD4E05-5FE2-40CB-BD9E-5A608FE2FE8B}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_InitgPty: IXMLPartyIdentificationSEPA1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property CreDtTm: UnicodeString read Get_CreDtTm write Set_CreDtTm;
    property NbOfTxs: UnicodeString read Get_NbOfTxs write Set_NbOfTxs;
    property CtrlSum: UnicodeString read Get_CtrlSum write Set_CtrlSum;
    property InitgPty: IXMLPartyIdentificationSEPA1 read Get_InitgPty;
  end;

{ IXMLPartyIdentificationSEPA1 }

  IXMLPartyIdentificationSEPA1 = interface(IXMLNode)
    ['{FE8C84C1-A38A-4CCF-B8C4-1E5341AAE977}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLPartySEPAChoice;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Id: IXMLPartySEPAChoice read Get_Id;
  end;

{ IXMLPartySEPAChoice }

  IXMLPartySEPAChoice = interface(IXMLNode)
    ['{A5B9C4AC-B662-4D11-B62C-3A4648FCC20D}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
    function Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentificationSEPAChoice read Get_OrgId;
    property PrvtId: IXMLPersonIdentificationSEPA1Choice read Get_PrvtId;
  end;

{ IXMLOrganisationIdentificationSEPAChoice }

  IXMLOrganisationIdentificationSEPAChoice = interface(IXMLNode)
    ['{795034B3-892F-4B6F-9E02-86A3602BF6B1}']
    { Eigenschaftszugriff }
    function Get_BICOrBEI: UnicodeString;
    function Get_Othr: IXMLGenericOrganisationIdentification1;
    procedure Set_BICOrBEI(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BICOrBEI: UnicodeString read Get_BICOrBEI write Set_BICOrBEI;
    property Othr: IXMLGenericOrganisationIdentification1 read Get_Othr;
  end;

{ IXMLGenericOrganisationIdentification1 }

  IXMLGenericOrganisationIdentification1 = interface(IXMLNode)
    ['{219E5136-3B87-477D-B778-12F304B9AAC9}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
    function Get_Issr: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice read Get_SchmeNm;
    property Issr: UnicodeString read Get_Issr write Set_Issr;
  end;

{ IXMLOrganisationIdentificationSchemeName1Choice }

  IXMLOrganisationIdentificationSchemeName1Choice = interface(IXMLNode)
    ['{DBA7306A-529F-4D76-AABB-4D4302C8D676}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLPersonIdentificationSEPA1Choice }

  IXMLPersonIdentificationSEPA1Choice = interface(IXMLNode)
    ['{08179537-31F4-484F-AA7A-BBE72D7BE8B6}']
    { Eigenschaftszugriff }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
    { Methoden & Eigenschaften }
    property DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth read Get_DtAndPlcOfBirth;
    property Othr: IXMLGenericPersonIdentification1 read Get_Othr;
  end;

{ IXMLDateAndPlaceOfBirth }

  IXMLDateAndPlaceOfBirth = interface(IXMLNode)
    ['{D7F50576-5334-41CE-BE06-A9C2C42AD95E}']
    { Eigenschaftszugriff }
    function Get_BirthDt: UnicodeString;
    function Get_PrvcOfBirth: UnicodeString;
    function Get_CityOfBirth: UnicodeString;
    function Get_CtryOfBirth: UnicodeString;
    procedure Set_BirthDt(Value: UnicodeString);
    procedure Set_PrvcOfBirth(Value: UnicodeString);
    procedure Set_CityOfBirth(Value: UnicodeString);
    procedure Set_CtryOfBirth(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BirthDt: UnicodeString read Get_BirthDt write Set_BirthDt;
    property PrvcOfBirth: UnicodeString read Get_PrvcOfBirth write Set_PrvcOfBirth;
    property CityOfBirth: UnicodeString read Get_CityOfBirth write Set_CityOfBirth;
    property CtryOfBirth: UnicodeString read Get_CtryOfBirth write Set_CtryOfBirth;
  end;

{ IXMLGenericPersonIdentification1 }

  IXMLGenericPersonIdentification1 = interface(IXMLNode)
    ['{376FB666-49D1-4578-BEE6-07FDF2775A36}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
    function Get_Issr: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SchmeNm: IXMLPersonIdentificationSchemeName1Choice read Get_SchmeNm;
    property Issr: UnicodeString read Get_Issr write Set_Issr;
  end;

{ IXMLPersonIdentificationSchemeName1Choice }

  IXMLPersonIdentificationSchemeName1Choice = interface(IXMLNode)
    ['{F770A154-571A-4210-80DC-EDDE773C56DD}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLPaymentInstructionInformationSCT }

  IXMLPaymentInstructionInformationSCT = interface(IXMLNode)
    ['{5DA68225-035F-4401-93AC-FD447CB8486B}']
    { Eigenschaftszugriff }
    function Get_PmtInfId: UnicodeString;
    function Get_PmtMtd: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSCT1;
    function Get_ReqdExctnDt: UnicodeString;
    function Get_Dbtr: IXMLPartyIdentificationSEPA2;
    function Get_DbtrAcct: IXMLCashAccountSEPA1;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_ChrgBr: UnicodeString;
    function Get_CdtTrfTxInf: IXMLCreditTransferTransactionInformationSCTList;
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_PmtMtd(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_ReqdExctnDt(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property PmtInfId: UnicodeString read Get_PmtInfId write Set_PmtInfId;
    property PmtMtd: UnicodeString read Get_PmtMtd write Set_PmtMtd;
    property BtchBookg: Boolean read Get_BtchBookg write Set_BtchBookg;
    property NbOfTxs: UnicodeString read Get_NbOfTxs write Set_NbOfTxs;
    property CtrlSum: UnicodeString read Get_CtrlSum write Set_CtrlSum;
    property PmtTpInf: IXMLPaymentTypeInformationSCT1 read Get_PmtTpInf;
    property ReqdExctnDt: UnicodeString read Get_ReqdExctnDt write Set_ReqdExctnDt;
    property Dbtr: IXMLPartyIdentificationSEPA2 read Get_Dbtr;
    property DbtrAcct: IXMLCashAccountSEPA1 read Get_DbtrAcct;
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3 read Get_DbtrAgt;
    property UltmtDbtr: IXMLPartyIdentificationSEPA1 read Get_UltmtDbtr;
    property ChrgBr: UnicodeString read Get_ChrgBr write Set_ChrgBr;
    property CdtTrfTxInf: IXMLCreditTransferTransactionInformationSCTList read Get_CdtTrfTxInf;
  end;

{ IXMLPaymentInstructionInformationSCTList }

  IXMLPaymentInstructionInformationSCTList = interface(IXMLNodeCollection)
    ['{EC50685D-EA00-4183-A64D-0C0ACE7C2C11}']
    { Methoden & Eigenschaften }
    function Add: IXMLPaymentInstructionInformationSCT;
    function Insert(const Index: Integer): IXMLPaymentInstructionInformationSCT;

    function Get_Item(Index: Integer): IXMLPaymentInstructionInformationSCT;
    property Items[Index: Integer]: IXMLPaymentInstructionInformationSCT read Get_Item; default;
  end;

{ IXMLPaymentTypeInformationSCT1 }

  IXMLPaymentTypeInformationSCT1 = interface(IXMLNode)
    ['{E7132AB2-7078-4194-961A-6DB5DBA94D50}']
    { Eigenschaftszugriff }
    function Get_InstrPrty: UnicodeString;
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    procedure Set_InstrPrty(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property InstrPrty: UnicodeString read Get_InstrPrty write Set_InstrPrty;
    property SvcLvl: IXMLServiceLevel read Get_SvcLvl;
    property CtgyPurp: IXMLCategoryPurposeSEPA read Get_CtgyPurp;
  end;

{ IXMLServiceLevel }

  IXMLServiceLevel = interface(IXMLNode)
    ['{6363B037-E2F2-4B87-A2DA-10A0B35F3CA9}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLCategoryPurposeSEPA }

  IXMLCategoryPurposeSEPA = interface(IXMLNode)
    ['{3F0D18F1-B248-458F-85D6-A6E5C45CBA89}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLPartyIdentificationSEPA2 }

  IXMLPartyIdentificationSEPA2 = interface(IXMLNode)
    ['{3DF946A2-D6AF-4E5C-96B4-C7DF477C4142}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddressSEPA;
    function Get_Id: IXMLPartySEPAChoice;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property PstlAdr: IXMLPostalAddressSEPA read Get_PstlAdr;
    property Id: IXMLPartySEPAChoice read Get_Id;
  end;

{ IXMLPostalAddressSEPA }

  IXMLPostalAddressSEPA = interface(IXMLNode)
    ['{8855D552-7579-480B-86B6-D2247515ABD2}']
    { Eigenschaftszugriff }
    function Get_Ctry: UnicodeString;
    function Get_AdrLine: IXMLMax70TextList;
    procedure Set_Ctry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ctry: UnicodeString read Get_Ctry write Set_Ctry;
    property AdrLine: IXMLMax70TextList read Get_AdrLine;
  end;

{ IXMLCashAccountSEPA1 }

  IXMLCashAccountSEPA1 = interface(IXMLNode)
    ['{A4DE7DD7-CBDA-4B3F-A0C4-34769BE00135}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentificationSEPA;
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentificationSEPA read Get_Id;
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLAccountIdentificationSEPA }

  IXMLAccountIdentificationSEPA = interface(IXMLNode)
    ['{C6309909-2E38-43A9-94DD-7531041F9746}']
    { Eigenschaftszugriff }
    function Get_IBAN: UnicodeString;
    procedure Set_IBAN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
  end;

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA3 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA3 = interface(IXMLNode)
    ['{5C97C166-06BD-4E8B-823D-7F11B837B2C9}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA3 }

  IXMLFinancialInstitutionIdentificationSEPA3 = interface(IXMLNode)
    ['{BE418856-683B-43FA-A9C7-E91562B40B45}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    function Get_Othr: IXMLOthrIdentification;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
    property Othr: IXMLOthrIdentification read Get_Othr;
  end;

{ IXMLOthrIdentification }

  IXMLOthrIdentification = interface(IXMLNode)
    ['{D1268BE9-9105-4DC9-9ED8-C8858FCC06EA}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLCreditTransferTransactionInformationSCT }

  IXMLCreditTransferTransactionInformationSCT = interface(IXMLNode)
    ['{D20D2910-8FFD-47B9-9CFC-FDD04B23CECF}']
    { Eigenschaftszugriff }
    function Get_PmtId: IXMLPaymentIdentificationSEPA;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSCT2;
    function Get_Amt: IXMLAmountTypeSEPA;
    function Get_ChrgBr: UnicodeString;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
    function Get_Cdtr: IXMLPartyIdentificationSEPA2;
    function Get_CdtrAcct: IXMLCashAccountSEPA2;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    function Get_Purp: IXMLPurposeSEPA;
    function Get_RmtInf: IXMLRemittanceInformationSEPA1Choice;
    procedure Set_ChrgBr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property PmtId: IXMLPaymentIdentificationSEPA read Get_PmtId;
    property PmtTpInf: IXMLPaymentTypeInformationSCT2 read Get_PmtTpInf;
    property Amt: IXMLAmountTypeSEPA read Get_Amt;
    property ChrgBr: UnicodeString read Get_ChrgBr write Set_ChrgBr;
    property UltmtDbtr: IXMLPartyIdentificationSEPA1 read Get_UltmtDbtr;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1 read Get_CdtrAgt;
    property Cdtr: IXMLPartyIdentificationSEPA2 read Get_Cdtr;
    property CdtrAcct: IXMLCashAccountSEPA2 read Get_CdtrAcct;
    property UltmtCdtr: IXMLPartyIdentificationSEPA1 read Get_UltmtCdtr;
    property Purp: IXMLPurposeSEPA read Get_Purp;
    property RmtInf: IXMLRemittanceInformationSEPA1Choice read Get_RmtInf;
  end;

{ IXMLCreditTransferTransactionInformationSCTList }

  IXMLCreditTransferTransactionInformationSCTList = interface(IXMLNodeCollection)
    ['{1EEE2145-148D-413D-9DCF-64B68833CA12}']
    { Methoden & Eigenschaften }
    function Add: IXMLCreditTransferTransactionInformationSCT;
    function Insert(const Index: Integer): IXMLCreditTransferTransactionInformationSCT;

    function Get_Item(Index: Integer): IXMLCreditTransferTransactionInformationSCT;
    property Items[Index: Integer]: IXMLCreditTransferTransactionInformationSCT read Get_Item; default;
  end;

{ IXMLPaymentIdentificationSEPA }

  IXMLPaymentIdentificationSEPA = interface(IXMLNode)
    ['{27812804-5404-4248-8FE4-9D373886A3D3}']
    { Eigenschaftszugriff }
    function Get_InstrId: UnicodeString;
    function Get_EndToEndId: UnicodeString;
    procedure Set_InstrId(Value: UnicodeString);
    procedure Set_EndToEndId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property InstrId: UnicodeString read Get_InstrId write Set_InstrId;
    property EndToEndId: UnicodeString read Get_EndToEndId write Set_EndToEndId;
  end;

{ IXMLPaymentTypeInformationSCT2 }

  IXMLPaymentTypeInformationSCT2 = interface(IXMLNode)
    ['{99BCD5D1-E59D-4B49-9758-F8DE7384F7D2}']
    { Eigenschaftszugriff }
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    { Methoden & Eigenschaften }
    property SvcLvl: IXMLServiceLevel read Get_SvcLvl;
    property CtgyPurp: IXMLCategoryPurposeSEPA read Get_CtgyPurp;
  end;

{ IXMLAmountTypeSEPA }

  IXMLAmountTypeSEPA = interface(IXMLNode)
    ['{AB7CA2E4-F4D9-4336-B6BE-C6248E575779}']
    { Eigenschaftszugriff }
    function Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
    { Methoden & Eigenschaften }
    property InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA read Get_InstdAmt;
  end;

{ IXMLActiveOrHistoricCurrencyAndAmountSEPA }

  IXMLActiveOrHistoricCurrencyAndAmountSEPA = interface(IXMLNode)
    ['{CD5CDC5B-1125-4BA3-ADE4-DC2F1F049384}']
    { Eigenschaftszugriff }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA1 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA1 = interface(IXMLNode)
    ['{71DE9E71-84B1-44F1-8E2B-32EA8F7FB2C8}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA1 }

  IXMLFinancialInstitutionIdentificationSEPA1 = interface(IXMLNode)
    ['{BD58C5B0-212F-4242-9B2F-D8FDFCCDAE29}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
  end;

{ IXMLCashAccountSEPA2 }

  IXMLCashAccountSEPA2 = interface(IXMLNode)
    ['{18452E58-0490-4B82-8D92-EC8F3B8DD881}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentificationSEPA;
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentificationSEPA read Get_Id;
  end;

{ IXMLPurposeSEPA }

  IXMLPurposeSEPA = interface(IXMLNode)
    ['{9441181C-79CA-4A62-A73C-ECC93A85849A}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLRemittanceInformationSEPA1Choice }

  IXMLRemittanceInformationSEPA1Choice = interface(IXMLNode)
    ['{58D063C0-2C9A-4343-8F67-E24278E8C136}']
    { Eigenschaftszugriff }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformationSEPA1;
    procedure Set_Ustrd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ustrd: UnicodeString read Get_Ustrd write Set_Ustrd;
    property Strd: IXMLStructuredRemittanceInformationSEPA1 read Get_Strd;
  end;

{ IXMLStructuredRemittanceInformationSEPA1 }

  IXMLStructuredRemittanceInformationSEPA1 = interface(IXMLNode)
    ['{08A9676A-FE54-4488-8C45-896503519A86}']
    { Eigenschaftszugriff }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA1;
    { Methoden & Eigenschaften }
    property CdtrRefInf: IXMLCreditorReferenceInformationSEPA1 read Get_CdtrRefInf;
  end;

{ IXMLCreditorReferenceInformationSEPA1 }

  IXMLCreditorReferenceInformationSEPA1 = interface(IXMLNode)
    ['{A49F7185-B658-42FB-9078-CA24B8E4B176}']
    { Eigenschaftszugriff }
    function Get_Tp: IXMLCreditorReferenceTypeSEPA;
    function Get_Ref: UnicodeString;
    procedure Set_Ref(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: IXMLCreditorReferenceTypeSEPA read Get_Tp;
    property Ref: UnicodeString read Get_Ref write Set_Ref;
  end;

{ IXMLCreditorReferenceTypeSEPA }

  IXMLCreditorReferenceTypeSEPA = interface(IXMLNode)
    ['{8945AE4F-AE24-44FB-8744-3F1E7EE7121B}']
    { Eigenschaftszugriff }
    function Get_CdOrPrtry: IXMLCreditorReferenceTypeCodeSEPA;
    function Get_Issr: UnicodeString;
    procedure Set_Issr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property CdOrPrtry: IXMLCreditorReferenceTypeCodeSEPA read Get_CdOrPrtry;
    property Issr: UnicodeString read Get_Issr write Set_Issr;
  end;

{ IXMLCreditorReferenceTypeCodeSEPA }

  IXMLCreditorReferenceTypeCodeSEPA = interface(IXMLNode)
    ['{303C6302-B2DD-4946-9C37-C1F155220032}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLMax70TextList }

  IXMLMax70TextList = interface(IXMLNodeCollection)
    ['{B1D2CB80-0A5B-44B1-A646-24AE0C705BA6}']
    { Methoden & Eigenschaften }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward-Deklarationen }

  TXMLDocument00100103 = class;
  TXMLCustomerCreditTransferInitiationV03 = class;
  TXMLGroupHeaderSCT = class;
  TXMLPartyIdentificationSEPA1 = class;
  TXMLPartySEPAChoice = class;
  TXMLOrganisationIdentificationSEPAChoice = class;
  TXMLGenericOrganisationIdentification1 = class;
  TXMLOrganisationIdentificationSchemeName1Choice = class;
  TXMLPersonIdentificationSEPA1Choice = class;
  TXMLDateAndPlaceOfBirth = class;
  TXMLGenericPersonIdentification1 = class;
  TXMLPersonIdentificationSchemeName1Choice = class;
  TXMLPaymentInstructionInformationSCT = class;
  TXMLPaymentInstructionInformationSCTList = class;
  TXMLPaymentTypeInformationSCT1 = class;
  TXMLServiceLevel = class;
  TXMLCategoryPurposeSEPA = class;
  TXMLPartyIdentificationSEPA2 = class;
  TXMLPostalAddressSEPA = class;
  TXMLCashAccountSEPA1 = class;
  TXMLAccountIdentificationSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA3 = class;
  TXMLFinancialInstitutionIdentificationSEPA3 = class;
  TXMLOthrIdentification = class;
  TXMLCreditTransferTransactionInformationSCT = class;
  TXMLCreditTransferTransactionInformationSCTList = class;
  TXMLPaymentIdentificationSEPA = class;
  TXMLPaymentTypeInformationSCT2 = class;
  TXMLAmountTypeSEPA = class;
  TXMLActiveOrHistoricCurrencyAndAmountSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA1 = class;
  TXMLFinancialInstitutionIdentificationSEPA1 = class;
  TXMLCashAccountSEPA2 = class;
  TXMLPurposeSEPA = class;
  TXMLRemittanceInformationSEPA1Choice = class;
  TXMLStructuredRemittanceInformationSEPA1 = class;
  TXMLCreditorReferenceInformationSEPA1 = class;
  TXMLCreditorReferenceTypeSEPA = class;
  TXMLCreditorReferenceTypeCodeSEPA = class;
  TXMLMax70TextList = class;

{ TXMLDocument00100103 }

  TXMLDocument00100103 = class(TXMLNode, IXMLDocument00100103)
  protected
    { IXMLDocument00100103 }
    function Get_CstmrCdtTrfInitn: IXMLCustomerCreditTransferInitiationV03;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomerCreditTransferInitiationV03 }

  TXMLCustomerCreditTransferInitiationV03 = class(TXMLNode, IXMLCustomerCreditTransferInitiationV03)
  private
    FPmtInf: IXMLPaymentInstructionInformationSCTList;
  protected
    { IXMLCustomerCreditTransferInitiationV03 }
    function Get_GrpHdr: IXMLGroupHeaderSCT;
    function Get_PmtInf: IXMLPaymentInstructionInformationSCTList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGroupHeaderSCT }

  TXMLGroupHeaderSCT = class(TXMLNode, IXMLGroupHeaderSCT)
  protected
    { IXMLGroupHeaderSCT }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_InitgPty: IXMLPartyIdentificationSEPA1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentificationSEPA1 }

  TXMLPartyIdentificationSEPA1 = class(TXMLNode, IXMLPartyIdentificationSEPA1)
  protected
    { IXMLPartyIdentificationSEPA1 }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLPartySEPAChoice;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartySEPAChoice }

  TXMLPartySEPAChoice = class(TXMLNode, IXMLPartySEPAChoice)
  protected
    { IXMLPartySEPAChoice }
    function Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
    function Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrganisationIdentificationSEPAChoice }

  TXMLOrganisationIdentificationSEPAChoice = class(TXMLNode, IXMLOrganisationIdentificationSEPAChoice)
  protected
    { IXMLOrganisationIdentificationSEPAChoice }
    function Get_BICOrBEI: UnicodeString;
    function Get_Othr: IXMLGenericOrganisationIdentification1;
    procedure Set_BICOrBEI(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenericOrganisationIdentification1 }

  TXMLGenericOrganisationIdentification1 = class(TXMLNode, IXMLGenericOrganisationIdentification1)
  protected
    { IXMLGenericOrganisationIdentification1 }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
    function Get_Issr: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrganisationIdentificationSchemeName1Choice }

  TXMLOrganisationIdentificationSchemeName1Choice = class(TXMLNode, IXMLOrganisationIdentificationSchemeName1Choice)
  protected
    { IXMLOrganisationIdentificationSchemeName1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLPersonIdentificationSEPA1Choice }

  TXMLPersonIdentificationSEPA1Choice = class(TXMLNode, IXMLPersonIdentificationSEPA1Choice)
  protected
    { IXMLPersonIdentificationSEPA1Choice }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDateAndPlaceOfBirth }

  TXMLDateAndPlaceOfBirth = class(TXMLNode, IXMLDateAndPlaceOfBirth)
  protected
    { IXMLDateAndPlaceOfBirth }
    function Get_BirthDt: UnicodeString;
    function Get_PrvcOfBirth: UnicodeString;
    function Get_CityOfBirth: UnicodeString;
    function Get_CtryOfBirth: UnicodeString;
    procedure Set_BirthDt(Value: UnicodeString);
    procedure Set_PrvcOfBirth(Value: UnicodeString);
    procedure Set_CityOfBirth(Value: UnicodeString);
    procedure Set_CtryOfBirth(Value: UnicodeString);
  end;

{ TXMLGenericPersonIdentification1 }

  TXMLGenericPersonIdentification1 = class(TXMLNode, IXMLGenericPersonIdentification1)
  protected
    { IXMLGenericPersonIdentification1 }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
    function Get_Issr: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonIdentificationSchemeName1Choice }

  TXMLPersonIdentificationSchemeName1Choice = class(TXMLNode, IXMLPersonIdentificationSchemeName1Choice)
  protected
    { IXMLPersonIdentificationSchemeName1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLPaymentInstructionInformationSCT }

  TXMLPaymentInstructionInformationSCT = class(TXMLNode, IXMLPaymentInstructionInformationSCT)
  private
    FCdtTrfTxInf: IXMLCreditTransferTransactionInformationSCTList;
  protected
    { IXMLPaymentInstructionInformationSCT }
    function Get_PmtInfId: UnicodeString;
    function Get_PmtMtd: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSCT1;
    function Get_ReqdExctnDt: UnicodeString;
    function Get_Dbtr: IXMLPartyIdentificationSEPA2;
    function Get_DbtrAcct: IXMLCashAccountSEPA1;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_ChrgBr: UnicodeString;
    function Get_CdtTrfTxInf: IXMLCreditTransferTransactionInformationSCTList;
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_PmtMtd(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_ReqdExctnDt(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentInstructionInformationSCTList }

  TXMLPaymentInstructionInformationSCTList = class(TXMLNodeCollection, IXMLPaymentInstructionInformationSCTList)
  protected
    { IXMLPaymentInstructionInformationSCTList }
    function Add: IXMLPaymentInstructionInformationSCT;
    function Insert(const Index: Integer): IXMLPaymentInstructionInformationSCT;

    function Get_Item(Index: Integer): IXMLPaymentInstructionInformationSCT;
  end;

{ TXMLPaymentTypeInformationSCT1 }

  TXMLPaymentTypeInformationSCT1 = class(TXMLNode, IXMLPaymentTypeInformationSCT1)
  protected
    { IXMLPaymentTypeInformationSCT1 }
    function Get_InstrPrty: UnicodeString;
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    procedure Set_InstrPrty(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLServiceLevel }

  TXMLServiceLevel = class(TXMLNode, IXMLServiceLevel)
  protected
    { IXMLServiceLevel }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLCategoryPurposeSEPA }

  TXMLCategoryPurposeSEPA = class(TXMLNode, IXMLCategoryPurposeSEPA)
  protected
    { IXMLCategoryPurposeSEPA }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLPartyIdentificationSEPA2 }

  TXMLPartyIdentificationSEPA2 = class(TXMLNode, IXMLPartyIdentificationSEPA2)
  protected
    { IXMLPartyIdentificationSEPA2 }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddressSEPA;
    function Get_Id: IXMLPartySEPAChoice;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPostalAddressSEPA }

  TXMLPostalAddressSEPA = class(TXMLNode, IXMLPostalAddressSEPA)
  private
    FAdrLine: IXMLMax70TextList;
  protected
    { IXMLPostalAddressSEPA }
    function Get_Ctry: UnicodeString;
    function Get_AdrLine: IXMLMax70TextList;
    procedure Set_Ctry(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccountSEPA1 }

  TXMLCashAccountSEPA1 = class(TXMLNode, IXMLCashAccountSEPA1)
  protected
    { IXMLCashAccountSEPA1 }
    function Get_Id: IXMLAccountIdentificationSEPA;
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountIdentificationSEPA }

  TXMLAccountIdentificationSEPA = class(TXMLNode, IXMLAccountIdentificationSEPA)
  protected
    { IXMLAccountIdentificationSEPA }
    function Get_IBAN: UnicodeString;
    procedure Set_IBAN(Value: UnicodeString);
  end;

{ TXMLBranchAndFinancialInstitutionIdentificationSEPA3 }

  TXMLBranchAndFinancialInstitutionIdentificationSEPA3 = class(TXMLNode, IXMLBranchAndFinancialInstitutionIdentificationSEPA3)
  protected
    { IXMLBranchAndFinancialInstitutionIdentificationSEPA3 }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFinancialInstitutionIdentificationSEPA3 }

  TXMLFinancialInstitutionIdentificationSEPA3 = class(TXMLNode, IXMLFinancialInstitutionIdentificationSEPA3)
  protected
    { IXMLFinancialInstitutionIdentificationSEPA3 }
    function Get_BIC: UnicodeString;
    function Get_Othr: IXMLOthrIdentification;
    procedure Set_BIC(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOthrIdentification }

  TXMLOthrIdentification = class(TXMLNode, IXMLOthrIdentification)
  protected
    { IXMLOthrIdentification }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLCreditTransferTransactionInformationSCT }

  TXMLCreditTransferTransactionInformationSCT = class(TXMLNode, IXMLCreditTransferTransactionInformationSCT)
  protected
    { IXMLCreditTransferTransactionInformationSCT }
    function Get_PmtId: IXMLPaymentIdentificationSEPA;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSCT2;
    function Get_Amt: IXMLAmountTypeSEPA;
    function Get_ChrgBr: UnicodeString;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
    function Get_Cdtr: IXMLPartyIdentificationSEPA2;
    function Get_CdtrAcct: IXMLCashAccountSEPA2;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    function Get_Purp: IXMLPurposeSEPA;
    function Get_RmtInf: IXMLRemittanceInformationSEPA1Choice;
    procedure Set_ChrgBr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditTransferTransactionInformationSCTList }

  TXMLCreditTransferTransactionInformationSCTList = class(TXMLNodeCollection, IXMLCreditTransferTransactionInformationSCTList)
  protected
    { IXMLCreditTransferTransactionInformationSCTList }
    function Add: IXMLCreditTransferTransactionInformationSCT;
    function Insert(const Index: Integer): IXMLCreditTransferTransactionInformationSCT;

    function Get_Item(Index: Integer): IXMLCreditTransferTransactionInformationSCT;
  end;

{ TXMLPaymentIdentificationSEPA }

  TXMLPaymentIdentificationSEPA = class(TXMLNode, IXMLPaymentIdentificationSEPA)
  protected
    { IXMLPaymentIdentificationSEPA }
    function Get_InstrId: UnicodeString;
    function Get_EndToEndId: UnicodeString;
    procedure Set_InstrId(Value: UnicodeString);
    procedure Set_EndToEndId(Value: UnicodeString);
  end;

{ TXMLPaymentTypeInformationSCT2 }

  TXMLPaymentTypeInformationSCT2 = class(TXMLNode, IXMLPaymentTypeInformationSCT2)
  protected
    { IXMLPaymentTypeInformationSCT2 }
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmountTypeSEPA }

  TXMLAmountTypeSEPA = class(TXMLNode, IXMLAmountTypeSEPA)
  protected
    { IXMLAmountTypeSEPA }
    function Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLActiveOrHistoricCurrencyAndAmountSEPA }

  TXMLActiveOrHistoricCurrencyAndAmountSEPA = class(TXMLNode, IXMLActiveOrHistoricCurrencyAndAmountSEPA)
  protected
    { IXMLActiveOrHistoricCurrencyAndAmountSEPA }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
  end;

{ TXMLBranchAndFinancialInstitutionIdentificationSEPA1 }

  TXMLBranchAndFinancialInstitutionIdentificationSEPA1 = class(TXMLNode, IXMLBranchAndFinancialInstitutionIdentificationSEPA1)
  protected
    { IXMLBranchAndFinancialInstitutionIdentificationSEPA1 }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFinancialInstitutionIdentificationSEPA1 }

  TXMLFinancialInstitutionIdentificationSEPA1 = class(TXMLNode, IXMLFinancialInstitutionIdentificationSEPA1)
  protected
    { IXMLFinancialInstitutionIdentificationSEPA1 }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
  end;

{ TXMLCashAccountSEPA2 }

  TXMLCashAccountSEPA2 = class(TXMLNode, IXMLCashAccountSEPA2)
  protected
    { IXMLCashAccountSEPA2 }
    function Get_Id: IXMLAccountIdentificationSEPA;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPurposeSEPA }

  TXMLPurposeSEPA = class(TXMLNode, IXMLPurposeSEPA)
  protected
    { IXMLPurposeSEPA }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLRemittanceInformationSEPA1Choice }

  TXMLRemittanceInformationSEPA1Choice = class(TXMLNode, IXMLRemittanceInformationSEPA1Choice)
  protected
    { IXMLRemittanceInformationSEPA1Choice }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformationSEPA1;
    procedure Set_Ustrd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStructuredRemittanceInformationSEPA1 }

  TXMLStructuredRemittanceInformationSEPA1 = class(TXMLNode, IXMLStructuredRemittanceInformationSEPA1)
  protected
    { IXMLStructuredRemittanceInformationSEPA1 }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceInformationSEPA1 }

  TXMLCreditorReferenceInformationSEPA1 = class(TXMLNode, IXMLCreditorReferenceInformationSEPA1)
  protected
    { IXMLCreditorReferenceInformationSEPA1 }
    function Get_Tp: IXMLCreditorReferenceTypeSEPA;
    function Get_Ref: UnicodeString;
    procedure Set_Ref(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceTypeSEPA }

  TXMLCreditorReferenceTypeSEPA = class(TXMLNode, IXMLCreditorReferenceTypeSEPA)
  protected
    { IXMLCreditorReferenceTypeSEPA }
    function Get_CdOrPrtry: IXMLCreditorReferenceTypeCodeSEPA;
    function Get_Issr: UnicodeString;
    procedure Set_Issr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceTypeCodeSEPA }

  TXMLCreditorReferenceTypeCodeSEPA = class(TXMLNode, IXMLCreditorReferenceTypeCodeSEPA)
  protected
    { IXMLCreditorReferenceTypeCodeSEPA }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLMax70TextList }

  TXMLMax70TextList = class(TXMLNodeCollection, IXMLMax70TextList)
  protected
    { IXMLMax70TextList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

//************************ pain.002.001.03_GBIC_2.xsd **************************

//{ Forward-Deklarationen }

  IXMLDocument00200103 = interface;
  IXMLCustomerPaymentStatusReportV03 = interface;
  IXMLGroupHeaderSEPA = interface;
  IXMLOriginalGroupInformationSEPA = interface;
  IXMLStatusReasonInformationSEPA = interface;
  IXMLStatusReasonInformationSEPAList = interface;
  IXMLPartyIdentificationSEPA6Choice = interface;
  IXMLPartySEPA1 = interface;
  IXMLOrganisationIdentificationSEPA = interface;
  IXMLStatusReasonSEPA = interface;
  IXMLNumberOfTransactionsPerStatus3 = interface;
  IXMLNumberOfTransactionsPerStatus3List = interface;
  IXMLOriginalPaymentInformationSEPA = interface;
  IXMLOriginalPaymentInformationSEPAList = interface;
  IXMLPaymentTransactionInformationSEPA = interface;
  IXMLPaymentTransactionInformationSEPAList = interface;
  IXMLOriginalTransactionReferenceSEPA = interface;
  IXMLPartyIdentificationSEPA3 = interface;
  IXMLPartySEPA2 = interface;
  IXMLPersonIdentificationSEPA2 = interface;
  IXMLRestrictedPersonIdentificationSEPA = interface;
  IXMLRestrictedPersonIdentificationSchemeNameSEPA = interface;
  IXMLPaymentTypeInformationSEPA = interface;
  IXMLLocalInstrumentSEPA = interface;
  IXMLMandateRelatedInformationSEPA = interface;
  IXMLAmendmentInformationDetailsSEPA = interface;
  IXMLPartyIdentificationSEPA4 = interface;
  IXMLCashAccountSEPAMandate = interface;
  IXMLAccountIdentificationSEPAMandate = interface;
  IXMLGenericAccountIdentificationSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA2 = interface;
  IXMLFinancialInstitutionIdentificationSEPA2 = interface;
  IXMLRemittanceInformationSEPA2Choice = interface;
  IXMLStructuredRemittanceInformationSEPA2 = interface;
  IXMLCreditorReferenceInformationSEPA = interface;
  IXMLMax105TextList = interface;

{ IXMLDocument00200103 }

  IXMLDocument00200103 = interface(IXMLNode)
    ['{F0F67D68-0292-45B9-8A6C-3143A3E90C28}']
    { Eigenschaftszugriff }
    function Get_CstmrPmtStsRpt: IXMLCustomerPaymentStatusReportV03;
    { Methoden & Eigenschaften }
    property CstmrPmtStsRpt: IXMLCustomerPaymentStatusReportV03 read Get_CstmrPmtStsRpt;
  end;

{ IXMLCustomerPaymentStatusReportV03 }

  IXMLCustomerPaymentStatusReportV03 = interface(IXMLNode)
    ['{2151707D-D9C0-4D84-B044-5D71AA68DAC9}']
    { Eigenschaftszugriff }
    function Get_GrpHdr: IXMLGroupHeaderSEPA;
    function Get_OrgnlGrpInfAndSts: IXMLOriginalGroupInformationSEPA;
    function Get_OrgnlPmtInfAndSts: IXMLOriginalPaymentInformationSEPAList;
    { Methoden & Eigenschaften }
    property GrpHdr: IXMLGroupHeaderSEPA read Get_GrpHdr;
    property OrgnlGrpInfAndSts: IXMLOriginalGroupInformationSEPA read Get_OrgnlGrpInfAndSts;
    property OrgnlPmtInfAndSts: IXMLOriginalPaymentInformationSEPAList read Get_OrgnlPmtInfAndSts;
  end;

{ IXMLGroupHeaderSEPA }

  IXMLGroupHeaderSEPA = interface(IXMLNode)
    ['{4FC433DC-657C-440C-852F-ECFA3990E1A5}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property CreDtTm: UnicodeString read Get_CreDtTm write Set_CreDtTm;
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1 read Get_DbtrAgt;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1 read Get_CdtrAgt;
  end;

{ IXMLOriginalGroupInformationSEPA }

  IXMLOriginalGroupInformationSEPA = interface(IXMLNode)
    ['{529B7BD5-20A7-4490-BC33-F51D1AD8FE8F}']
    { Eigenschaftszugriff }
    function Get_OrgnlMsgId: UnicodeString;
    function Get_OrgnlMsgNmId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_GrpSts: UnicodeString;
    function Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
    function Get_NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
    procedure Set_OrgnlMsgId(Value: UnicodeString);
    procedure Set_OrgnlMsgNmId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_GrpSts(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMsgId: UnicodeString read Get_OrgnlMsgId write Set_OrgnlMsgId;
    property OrgnlMsgNmId: UnicodeString read Get_OrgnlMsgNmId write Set_OrgnlMsgNmId;
    property OrgnlNbOfTxs: UnicodeString read Get_OrgnlNbOfTxs write Set_OrgnlNbOfTxs;
    property OrgnlCtrlSum: UnicodeString read Get_OrgnlCtrlSum write Set_OrgnlCtrlSum;
    property GrpSts: UnicodeString read Get_GrpSts write Set_GrpSts;
    property StsRsnInf: IXMLStatusReasonInformationSEPAList read Get_StsRsnInf;
    property NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List read Get_NbOfTxsPerSts;
  end;

{ IXMLStatusReasonInformationSEPA }

  IXMLStatusReasonInformationSEPA = interface(IXMLNode)
    ['{192076B8-7F58-43F6-ADB3-E9DD3CF06008}']
    { Eigenschaftszugriff }
    function Get_Orgtr: IXMLPartyIdentificationSEPA6Choice;
    function Get_Rsn: IXMLStatusReasonSEPA;
    function Get_AddtlInf: IXMLMax105TextList;
    { Methoden & Eigenschaften }
    property Orgtr: IXMLPartyIdentificationSEPA6Choice read Get_Orgtr;
    property Rsn: IXMLStatusReasonSEPA read Get_Rsn;
    property AddtlInf: IXMLMax105TextList read Get_AddtlInf;
  end;

{ IXMLStatusReasonInformationSEPAList }

  IXMLStatusReasonInformationSEPAList = interface(IXMLNodeCollection)
    ['{7E5A430B-3F6D-4892-8869-6A301D884845}']
    { Methoden & Eigenschaften }
    function Add: IXMLStatusReasonInformationSEPA;
    function Insert(const Index: Integer): IXMLStatusReasonInformationSEPA;

    function Get_Item(Index: Integer): IXMLStatusReasonInformationSEPA;
    property Items[Index: Integer]: IXMLStatusReasonInformationSEPA read Get_Item; default;
  end;

{ IXMLPartyIdentificationSEPA6Choice }

  IXMLPartyIdentificationSEPA6Choice = interface(IXMLNode)
    ['{B94D3BF2-0CC0-4DCD-8C80-FBD7D2F1F473}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLPartySEPA1;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Id: IXMLPartySEPA1 read Get_Id;
  end;

{ IXMLPartySEPA1 }

  IXMLPartySEPA1 = interface(IXMLNode)
    ['{5BF043B5-52BC-48D3-9675-93CA74E9BAAF}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentificationSEPA;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentificationSEPA read Get_OrgId;
  end;

{ IXMLOrganisationIdentificationSEPA }

  IXMLOrganisationIdentificationSEPA = interface(IXMLNode)
    ['{21275694-AC77-4628-9CDB-2D99A233AF49}']
    { Eigenschaftszugriff }
    function Get_BICOrBEI: UnicodeString;
    procedure Set_BICOrBEI(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BICOrBEI: UnicodeString read Get_BICOrBEI write Set_BICOrBEI;
  end;

{ IXMLStatusReasonSEPA }

  IXMLStatusReasonSEPA = interface(IXMLNode)
    ['{72104955-1A7A-45BB-9C3F-1186E835CE28}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLNumberOfTransactionsPerStatus3 }

  IXMLNumberOfTransactionsPerStatus3 = interface(IXMLNode)
    ['{0BCDA4F5-10A6-42AF-AD45-00A09BB5D8BB}']
    { Eigenschaftszugriff }
    function Get_DtldNbOfTxs: UnicodeString;
    function Get_DtldSts: UnicodeString;
    function Get_DtldCtrlSum: UnicodeString;
    procedure Set_DtldNbOfTxs(Value: UnicodeString);
    procedure Set_DtldSts(Value: UnicodeString);
    procedure Set_DtldCtrlSum(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property DtldNbOfTxs: UnicodeString read Get_DtldNbOfTxs write Set_DtldNbOfTxs;
    property DtldSts: UnicodeString read Get_DtldSts write Set_DtldSts;
    property DtldCtrlSum: UnicodeString read Get_DtldCtrlSum write Set_DtldCtrlSum;
  end;

{ IXMLNumberOfTransactionsPerStatus3List }

  IXMLNumberOfTransactionsPerStatus3List = interface(IXMLNodeCollection)
    ['{BA33468A-6278-468C-B5D1-7973816C16E3}']
    { Methoden & Eigenschaften }
    function Add: IXMLNumberOfTransactionsPerStatus3;
    function Insert(const Index: Integer): IXMLNumberOfTransactionsPerStatus3;

    function Get_Item(Index: Integer): IXMLNumberOfTransactionsPerStatus3;
    property Items[Index: Integer]: IXMLNumberOfTransactionsPerStatus3 read Get_Item; default;
  end;

{ IXMLOriginalPaymentInformationSEPA }

  IXMLOriginalPaymentInformationSEPA = interface(IXMLNode)
    ['{75ED90C6-4C11-4114-A0FA-912F5BC3523C}']
    { Eigenschaftszugriff }
    function Get_OrgnlPmtInfId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_PmtInfSts: UnicodeString;
    function Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
    function Get_NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
    function Get_TxInfAndSts: IXMLPaymentTransactionInformationSEPAList;
    procedure Set_OrgnlPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_PmtInfSts(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlPmtInfId: UnicodeString read Get_OrgnlPmtInfId write Set_OrgnlPmtInfId;
    property OrgnlNbOfTxs: UnicodeString read Get_OrgnlNbOfTxs write Set_OrgnlNbOfTxs;
    property OrgnlCtrlSum: UnicodeString read Get_OrgnlCtrlSum write Set_OrgnlCtrlSum;
    property PmtInfSts: UnicodeString read Get_PmtInfSts write Set_PmtInfSts;
    property StsRsnInf: IXMLStatusReasonInformationSEPAList read Get_StsRsnInf;
    property NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List read Get_NbOfTxsPerSts;
    property TxInfAndSts: IXMLPaymentTransactionInformationSEPAList read Get_TxInfAndSts;
  end;

{ IXMLOriginalPaymentInformationSEPAList }

  IXMLOriginalPaymentInformationSEPAList = interface(IXMLNodeCollection)
    ['{4DA62024-DE54-4643-B402-C6B51218A713}']
    { Methoden & Eigenschaften }
    function Add: IXMLOriginalPaymentInformationSEPA;
    function Insert(const Index: Integer): IXMLOriginalPaymentInformationSEPA;

    function Get_Item(Index: Integer): IXMLOriginalPaymentInformationSEPA;
    property Items[Index: Integer]: IXMLOriginalPaymentInformationSEPA read Get_Item; default;
  end;

{ IXMLPaymentTransactionInformationSEPA }

  IXMLPaymentTransactionInformationSEPA = interface(IXMLNode)
    ['{BB945A81-B4A7-4EB8-8E33-50E259CBE096}']
    { Eigenschaftszugriff }
    function Get_StsId: UnicodeString;
    function Get_OrgnlInstrId: UnicodeString;
    function Get_OrgnlEndToEndId: UnicodeString;
    function Get_TxSts: UnicodeString;
    function Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
    function Get_OrgnlTxRef: IXMLOriginalTransactionReferenceSEPA;
    procedure Set_StsId(Value: UnicodeString);
    procedure Set_OrgnlInstrId(Value: UnicodeString);
    procedure Set_OrgnlEndToEndId(Value: UnicodeString);
    procedure Set_TxSts(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property StsId: UnicodeString read Get_StsId write Set_StsId;
    property OrgnlInstrId: UnicodeString read Get_OrgnlInstrId write Set_OrgnlInstrId;
    property OrgnlEndToEndId: UnicodeString read Get_OrgnlEndToEndId write Set_OrgnlEndToEndId;
    property TxSts: UnicodeString read Get_TxSts write Set_TxSts;
    property StsRsnInf: IXMLStatusReasonInformationSEPAList read Get_StsRsnInf;
    property OrgnlTxRef: IXMLOriginalTransactionReferenceSEPA read Get_OrgnlTxRef;
  end;

{ IXMLPaymentTransactionInformationSEPAList }

  IXMLPaymentTransactionInformationSEPAList = interface(IXMLNodeCollection)
    ['{7F632B07-854E-44CB-8E89-CE72C89DB794}']
    { Methoden & Eigenschaften }
    function Add: IXMLPaymentTransactionInformationSEPA;
    function Insert(const Index: Integer): IXMLPaymentTransactionInformationSEPA;

    function Get_Item(Index: Integer): IXMLPaymentTransactionInformationSEPA;
    property Items[Index: Integer]: IXMLPaymentTransactionInformationSEPA read Get_Item; default;
  end;

{ IXMLOriginalTransactionReferenceSEPA }

  IXMLOriginalTransactionReferenceSEPA = interface(IXMLNode)
    ['{93CFF2E7-A33B-432E-9625-FDDFF90D70BC}']
    { Eigenschaftszugriff }
    function Get_Amt: IXMLAmountTypeSEPA;
    function Get_ReqdColltnDt: UnicodeString;
    function Get_ReqdExctnDt: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSEPA;
    function Get_PmtMtd: UnicodeString;
    function Get_MndtRltdInf: IXMLMandateRelatedInformationSEPA;
    function Get_RmtInf: IXMLRemittanceInformationSEPA2Choice;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_Dbtr: IXMLPartyIdentificationSEPA2;
    function Get_DbtrAcct: IXMLCashAccountSEPA1;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_Cdtr: IXMLPartyIdentificationSEPA2;
    function Get_CdtrAcct: IXMLCashAccountSEPA1;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    procedure Set_ReqdColltnDt(Value: UnicodeString);
    procedure Set_ReqdExctnDt(Value: UnicodeString);
    procedure Set_PmtMtd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Amt: IXMLAmountTypeSEPA read Get_Amt;
    property ReqdColltnDt: UnicodeString read Get_ReqdColltnDt write Set_ReqdColltnDt;
    property ReqdExctnDt: UnicodeString read Get_ReqdExctnDt write Set_ReqdExctnDt;
    property CdtrSchmeId: IXMLPartyIdentificationSEPA3 read Get_CdtrSchmeId;
    property PmtTpInf: IXMLPaymentTypeInformationSEPA read Get_PmtTpInf;
    property PmtMtd: UnicodeString read Get_PmtMtd write Set_PmtMtd;
    property MndtRltdInf: IXMLMandateRelatedInformationSEPA read Get_MndtRltdInf;
    property RmtInf: IXMLRemittanceInformationSEPA2Choice read Get_RmtInf;
    property UltmtDbtr: IXMLPartyIdentificationSEPA1 read Get_UltmtDbtr;
    property Dbtr: IXMLPartyIdentificationSEPA2 read Get_Dbtr;
    property DbtrAcct: IXMLCashAccountSEPA1 read Get_DbtrAcct;
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3 read Get_DbtrAgt;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3 read Get_CdtrAgt;
    property Cdtr: IXMLPartyIdentificationSEPA2 read Get_Cdtr;
    property CdtrAcct: IXMLCashAccountSEPA1 read Get_CdtrAcct;
    property UltmtCdtr: IXMLPartyIdentificationSEPA1 read Get_UltmtCdtr;
  end;

{ IXMLPartyIdentificationSEPA3 }

  IXMLPartyIdentificationSEPA3 = interface(IXMLNode)
    ['{9EA153B0-2D74-4DA4-87C3-AA9D0EE4A086}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLPartySEPA2;
    { Methoden & Eigenschaften }
    property Id: IXMLPartySEPA2 read Get_Id;
  end;

{ IXMLPartySEPA2 }

  IXMLPartySEPA2 = interface(IXMLNode)
    ['{0C578A6C-1575-4C5E-8099-D2CBB02CEB36}']
    { Eigenschaftszugriff }
    function Get_PrvtId: IXMLPersonIdentificationSEPA2;
    { Methoden & Eigenschaften }
    property PrvtId: IXMLPersonIdentificationSEPA2 read Get_PrvtId;
  end;

{ IXMLPersonIdentificationSEPA2 }

  IXMLPersonIdentificationSEPA2 = interface(IXMLNode)
    ['{25358FB4-DAA1-419A-A3C6-1EA3E0BE0E29}']
    { Eigenschaftszugriff }
    function Get_Othr: IXMLRestrictedPersonIdentificationSEPA;
    { Methoden & Eigenschaften }
    property Othr: IXMLRestrictedPersonIdentificationSEPA read Get_Othr;
  end;

{ IXMLRestrictedPersonIdentificationSEPA }

  IXMLRestrictedPersonIdentificationSEPA = interface(IXMLNode)
    ['{8F9D0977-0595-4649-92DA-00D4DB959427}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLRestrictedPersonIdentificationSchemeNameSEPA;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SchmeNm: IXMLRestrictedPersonIdentificationSchemeNameSEPA read Get_SchmeNm;
  end;

{ IXMLRestrictedPersonIdentificationSchemeNameSEPA }

  IXMLRestrictedPersonIdentificationSchemeNameSEPA = interface(IXMLNode)
    ['{02251277-530A-49FD-9559-3CDD3CF9D0BF}']
    { Eigenschaftszugriff }
    function Get_Prtry: UnicodeString;
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLPaymentTypeInformationSEPA }

  IXMLPaymentTypeInformationSEPA = interface(IXMLNode)
    ['{949E81EE-80DD-4802-A0A8-45F60D4D0849}']
    { Eigenschaftszugriff }
    function Get_InstrPrty: UnicodeString;
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_LclInstrm: IXMLLocalInstrumentSEPA;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    procedure Set_InstrPrty(Value: UnicodeString);
    procedure Set_SeqTp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property InstrPrty: UnicodeString read Get_InstrPrty write Set_InstrPrty;
    property SvcLvl: IXMLServiceLevel read Get_SvcLvl;
    property LclInstrm: IXMLLocalInstrumentSEPA read Get_LclInstrm;
    property SeqTp: UnicodeString read Get_SeqTp write Set_SeqTp;
    property CtgyPurp: IXMLCategoryPurposeSEPA read Get_CtgyPurp;
  end;

{ IXMLLocalInstrumentSEPA }

  IXMLLocalInstrumentSEPA = interface(IXMLNode)
    ['{9D745D3B-EE3D-485A-89BA-8298620143BE}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLMandateRelatedInformationSEPA }

  IXMLMandateRelatedInformationSEPA = interface(IXMLNode)
    ['{035B6227-F6FB-430D-B1AA-418F6ECC8ABF}']
    { Eigenschaftszugriff }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetailsSEPA;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MndtId: UnicodeString read Get_MndtId write Set_MndtId;
    property DtOfSgntr: UnicodeString read Get_DtOfSgntr write Set_DtOfSgntr;
    property AmdmntInd: Boolean read Get_AmdmntInd write Set_AmdmntInd;
    property AmdmntInfDtls: IXMLAmendmentInformationDetailsSEPA read Get_AmdmntInfDtls;
    property ElctrncSgntr: UnicodeString read Get_ElctrncSgntr write Set_ElctrncSgntr;
  end;

{ IXMLAmendmentInformationDetailsSEPA }

  IXMLAmendmentInformationDetailsSEPA = interface(IXMLNode)
    ['{E21889F9-989E-41AC-A823-59DD49C244CF}']
    { Eigenschaftszugriff }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4;
    function Get_OrgnlDbtrAcct: IXMLCashAccountSEPAMandate;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMndtId: UnicodeString read Get_OrgnlMndtId write Set_OrgnlMndtId;
    property OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4 read Get_OrgnlCdtrSchmeId;
    property OrgnlDbtrAcct: IXMLCashAccountSEPAMandate read Get_OrgnlDbtrAcct;
    property OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2 read Get_OrgnlDbtrAgt;
  end;

{ IXMLPartyIdentificationSEPA4 }

  IXMLPartyIdentificationSEPA4 = interface(IXMLNode)
    ['{FEAF5E14-5C0A-4193-AD22-49CB6F5ED9DC}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLPartySEPA2;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Id: IXMLPartySEPA2 read Get_Id;
  end;

{ IXMLCashAccountSEPAMandate }

  IXMLCashAccountSEPAMandate = interface(IXMLNode)
    ['{9B940557-74EF-4EC7-8AC1-B4A3806ACD41}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentificationSEPAMandate;
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentificationSEPAMandate read Get_Id;
  end;

{ IXMLAccountIdentificationSEPAMandate }

  IXMLAccountIdentificationSEPAMandate = interface(IXMLNode)
    ['{29A4ACAB-BE40-4AE5-BB71-EE128F78D36E}']
    { Eigenschaftszugriff }
    function Get_IBAN: UnicodeString;
    function Get_Othr: IXMLGenericAccountIdentificationSEPA;
    procedure Set_IBAN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
    property Othr: IXMLGenericAccountIdentificationSEPA read Get_Othr;
  end;

{ IXMLGenericAccountIdentificationSEPA }

  IXMLGenericAccountIdentificationSEPA = interface(IXMLNode)
    ['{7BDC920B-DBC9-404B-B3ED-90D934A463AA}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA2 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA2 = interface(IXMLNode)
    ['{F7717272-8F27-454A-91A1-E34E5D1EE9AB}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA2 }

  IXMLFinancialInstitutionIdentificationSEPA2 = interface(IXMLNode)
    ['{CE9979D0-A8C8-4DA3-81C0-90B21EF8149B}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
  end;

{ IXMLRemittanceInformationSEPA2Choice }

  IXMLRemittanceInformationSEPA2Choice = interface(IXMLNode)
    ['{A8F990C4-8D2E-4488-853F-21A0FC8EDC9F}']
    { Eigenschaftszugriff }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformationSEPA2;
    procedure Set_Ustrd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ustrd: UnicodeString read Get_Ustrd write Set_Ustrd;
    property Strd: IXMLStructuredRemittanceInformationSEPA2 read Get_Strd;
  end;

{ IXMLStructuredRemittanceInformationSEPA2 }

  IXMLStructuredRemittanceInformationSEPA2 = interface(IXMLNode)
    ['{01CCBA99-B141-4A68-8406-10731D0F8ED9}']
    { Eigenschaftszugriff }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA;
    { Methoden & Eigenschaften }
    property CdtrRefInf: IXMLCreditorReferenceInformationSEPA read Get_CdtrRefInf;
  end;

{ IXMLCreditorReferenceInformationSEPA }

  IXMLCreditorReferenceInformationSEPA = interface(IXMLNode)
    ['{A60845C2-C2E4-4C8A-9CA9-A49492ABF278}']
    { Eigenschaftszugriff }
    function Get_Tp: IXMLCreditorReferenceTypeSEPA;
    function Get_Ref: UnicodeString;
    procedure Set_Ref(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: IXMLCreditorReferenceTypeSEPA read Get_Tp;
    property Ref: UnicodeString read Get_Ref write Set_Ref;
  end;

{ IXMLMax105TextList }

  IXMLMax105TextList = interface(IXMLNodeCollection)
    ['{8152CFCC-9FFB-4177-8277-B1E9B691F34E}']
    { Methoden & Eigenschaften }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward-Deklarationen }

  TXMLDocument00200103 = class;
  TXMLCustomerPaymentStatusReportV03 = class;
  TXMLGroupHeaderSEPA = class;
  TXMLOriginalGroupInformationSEPA = class;
  TXMLStatusReasonInformationSEPA = class;
  TXMLStatusReasonInformationSEPAList = class;
  TXMLPartyIdentificationSEPA6Choice = class;
  TXMLPartySEPA1 = class;
  TXMLOrganisationIdentificationSEPA = class;
  TXMLStatusReasonSEPA = class;
  TXMLNumberOfTransactionsPerStatus3 = class;
  TXMLNumberOfTransactionsPerStatus3List = class;
  TXMLOriginalPaymentInformationSEPA = class;
  TXMLOriginalPaymentInformationSEPAList = class;
  TXMLPaymentTransactionInformationSEPA = class;
  TXMLPaymentTransactionInformationSEPAList = class;
  TXMLOriginalTransactionReferenceSEPA = class;
  TXMLPaymentTypeInformationSEPA = class;
  TXMLMandateRelatedInformationSEPA = class;
  TXMLAmendmentInformationDetailsSEPA = class;
  TXMLRemittanceInformationSEPA2Choice = class;
  TXMLStructuredRemittanceInformationSEPA2 = class;
  TXMLCreditorReferenceInformationSEPA = class;
  TXMLMax105TextList = class;

{ TXMLDocument00200103 }

  TXMLDocument00200103 = class(TXMLNode, IXMLDocument00200103)
  protected
    { IXMLDocument }
    function Get_CstmrPmtStsRpt: IXMLCustomerPaymentStatusReportV03;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomerPaymentStatusReportV03 }

  TXMLCustomerPaymentStatusReportV03 = class(TXMLNode, IXMLCustomerPaymentStatusReportV03)
  private
    FOrgnlPmtInfAndSts: IXMLOriginalPaymentInformationSEPAList;
  protected
    { IXMLCustomerPaymentStatusReportV03 }
    function Get_GrpHdr: IXMLGroupHeaderSEPA;
    function Get_OrgnlGrpInfAndSts: IXMLOriginalGroupInformationSEPA;
    function Get_OrgnlPmtInfAndSts: IXMLOriginalPaymentInformationSEPAList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGroupHeaderSEPA }

  TXMLGroupHeaderSEPA = class(TXMLNode, IXMLGroupHeaderSEPA)
  protected
    { IXMLGroupHeaderSEPA }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOriginalGroupInformationSEPA }

  TXMLOriginalGroupInformationSEPA = class(TXMLNode, IXMLOriginalGroupInformationSEPA)
  private
    FStsRsnInf: IXMLStatusReasonInformationSEPAList;
    FNbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
  protected
    { IXMLOriginalGroupInformationSEPA }
    function Get_OrgnlMsgId: UnicodeString;
    function Get_OrgnlMsgNmId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_GrpSts: UnicodeString;
    function Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
    function Get_NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
    procedure Set_OrgnlMsgId(Value: UnicodeString);
    procedure Set_OrgnlMsgNmId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_GrpSts(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStatusReasonInformationSEPA }

  TXMLStatusReasonInformationSEPA = class(TXMLNode, IXMLStatusReasonInformationSEPA)
  private
    FAddtlInf: IXMLMax105TextList;
  protected
    { IXMLStatusReasonInformationSEPA }
    function Get_Orgtr: IXMLPartyIdentificationSEPA6Choice;
    function Get_Rsn: IXMLStatusReasonSEPA;
    function Get_AddtlInf: IXMLMax105TextList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStatusReasonInformationSEPAList }

  TXMLStatusReasonInformationSEPAList = class(TXMLNodeCollection, IXMLStatusReasonInformationSEPAList)
  protected
    { IXMLStatusReasonInformationSEPAList }
    function Add: IXMLStatusReasonInformationSEPA;
    function Insert(const Index: Integer): IXMLStatusReasonInformationSEPA;

    function Get_Item(Index: Integer): IXMLStatusReasonInformationSEPA;
  end;

{ TXMLPartyIdentificationSEPA6Choice }

  TXMLPartyIdentificationSEPA6Choice = class(TXMLNode, IXMLPartyIdentificationSEPA6Choice)
  protected
    { IXMLPartyIdentificationSEPA6Choice }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLPartySEPA1;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartySEPA1 }

  TXMLPartySEPA1 = class(TXMLNode, IXMLPartySEPA1)
  protected
    { IXMLPartySEPA1 }
    function Get_OrgId: IXMLOrganisationIdentificationSEPA;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrganisationIdentificationSEPA }

  TXMLOrganisationIdentificationSEPA = class(TXMLNode, IXMLOrganisationIdentificationSEPA)
  protected
    { IXMLOrganisationIdentificationSEPA }
    function Get_BICOrBEI: UnicodeString;
    procedure Set_BICOrBEI(Value: UnicodeString);
  end;

{ TXMLStatusReasonSEPA }

  TXMLStatusReasonSEPA = class(TXMLNode, IXMLStatusReasonSEPA)
  protected
    { IXMLStatusReasonSEPA }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLNumberOfTransactionsPerStatus3 }

  TXMLNumberOfTransactionsPerStatus3 = class(TXMLNode, IXMLNumberOfTransactionsPerStatus3)
  protected
    { IXMLNumberOfTransactionsPerStatus3 }
    function Get_DtldNbOfTxs: UnicodeString;
    function Get_DtldSts: UnicodeString;
    function Get_DtldCtrlSum: UnicodeString;
    procedure Set_DtldNbOfTxs(Value: UnicodeString);
    procedure Set_DtldSts(Value: UnicodeString);
    procedure Set_DtldCtrlSum(Value: UnicodeString);
  end;

{ TXMLNumberOfTransactionsPerStatus3List }

  TXMLNumberOfTransactionsPerStatus3List = class(TXMLNodeCollection, IXMLNumberOfTransactionsPerStatus3List)
  protected
    { IXMLNumberOfTransactionsPerStatus3List }
    function Add: IXMLNumberOfTransactionsPerStatus3;
    function Insert(const Index: Integer): IXMLNumberOfTransactionsPerStatus3;

    function Get_Item(Index: Integer): IXMLNumberOfTransactionsPerStatus3;
  end;

{ TXMLOriginalPaymentInformationSEPA }

  TXMLOriginalPaymentInformationSEPA = class(TXMLNode, IXMLOriginalPaymentInformationSEPA)
  private
    FStsRsnInf: IXMLStatusReasonInformationSEPAList;
    FNbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
    FTxInfAndSts: IXMLPaymentTransactionInformationSEPAList;
  protected
    { IXMLOriginalPaymentInformationSEPA }
    function Get_OrgnlPmtInfId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_PmtInfSts: UnicodeString;
    function Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
    function Get_NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
    function Get_TxInfAndSts: IXMLPaymentTransactionInformationSEPAList;
    procedure Set_OrgnlPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_PmtInfSts(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOriginalPaymentInformationSEPAList }

  TXMLOriginalPaymentInformationSEPAList = class(TXMLNodeCollection, IXMLOriginalPaymentInformationSEPAList)
  protected
    { IXMLOriginalPaymentInformationSEPAList }
    function Add: IXMLOriginalPaymentInformationSEPA;
    function Insert(const Index: Integer): IXMLOriginalPaymentInformationSEPA;

    function Get_Item(Index: Integer): IXMLOriginalPaymentInformationSEPA;
  end;

{ TXMLPaymentTransactionInformationSEPA }

  TXMLPaymentTransactionInformationSEPA = class(TXMLNode, IXMLPaymentTransactionInformationSEPA)
  private
    FStsRsnInf: IXMLStatusReasonInformationSEPAList;
  protected
    { IXMLPaymentTransactionInformationSEPA }
    function Get_StsId: UnicodeString;
    function Get_OrgnlInstrId: UnicodeString;
    function Get_OrgnlEndToEndId: UnicodeString;
    function Get_TxSts: UnicodeString;
    function Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
    function Get_OrgnlTxRef: IXMLOriginalTransactionReferenceSEPA;
    procedure Set_StsId(Value: UnicodeString);
    procedure Set_OrgnlInstrId(Value: UnicodeString);
    procedure Set_OrgnlEndToEndId(Value: UnicodeString);
    procedure Set_TxSts(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentTransactionInformationSEPAList }

  TXMLPaymentTransactionInformationSEPAList = class(TXMLNodeCollection, IXMLPaymentTransactionInformationSEPAList)
  protected
    { IXMLPaymentTransactionInformationSEPAList }
    function Add: IXMLPaymentTransactionInformationSEPA;
    function Insert(const Index: Integer): IXMLPaymentTransactionInformationSEPA;

    function Get_Item(Index: Integer): IXMLPaymentTransactionInformationSEPA;
  end;

{ TXMLOriginalTransactionReferenceSEPA }

  TXMLOriginalTransactionReferenceSEPA = class(TXMLNode, IXMLOriginalTransactionReferenceSEPA)
  protected
    { IXMLOriginalTransactionReferenceSEPA }
    function Get_Amt: IXMLAmountTypeSEPA;
    function Get_ReqdColltnDt: UnicodeString;
    function Get_ReqdExctnDt: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSEPA;
    function Get_PmtMtd: UnicodeString;
    function Get_MndtRltdInf: IXMLMandateRelatedInformationSEPA;
    function Get_RmtInf: IXMLRemittanceInformationSEPA2Choice;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_Dbtr: IXMLPartyIdentificationSEPA2;
    function Get_DbtrAcct: IXMLCashAccountSEPA1;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_Cdtr: IXMLPartyIdentificationSEPA2;
    function Get_CdtrAcct: IXMLCashAccountSEPA1;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    procedure Set_ReqdColltnDt(Value: UnicodeString);
    procedure Set_ReqdExctnDt(Value: UnicodeString);
    procedure Set_PmtMtd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentTypeInformationSEPA }

  TXMLPaymentTypeInformationSEPA = class(TXMLNode, IXMLPaymentTypeInformationSEPA)
  protected
    { IXMLPaymentTypeInformationSEPA }
    function Get_InstrPrty: UnicodeString;
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_LclInstrm: IXMLLocalInstrumentSEPA;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    procedure Set_InstrPrty(Value: UnicodeString);
    procedure Set_SeqTp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMandateRelatedInformationSEPA }

  TXMLMandateRelatedInformationSEPA = class(TXMLNode, IXMLMandateRelatedInformationSEPA)
  protected
    { IXMLMandateRelatedInformationSEPA }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetailsSEPA;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmendmentInformationDetailsSEPA }

  TXMLAmendmentInformationDetailsSEPA = class(TXMLNode, IXMLAmendmentInformationDetailsSEPA)
  protected
    { IXMLAmendmentInformationDetailsSEPA }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4;
    function Get_OrgnlDbtrAcct: IXMLCashAccountSEPAMandate;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRemittanceInformationSEPA2Choice }

  TXMLRemittanceInformationSEPA2Choice = class(TXMLNode, IXMLRemittanceInformationSEPA2Choice)
  protected
    { IXMLRemittanceInformationSEPA2Choice }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformationSEPA2;
    procedure Set_Ustrd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStructuredRemittanceInformationSEPA2 }

  TXMLStructuredRemittanceInformationSEPA2 = class(TXMLNode, IXMLStructuredRemittanceInformationSEPA2)
  protected
    { IXMLStructuredRemittanceInformationSEPA2 }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceInformationSEPA }

  TXMLCreditorReferenceInformationSEPA = class(TXMLNode, IXMLCreditorReferenceInformationSEPA)
  protected
    { IXMLCreditorReferenceInformationSEPA }
    function Get_Tp: IXMLCreditorReferenceTypeSEPA;
    function Get_Ref: UnicodeString;
    procedure Set_Ref(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMax105TextList }

  TXMLMax105TextList = class(TXMLNodeCollection, IXMLMax105TextList)
  protected
    { IXMLMax105TextList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

//************************ pain.007.001.02_GBIC_2.xsd **************************

//{ Forward-Deklarationen }

  IXMLDocument00700102 = interface;
  IXMLCustomerPaymentReversalV02 = interface;
  IXMLGroupHeader40 = interface;
  IXMLPartyIdentification32 = interface;
  IXMLPostalAddress6 = interface;
  IXMLParty6Choice = interface;
  IXMLOrganisationIdentification4 = interface;
  IXMLPersonIdentification5 = interface;
  IXMLBranchAndFinancialInstitutionIdentification4 = interface;
  IXMLFinancialInstitutionIdentification7 = interface;
  IXMLGenericFinancialIdentification1 = interface;
  IXMLOriginalGroupInformation22 = interface;
  IXMLReversalReasonInformation6 = interface;
  IXMLReversalReason4Choice = interface;
  IXMLOriginalPaymentInformation2 = interface;
  IXMLOriginalPaymentInformation2List = interface;
  IXMLPaymentTransactionInformation28 = interface;
  IXMLPaymentTransactionInformation28List = interface;
  IXMLActiveOrHistoricCurrencyAndAmount = interface;
  IXMLOriginalTransactionReference13 = interface;
  IXMLPaymentTypeInformation22 = interface;
  IXMLServiceLevel8Choice = interface;
  IXMLLocalInstrument2Choice = interface;
  IXMLCategoryPurpose1Choice = interface;
  IXMLMandateRelatedInformation6 = interface;
  IXMLAmendmentInformationDetails6 = interface;
  IXMLCashAccount16 = interface;
  IXMLAccountIdentification4Choice = interface;
  IXMLGenericAccountIdentification1 = interface;
  IXMLRemittanceInformation5 = interface;
  IXMLStructuredRemittanceInformation7 = interface;
  IXMLCreditorReferenceInformation2 = interface;
  IXMLCreditorReferenceType2 = interface;
  IXMLCreditorReferenceType1Choice = interface;

{ IXMLDocument00700102 }

  IXMLDocument00700102 = interface(IXMLNode)
    ['{100D3ED3-2B2A-474C-B792-586E6F8BE936}']
    { Eigenschaftszugriff }
    function Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02;
    { Methoden & Eigenschaften }
    property CstmrPmtRvsl: IXMLCustomerPaymentReversalV02 read Get_CstmrPmtRvsl;
  end;

{ IXMLCustomerPaymentReversalV02 }

  IXMLCustomerPaymentReversalV02 = interface(IXMLNode)
    ['{849058B2-9B2C-4BDC-AFCE-763F986074E0}']
    { Eigenschaftszugriff }
    function Get_GrpHdr: IXMLGroupHeader40;
    function Get_OrgnlGrpInf: IXMLOriginalGroupInformation22;
    function Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2List;
    { Methoden & Eigenschaften }
    property GrpHdr: IXMLGroupHeader40 read Get_GrpHdr;
    property OrgnlGrpInf: IXMLOriginalGroupInformation22 read Get_OrgnlGrpInf;
    property OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2List read Get_OrgnlPmtInfAndRvsl;
  end;

{ IXMLGroupHeader40 }

  IXMLGroupHeader40 = interface(IXMLNode)
    ['{2D269781-5DDB-446E-AB40-9C695CD5180A}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_GrpRvsl: Boolean;
    function Get_InitgPty: IXMLPartyIdentification32;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_GrpRvsl(Value: Boolean);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property CreDtTm: UnicodeString read Get_CreDtTm write Set_CreDtTm;
    property NbOfTxs: UnicodeString read Get_NbOfTxs write Set_NbOfTxs;
    property CtrlSum: UnicodeString read Get_CtrlSum write Set_CtrlSum;
    property GrpRvsl: Boolean read Get_GrpRvsl write Set_GrpRvsl;
    property InitgPty: IXMLPartyIdentification32 read Get_InitgPty;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_CdtrAgt;
  end;

{ IXMLPartyIdentification32 }

  IXMLPartyIdentification32 = interface(IXMLNode)
    ['{62341270-490A-4DA1-B5EE-DBE8E5AB1D76}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddress6;
    function Get_Id: IXMLParty6Choice;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property PstlAdr: IXMLPostalAddress6 read Get_PstlAdr;
    property Id: IXMLParty6Choice read Get_Id;
  end;

{ IXMLPostalAddress6 }

  IXMLPostalAddress6 = interface(IXMLNode)
    ['{C09B4BAA-659B-4E7D-861C-13BDF52E204A}']
    { Eigenschaftszugriff }
    function Get_Ctry: UnicodeString;
    function Get_AdrLine: IXMLMax70TextList;
    procedure Set_Ctry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ctry: UnicodeString read Get_Ctry write Set_Ctry;
    property AdrLine: IXMLMax70TextList read Get_AdrLine;
  end;

{ IXMLParty6Choice }

  IXMLParty6Choice = interface(IXMLNode)
    ['{636023F5-646D-4EF2-A675-2DFF11309590}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentification4;
    function Get_PrvtId: IXMLPersonIdentification5;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentification4 read Get_OrgId;
    property PrvtId: IXMLPersonIdentification5 read Get_PrvtId;
  end;

{ IXMLOrganisationIdentification4 }

  IXMLOrganisationIdentification4 = interface(IXMLNode)
    ['{BF0C85FC-8C71-46BC-8184-2CB70FB40698}']
    { Eigenschaftszugriff }
    function Get_BICOrBEI: UnicodeString;
    function Get_Othr: IXMLGenericOrganisationIdentification1;
    procedure Set_BICOrBEI(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BICOrBEI: UnicodeString read Get_BICOrBEI write Set_BICOrBEI;
    property Othr: IXMLGenericOrganisationIdentification1 read Get_Othr;
  end;

{ IXMLPersonIdentification5 }

  IXMLPersonIdentification5 = interface(IXMLNode)
    ['{36AA96BD-D0DF-40CA-BF25-B09A37D8D5A5}']
    { Eigenschaftszugriff }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
    { Methoden & Eigenschaften }
    property DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth read Get_DtAndPlcOfBirth;
    property Othr: IXMLGenericPersonIdentification1 read Get_Othr;
  end;

{ IXMLBranchAndFinancialInstitutionIdentification4 }

  IXMLBranchAndFinancialInstitutionIdentification4 = interface(IXMLNode)
    ['{5BCD5423-6732-4E20-9E7C-9C97EE52E91C}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentification7;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentification7 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentification7 }

  IXMLFinancialInstitutionIdentification7 = interface(IXMLNode)
    ['{5EC27EB7-8E64-4070-9B89-9152A075F52A}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    function Get_Othr: IXMLGenericFinancialIdentification1;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
    property Othr: IXMLGenericFinancialIdentification1 read Get_Othr;
  end;

{ IXMLGenericFinancialIdentification1 }

  IXMLGenericFinancialIdentification1 = interface(IXMLNode)
    ['{9F9745FD-6999-4584-9DA5-EE161C78516D}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLOriginalGroupInformation22 }

  IXMLOriginalGroupInformation22 = interface(IXMLNode)
    ['{F5BD2B7F-0A41-4CD2-AF19-72A3D3E2178E}']
    { Eigenschaftszugriff }
    function Get_OrgnlMsgId: UnicodeString;
    function Get_OrgnlMsgNmId: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6;
    procedure Set_OrgnlMsgId(Value: UnicodeString);
    procedure Set_OrgnlMsgNmId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMsgId: UnicodeString read Get_OrgnlMsgId write Set_OrgnlMsgId;
    property OrgnlMsgNmId: UnicodeString read Get_OrgnlMsgNmId write Set_OrgnlMsgNmId;
    property RvslRsnInf: IXMLReversalReasonInformation6 read Get_RvslRsnInf;
  end;

{ IXMLReversalReasonInformation6 }

  IXMLReversalReasonInformation6 = interface(IXMLNode)
    ['{C5991B06-33D4-43DE-8409-FE4FCAA5C86F}']
    { Eigenschaftszugriff }
    function Get_Rsn: IXMLReversalReason4Choice;
    { Methoden & Eigenschaften }
    property Rsn: IXMLReversalReason4Choice read Get_Rsn;
  end;

{ IXMLReversalReason4Choice }

  IXMLReversalReason4Choice = interface(IXMLNode)
    ['{E02AA0D8-4A91-47A1-BE49-4B75EA08F0D8}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLOriginalPaymentInformation2 }

  IXMLOriginalPaymentInformation2 = interface(IXMLNode)
    ['{C11EDCB7-843C-4C60-9453-A14333749F98}']
    { Eigenschaftszugriff }
    function Get_RvslPmtInfId: UnicodeString;
    function Get_OrgnlPmtInfId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_PmtInfRvsl: Boolean;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6;
    function Get_TxInf: IXMLPaymentTransactionInformation28List;
    procedure Set_RvslPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_PmtInfRvsl(Value: Boolean);
    { Methoden & Eigenschaften }
    property RvslPmtInfId: UnicodeString read Get_RvslPmtInfId write Set_RvslPmtInfId;
    property OrgnlPmtInfId: UnicodeString read Get_OrgnlPmtInfId write Set_OrgnlPmtInfId;
    property OrgnlNbOfTxs: UnicodeString read Get_OrgnlNbOfTxs write Set_OrgnlNbOfTxs;
    property OrgnlCtrlSum: UnicodeString read Get_OrgnlCtrlSum write Set_OrgnlCtrlSum;
    property BtchBookg: Boolean read Get_BtchBookg write Set_BtchBookg;
    property PmtInfRvsl: Boolean read Get_PmtInfRvsl write Set_PmtInfRvsl;
    property RvslRsnInf: IXMLReversalReasonInformation6 read Get_RvslRsnInf;
    property TxInf: IXMLPaymentTransactionInformation28List read Get_TxInf;
  end;

{ IXMLOriginalPaymentInformation2List }

  IXMLOriginalPaymentInformation2List = interface(IXMLNodeCollection)
    ['{AE1E3972-36FD-48A5-BBA8-65A4A24CED04}']
    { Methoden & Eigenschaften }
    function Add: IXMLOriginalPaymentInformation2;
    function Insert(const Index: Integer): IXMLOriginalPaymentInformation2;

    function Get_Item(Index: Integer): IXMLOriginalPaymentInformation2;
    property Items[Index: Integer]: IXMLOriginalPaymentInformation2 read Get_Item; default;
  end;

{ IXMLPaymentTransactionInformation28 }

  IXMLPaymentTransactionInformation28 = interface(IXMLNode)
    ['{255107B2-7686-4C44-8BF6-40FC059786B2}']
    { Eigenschaftszugriff }
    function Get_RvslId: UnicodeString;
    function Get_OrgnlInstrId: UnicodeString;
    function Get_OrgnlEndToEndId: UnicodeString;
    function Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_ChrgBr: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6;
    function Get_OrgnlTxRef: IXMLOriginalTransactionReference13;
    procedure Set_RvslId(Value: UnicodeString);
    procedure Set_OrgnlInstrId(Value: UnicodeString);
    procedure Set_OrgnlEndToEndId(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property RvslId: UnicodeString read Get_RvslId write Set_RvslId;
    property OrgnlInstrId: UnicodeString read Get_OrgnlInstrId write Set_OrgnlInstrId;
    property OrgnlEndToEndId: UnicodeString read Get_OrgnlEndToEndId write Set_OrgnlEndToEndId;
    property OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_OrgnlInstdAmt;
    property RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_RvsdInstdAmt;
    property ChrgBr: UnicodeString read Get_ChrgBr write Set_ChrgBr;
    property RvslRsnInf: IXMLReversalReasonInformation6 read Get_RvslRsnInf;
    property OrgnlTxRef: IXMLOriginalTransactionReference13 read Get_OrgnlTxRef;
  end;

{ IXMLPaymentTransactionInformation28List }

  IXMLPaymentTransactionInformation28List = interface(IXMLNodeCollection)
    ['{1574DB62-CAC2-455C-A472-5D8A3576E219}']
    { Methoden & Eigenschaften }
    function Add: IXMLPaymentTransactionInformation28;
    function Insert(const Index: Integer): IXMLPaymentTransactionInformation28;

    function Get_Item(Index: Integer): IXMLPaymentTransactionInformation28;
    property Items[Index: Integer]: IXMLPaymentTransactionInformation28 read Get_Item; default;
  end;

{ IXMLActiveOrHistoricCurrencyAndAmount }

  IXMLActiveOrHistoricCurrencyAndAmount = interface(IXMLNode)
    ['{F117D995-E1C7-4BC1-A27D-5C8124D253D4}']
    { Eigenschaftszugriff }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLOriginalTransactionReference13 }

  IXMLOriginalTransactionReference13 = interface(IXMLNode)
    ['{2C3BD24E-3CB7-448D-9211-27063DFFE07C}']
    { Eigenschaftszugriff }
    function Get_ReqdColltnDt: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentification32;
    function Get_PmtTpInf: IXMLPaymentTypeInformation22;
    function Get_MndtRltdInf: IXMLMandateRelatedInformation6;
    function Get_RmtInf: IXMLRemittanceInformation5;
    function Get_UltmtDbtr: IXMLPartyIdentification32;
    function Get_Dbtr: IXMLPartyIdentification32;
    function Get_DbtrAcct: IXMLCashAccount16;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Cdtr: IXMLPartyIdentification32;
    function Get_CdtrAcct: IXMLCashAccount16;
    function Get_UltmtCdtr: IXMLPartyIdentification32;
    procedure Set_ReqdColltnDt(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property ReqdColltnDt: UnicodeString read Get_ReqdColltnDt write Set_ReqdColltnDt;
    property CdtrSchmeId: IXMLPartyIdentification32 read Get_CdtrSchmeId;
    property PmtTpInf: IXMLPaymentTypeInformation22 read Get_PmtTpInf;
    property MndtRltdInf: IXMLMandateRelatedInformation6 read Get_MndtRltdInf;
    property RmtInf: IXMLRemittanceInformation5 read Get_RmtInf;
    property UltmtDbtr: IXMLPartyIdentification32 read Get_UltmtDbtr;
    property Dbtr: IXMLPartyIdentification32 read Get_Dbtr;
    property DbtrAcct: IXMLCashAccount16 read Get_DbtrAcct;
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_DbtrAgt;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_CdtrAgt;
    property Cdtr: IXMLPartyIdentification32 read Get_Cdtr;
    property CdtrAcct: IXMLCashAccount16 read Get_CdtrAcct;
    property UltmtCdtr: IXMLPartyIdentification32 read Get_UltmtCdtr;
  end;

{ IXMLPaymentTypeInformation22 }

  IXMLPaymentTypeInformation22 = interface(IXMLNode)
    ['{FDE5C36A-1CBB-42B2-9F19-6BFC11470ED9}']
    { Eigenschaftszugriff }
    function Get_SvcLvl: IXMLServiceLevel8Choice;
    function Get_LclInstrm: IXMLLocalInstrument2Choice;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurpose1Choice;
    procedure Set_SeqTp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property SvcLvl: IXMLServiceLevel8Choice read Get_SvcLvl;
    property LclInstrm: IXMLLocalInstrument2Choice read Get_LclInstrm;
    property SeqTp: UnicodeString read Get_SeqTp write Set_SeqTp;
    property CtgyPurp: IXMLCategoryPurpose1Choice read Get_CtgyPurp;
  end;

{ IXMLServiceLevel8Choice }

  IXMLServiceLevel8Choice = interface(IXMLNode)
    ['{243482DE-1565-42CB-835A-45E551E0380E}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLLocalInstrument2Choice }

  IXMLLocalInstrument2Choice = interface(IXMLNode)
    ['{977E311B-A967-4753-9521-3902DB6C9796}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLCategoryPurpose1Choice }

  IXMLCategoryPurpose1Choice = interface(IXMLNode)
    ['{0D83DD15-A483-43DF-8A40-59B66FCCFFBD}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLMandateRelatedInformation6 }

  IXMLMandateRelatedInformation6 = interface(IXMLNode)
    ['{E22DFA7B-5CF1-44F9-B659-C80294F5378A}']
    { Eigenschaftszugriff }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MndtId: UnicodeString read Get_MndtId write Set_MndtId;
    property DtOfSgntr: UnicodeString read Get_DtOfSgntr write Set_DtOfSgntr;
    property AmdmntInd: Boolean read Get_AmdmntInd write Set_AmdmntInd;
    property AmdmntInfDtls: IXMLAmendmentInformationDetails6 read Get_AmdmntInfDtls;
    property ElctrncSgntr: UnicodeString read Get_ElctrncSgntr write Set_ElctrncSgntr;
  end;

{ IXMLAmendmentInformationDetails6 }

  IXMLAmendmentInformationDetails6 = interface(IXMLNode)
    ['{A0FAEA02-8D01-46A2-8216-4851364FA3FC}']
    { Eigenschaftszugriff }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32;
    function Get_OrgnlDbtrAcct: IXMLCashAccount16;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMndtId: UnicodeString read Get_OrgnlMndtId write Set_OrgnlMndtId;
    property OrgnlCdtrSchmeId: IXMLPartyIdentification32 read Get_OrgnlCdtrSchmeId;
    property OrgnlDbtrAcct: IXMLCashAccount16 read Get_OrgnlDbtrAcct;
    property OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_OrgnlDbtrAgt;
  end;

{ IXMLCashAccount16 }

  IXMLCashAccount16 = interface(IXMLNode)
    ['{0586DB17-0ACD-4BF5-91DB-56FCCA23A726}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentification4Choice;
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentification4Choice read Get_Id;
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLAccountIdentification4Choice }

  IXMLAccountIdentification4Choice = interface(IXMLNode)
    ['{9A2BFA47-E940-473B-AC33-79929A5A9052}']
    { Eigenschaftszugriff }
    function Get_IBAN: UnicodeString;
    function Get_Othr: IXMLGenericAccountIdentification1;
    procedure Set_IBAN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
    property Othr: IXMLGenericAccountIdentification1 read Get_Othr;
  end;

{ IXMLGenericAccountIdentification1 }

  IXMLGenericAccountIdentification1 = interface(IXMLNode)
    ['{71DFE429-9A78-49C3-B30F-09159FBDAB1E}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLRemittanceInformation5 }

  IXMLRemittanceInformation5 = interface(IXMLNode)
    ['{E93A2882-C16B-41D9-8DA5-E2A815903060}']
    { Eigenschaftszugriff }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformation7;
    procedure Set_Ustrd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ustrd: UnicodeString read Get_Ustrd write Set_Ustrd;
    property Strd: IXMLStructuredRemittanceInformation7 read Get_Strd;
  end;

{ IXMLStructuredRemittanceInformation7 }

  IXMLStructuredRemittanceInformation7 = interface(IXMLNode)
    ['{13507D83-BD1B-46D1-8C94-0D6960CA2625}']
    { Eigenschaftszugriff }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformation2;
    { Methoden & Eigenschaften }
    property CdtrRefInf: IXMLCreditorReferenceInformation2 read Get_CdtrRefInf;
  end;

{ IXMLCreditorReferenceInformation2 }

  IXMLCreditorReferenceInformation2 = interface(IXMLNode)
    ['{FED84CE5-5B9E-48B5-9339-A272B381CCDE}']
    { Eigenschaftszugriff }
    function Get_Tp: IXMLCreditorReferenceType2;
    function Get_Ref: UnicodeString;
    procedure Set_Ref(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: IXMLCreditorReferenceType2 read Get_Tp;
    property Ref: UnicodeString read Get_Ref write Set_Ref;
  end;

{ IXMLCreditorReferenceType2 }

  IXMLCreditorReferenceType2 = interface(IXMLNode)
    ['{C3702129-AB05-4F7F-9BD9-34B4784533A9}']
    { Eigenschaftszugriff }
    function Get_CdOrPrtry: IXMLCreditorReferenceType1Choice;
    function Get_Issr: UnicodeString;
    procedure Set_Issr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property CdOrPrtry: IXMLCreditorReferenceType1Choice read Get_CdOrPrtry;
    property Issr: UnicodeString read Get_Issr write Set_Issr;
  end;

{ IXMLCreditorReferenceType1Choice }

  IXMLCreditorReferenceType1Choice = interface(IXMLNode)
    ['{88F60F14-4FF7-4ACA-B7E6-61B01770C66E}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ Forward-Deklarationen }

  TXMLDocument00700102 = class;
  TXMLCustomerPaymentReversalV02 = class;
  TXMLGroupHeader40 = class;
  TXMLPartyIdentification32 = class;
  TXMLPostalAddress6 = class;
  TXMLParty6Choice = class;
  TXMLOrganisationIdentification4 = class;
  TXMLPersonIdentification5 = class;
  TXMLBranchAndFinancialInstitutionIdentification4 = class;
  TXMLFinancialInstitutionIdentification7 = class;
  TXMLGenericFinancialIdentification1 = class;
  TXMLOriginalGroupInformation22 = class;
  TXMLReversalReasonInformation6 = class;
  TXMLReversalReason4Choice = class;
  TXMLOriginalPaymentInformation2 = class;
  TXMLOriginalPaymentInformation2List = class;
  TXMLPaymentTransactionInformation28 = class;
  TXMLPaymentTransactionInformation28List = class;
  TXMLActiveOrHistoricCurrencyAndAmount = class;
  TXMLOriginalTransactionReference13 = class;
  TXMLPaymentTypeInformation22 = class;
  TXMLServiceLevel8Choice = class;
  TXMLLocalInstrument2Choice = class;
  TXMLCategoryPurpose1Choice = class;
  TXMLMandateRelatedInformation6 = class;
  TXMLAmendmentInformationDetails6 = class;
  TXMLCashAccount16 = class;
  TXMLAccountIdentification4Choice = class;
  TXMLGenericAccountIdentification1 = class;
  TXMLRemittanceInformation5 = class;
  TXMLStructuredRemittanceInformation7 = class;
  TXMLCreditorReferenceInformation2 = class;
  TXMLCreditorReferenceType2 = class;
  TXMLCreditorReferenceType1Choice = class;

{ TXMLDocument00700102 }

  TXMLDocument00700102 = class(TXMLNode, IXMLDocument00700102)
  protected
    { IXMLDocument }
    function Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomerPaymentReversalV02 }

  TXMLCustomerPaymentReversalV02 = class(TXMLNode, IXMLCustomerPaymentReversalV02)
  private
    FOrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2List;
  protected
    { IXMLCustomerPaymentReversalV02 }
    function Get_GrpHdr: IXMLGroupHeader40;
    function Get_OrgnlGrpInf: IXMLOriginalGroupInformation22;
    function Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGroupHeader40 }

  TXMLGroupHeader40 = class(TXMLNode, IXMLGroupHeader40)
  protected
    { IXMLGroupHeader40 }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_GrpRvsl: Boolean;
    function Get_InitgPty: IXMLPartyIdentification32;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_GrpRvsl(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentification32 }

  TXMLPartyIdentification32 = class(TXMLNode, IXMLPartyIdentification32)
  protected
    { IXMLPartyIdentification32 }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddress6;
    function Get_Id: IXMLParty6Choice;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPostalAddress6 }

  TXMLPostalAddress6 = class(TXMLNode, IXMLPostalAddress6)
  private
    FAdrLine: IXMLMax70TextList;
  protected
    { IXMLPostalAddress6 }
    function Get_Ctry: UnicodeString;
    function Get_AdrLine: IXMLMax70TextList;
    procedure Set_Ctry(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLParty6Choice }

  TXMLParty6Choice = class(TXMLNode, IXMLParty6Choice)
  protected
    { IXMLParty6Choice }
    function Get_OrgId: IXMLOrganisationIdentification4;
    function Get_PrvtId: IXMLPersonIdentification5;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrganisationIdentification4 }

  TXMLOrganisationIdentification4 = class(TXMLNode, IXMLOrganisationIdentification4)
  protected
    { IXMLOrganisationIdentification4 }
    function Get_BICOrBEI: UnicodeString;
    function Get_Othr: IXMLGenericOrganisationIdentification1;
    procedure Set_BICOrBEI(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonIdentification5 }

  TXMLPersonIdentification5 = class(TXMLNode, IXMLPersonIdentification5)
  protected
    { IXMLPersonIdentification5 }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBranchAndFinancialInstitutionIdentification4 }

  TXMLBranchAndFinancialInstitutionIdentification4 = class(TXMLNode, IXMLBranchAndFinancialInstitutionIdentification4)
  protected
    { IXMLBranchAndFinancialInstitutionIdentification4 }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentification7;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFinancialInstitutionIdentification7 }

  TXMLFinancialInstitutionIdentification7 = class(TXMLNode, IXMLFinancialInstitutionIdentification7)
  protected
    { IXMLFinancialInstitutionIdentification7 }
    function Get_BIC: UnicodeString;
    function Get_Othr: IXMLGenericFinancialIdentification1;
    procedure Set_BIC(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenericFinancialIdentification1 }

  TXMLGenericFinancialIdentification1 = class(TXMLNode, IXMLGenericFinancialIdentification1)
  protected
    { IXMLGenericFinancialIdentification1 }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLOriginalGroupInformation22 }

  TXMLOriginalGroupInformation22 = class(TXMLNode, IXMLOriginalGroupInformation22)
  protected
    { IXMLOriginalGroupInformation22 }
    function Get_OrgnlMsgId: UnicodeString;
    function Get_OrgnlMsgNmId: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6;
    procedure Set_OrgnlMsgId(Value: UnicodeString);
    procedure Set_OrgnlMsgNmId(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReversalReasonInformation6 }

  TXMLReversalReasonInformation6 = class(TXMLNode, IXMLReversalReasonInformation6)
  protected
    { IXMLReversalReasonInformation6 }
    function Get_Rsn: IXMLReversalReason4Choice;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReversalReason4Choice }

  TXMLReversalReason4Choice = class(TXMLNode, IXMLReversalReason4Choice)
  protected
    { IXMLReversalReason4Choice }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLOriginalPaymentInformation2 }

  TXMLOriginalPaymentInformation2 = class(TXMLNode, IXMLOriginalPaymentInformation2)
  private
    FTxInf: IXMLPaymentTransactionInformation28List;
  protected
    { IXMLOriginalPaymentInformation2 }
    function Get_RvslPmtInfId: UnicodeString;
    function Get_OrgnlPmtInfId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_PmtInfRvsl: Boolean;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6;
    function Get_TxInf: IXMLPaymentTransactionInformation28List;
    procedure Set_RvslPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_PmtInfRvsl(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOriginalPaymentInformation2List }

  TXMLOriginalPaymentInformation2List = class(TXMLNodeCollection, IXMLOriginalPaymentInformation2List)
  protected
    { IXMLOriginalPaymentInformation2List }
    function Add: IXMLOriginalPaymentInformation2;
    function Insert(const Index: Integer): IXMLOriginalPaymentInformation2;

    function Get_Item(Index: Integer): IXMLOriginalPaymentInformation2;
  end;

{ TXMLPaymentTransactionInformation28 }

  TXMLPaymentTransactionInformation28 = class(TXMLNode, IXMLPaymentTransactionInformation28)
  protected
    { IXMLPaymentTransactionInformation28 }
    function Get_RvslId: UnicodeString;
    function Get_OrgnlInstrId: UnicodeString;
    function Get_OrgnlEndToEndId: UnicodeString;
    function Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_ChrgBr: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6;
    function Get_OrgnlTxRef: IXMLOriginalTransactionReference13;
    procedure Set_RvslId(Value: UnicodeString);
    procedure Set_OrgnlInstrId(Value: UnicodeString);
    procedure Set_OrgnlEndToEndId(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentTransactionInformation28List }

  TXMLPaymentTransactionInformation28List = class(TXMLNodeCollection, IXMLPaymentTransactionInformation28List)
  protected
    { IXMLPaymentTransactionInformation28List }
    function Add: IXMLPaymentTransactionInformation28;
    function Insert(const Index: Integer): IXMLPaymentTransactionInformation28;

    function Get_Item(Index: Integer): IXMLPaymentTransactionInformation28;
  end;

{ TXMLActiveOrHistoricCurrencyAndAmount }

  TXMLActiveOrHistoricCurrencyAndAmount = class(TXMLNode, IXMLActiveOrHistoricCurrencyAndAmount)
  protected
    { IXMLActiveOrHistoricCurrencyAndAmount }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
  end;

{ TXMLOriginalTransactionReference13 }

  TXMLOriginalTransactionReference13 = class(TXMLNode, IXMLOriginalTransactionReference13)
  protected
    { IXMLOriginalTransactionReference13 }
    function Get_ReqdColltnDt: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentification32;
    function Get_PmtTpInf: IXMLPaymentTypeInformation22;
    function Get_MndtRltdInf: IXMLMandateRelatedInformation6;
    function Get_RmtInf: IXMLRemittanceInformation5;
    function Get_UltmtDbtr: IXMLPartyIdentification32;
    function Get_Dbtr: IXMLPartyIdentification32;
    function Get_DbtrAcct: IXMLCashAccount16;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Cdtr: IXMLPartyIdentification32;
    function Get_CdtrAcct: IXMLCashAccount16;
    function Get_UltmtCdtr: IXMLPartyIdentification32;
    procedure Set_ReqdColltnDt(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentTypeInformation22 }

  TXMLPaymentTypeInformation22 = class(TXMLNode, IXMLPaymentTypeInformation22)
  protected
    { IXMLPaymentTypeInformation22 }
    function Get_SvcLvl: IXMLServiceLevel8Choice;
    function Get_LclInstrm: IXMLLocalInstrument2Choice;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurpose1Choice;
    procedure Set_SeqTp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLServiceLevel8Choice }

  TXMLServiceLevel8Choice = class(TXMLNode, IXMLServiceLevel8Choice)
  protected
    { IXMLServiceLevel8Choice }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLLocalInstrument2Choice }

  TXMLLocalInstrument2Choice = class(TXMLNode, IXMLLocalInstrument2Choice)
  protected
    { IXMLLocalInstrument2Choice }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLCategoryPurpose1Choice }

  TXMLCategoryPurpose1Choice = class(TXMLNode, IXMLCategoryPurpose1Choice)
  protected
    { IXMLCategoryPurpose1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLMandateRelatedInformation6 }

  TXMLMandateRelatedInformation6 = class(TXMLNode, IXMLMandateRelatedInformation6)
  protected
    { IXMLMandateRelatedInformation6 }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmendmentInformationDetails6 }

  TXMLAmendmentInformationDetails6 = class(TXMLNode, IXMLAmendmentInformationDetails6)
  protected
    { IXMLAmendmentInformationDetails6 }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32;
    function Get_OrgnlDbtrAcct: IXMLCashAccount16;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccount16 }

  TXMLCashAccount16 = class(TXMLNode, IXMLCashAccount16)
  protected
    { IXMLCashAccount16 }
    function Get_Id: IXMLAccountIdentification4Choice;
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountIdentification4Choice }

  TXMLAccountIdentification4Choice = class(TXMLNode, IXMLAccountIdentification4Choice)
  protected
    { IXMLAccountIdentification4Choice }
    function Get_IBAN: UnicodeString;
    function Get_Othr: IXMLGenericAccountIdentification1;
    procedure Set_IBAN(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenericAccountIdentification1 }

  TXMLGenericAccountIdentification1 = class(TXMLNode, IXMLGenericAccountIdentification1)
  protected
    { IXMLGenericAccountIdentification1 }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLRemittanceInformation5 }

  TXMLRemittanceInformation5 = class(TXMLNode, IXMLRemittanceInformation5)
  protected
    { IXMLRemittanceInformation5 }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformation7;
    procedure Set_Ustrd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStructuredRemittanceInformation7 }

  TXMLStructuredRemittanceInformation7 = class(TXMLNode, IXMLStructuredRemittanceInformation7)
  protected
    { IXMLStructuredRemittanceInformation7 }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformation2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceInformation2 }

  TXMLCreditorReferenceInformation2 = class(TXMLNode, IXMLCreditorReferenceInformation2)
  protected
    { IXMLCreditorReferenceInformation2 }
    function Get_Tp: IXMLCreditorReferenceType2;
    function Get_Ref: UnicodeString;
    procedure Set_Ref(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceType2 }

  TXMLCreditorReferenceType2 = class(TXMLNode, IXMLCreditorReferenceType2)
  protected
    { IXMLCreditorReferenceType2 }
    function Get_CdOrPrtry: IXMLCreditorReferenceType1Choice;
    function Get_Issr: UnicodeString;
    procedure Set_Issr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCreditorReferenceType1Choice }

  TXMLCreditorReferenceType1Choice = class(TXMLNode, IXMLCreditorReferenceType1Choice)
  protected
    { IXMLCreditorReferenceType1Choice }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

//************************ pain.008.001.02_GBIC_2.xsd **************************

{ Forward-Deklarationen }

  IXMLDocument00800102 = interface;
  IXMLCustomerDirectDebitInitiationV02 = interface;
  IXMLGroupHeaderSDD = interface;
  IXMLPaymentInstructionInformationSDD = interface;
  IXMLPaymentInstructionInformationSDDList = interface;
  IXMLPaymentTypeInformationSDD = interface;
  IXMLPartyIdentificationSEPA5 = interface;
  IXMLDirectDebitTransactionInformationSDD = interface;
  IXMLDirectDebitTransactionInformationSDDList = interface;
  IXMLDirectDebitTransactionSDD = interface;
  IXMLMandateRelatedInformationSDD = interface;
  IXMLAmendmentInformationDetailsSDD = interface;

{ IXMLDocument00800102 }

  IXMLDocument00800102 = interface(IXMLNode)
    ['{1C9934E5-EB81-4831-9CFE-43B9AD7EF3BA}']
    { Eigenschaftszugriff }
    function Get_CstmrDrctDbtInitn: IXMLCustomerDirectDebitInitiationV02;
    { Methoden & Eigenschaften }
    property CstmrDrctDbtInitn: IXMLCustomerDirectDebitInitiationV02 read Get_CstmrDrctDbtInitn;
  end;

{ IXMLCustomerDirectDebitInitiationV02 }

  IXMLCustomerDirectDebitInitiationV02 = interface(IXMLNode)
    ['{091FDE6C-5AF8-4AEA-8FB3-C679CB388DB3}']
    { Eigenschaftszugriff }
    function Get_GrpHdr: IXMLGroupHeaderSDD;
    function Get_PmtInf: IXMLPaymentInstructionInformationSDDList;
    { Methoden & Eigenschaften }
    property GrpHdr: IXMLGroupHeaderSDD read Get_GrpHdr;
    property PmtInf: IXMLPaymentInstructionInformationSDDList read Get_PmtInf;
  end;

{ IXMLGroupHeaderSDD }

  IXMLGroupHeaderSDD = interface(IXMLNode)
    ['{600B228F-C398-4EDC-959F-13684F793914}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_InitgPty: IXMLPartyIdentificationSEPA1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property CreDtTm: UnicodeString read Get_CreDtTm write Set_CreDtTm;
    property NbOfTxs: UnicodeString read Get_NbOfTxs write Set_NbOfTxs;
    property CtrlSum: UnicodeString read Get_CtrlSum write Set_CtrlSum;
    property InitgPty: IXMLPartyIdentificationSEPA1 read Get_InitgPty;
  end;

{ IXMLPaymentInstructionInformationSDD }

  IXMLPaymentInstructionInformationSDD = interface(IXMLNode)
    ['{E9C72F7F-9A8E-4360-96F4-90FB9872B218}']
    { Eigenschaftszugriff }
    function Get_PmtInfId: UnicodeString;
    function Get_PmtMtd: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSDD;
    function Get_ReqdColltnDt: UnicodeString;
    function Get_Cdtr: IXMLPartyIdentificationSEPA5;
    function Get_CdtrAcct: IXMLCashAccountSEPA1;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    function Get_ChrgBr: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
    function Get_DrctDbtTxInf: IXMLDirectDebitTransactionInformationSDDList;
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_PmtMtd(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_ReqdColltnDt(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property PmtInfId: UnicodeString read Get_PmtInfId write Set_PmtInfId;
    property PmtMtd: UnicodeString read Get_PmtMtd write Set_PmtMtd;
    property BtchBookg: Boolean read Get_BtchBookg write Set_BtchBookg;
    property NbOfTxs: UnicodeString read Get_NbOfTxs write Set_NbOfTxs;
    property CtrlSum: UnicodeString read Get_CtrlSum write Set_CtrlSum;
    property PmtTpInf: IXMLPaymentTypeInformationSDD read Get_PmtTpInf;
    property ReqdColltnDt: UnicodeString read Get_ReqdColltnDt write Set_ReqdColltnDt;
    property Cdtr: IXMLPartyIdentificationSEPA5 read Get_Cdtr;
    property CdtrAcct: IXMLCashAccountSEPA1 read Get_CdtrAcct;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3 read Get_CdtrAgt;
    property UltmtCdtr: IXMLPartyIdentificationSEPA1 read Get_UltmtCdtr;
    property ChrgBr: UnicodeString read Get_ChrgBr write Set_ChrgBr;
    property CdtrSchmeId: IXMLPartyIdentificationSEPA3 read Get_CdtrSchmeId;
    property DrctDbtTxInf: IXMLDirectDebitTransactionInformationSDDList read Get_DrctDbtTxInf;
  end;

{ IXMLPaymentInstructionInformationSDDList }

  IXMLPaymentInstructionInformationSDDList = interface(IXMLNodeCollection)
    ['{355E2775-9776-4062-8805-C1C6E4E434C7}']
    { Methoden & Eigenschaften }
    function Add: IXMLPaymentInstructionInformationSDD;
    function Insert(const Index: Integer): IXMLPaymentInstructionInformationSDD;

    function Get_Item(Index: Integer): IXMLPaymentInstructionInformationSDD;
    property Items[Index: Integer]: IXMLPaymentInstructionInformationSDD read Get_Item; default;
  end;

{ IXMLPaymentTypeInformationSDD }

  IXMLPaymentTypeInformationSDD = interface(IXMLNode)
    ['{9CB270CF-0F31-40A6-91A3-751D68E36D6D}']
    { Eigenschaftszugriff }
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_LclInstrm: IXMLLocalInstrumentSEPA;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    procedure Set_SeqTp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property SvcLvl: IXMLServiceLevel read Get_SvcLvl;
    property LclInstrm: IXMLLocalInstrumentSEPA read Get_LclInstrm;
    property SeqTp: UnicodeString read Get_SeqTp write Set_SeqTp;
    property CtgyPurp: IXMLCategoryPurposeSEPA read Get_CtgyPurp;
  end;

{ IXMLPartyIdentificationSEPA5 }

  IXMLPartyIdentificationSEPA5 = interface(IXMLNode)
    ['{21AA6F46-4BC2-44CD-BD10-4BEECD72770A}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddressSEPA;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property PstlAdr: IXMLPostalAddressSEPA read Get_PstlAdr;
  end;

{ IXMLDirectDebitTransactionInformationSDD }

  IXMLDirectDebitTransactionInformationSDD = interface(IXMLNode)
    ['{8653F72D-42A5-4162-8838-C35ACD2BB632}']
    { Eigenschaftszugriff }
    function Get_PmtId: IXMLPaymentIdentificationSEPA;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSDD;
    function Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
    function Get_ChrgBr: UnicodeString;
    function Get_DrctDbtTx: IXMLDirectDebitTransactionSDD;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_Dbtr: IXMLPartyIdentificationSEPA2;
    function Get_DbtrAcct: IXMLCashAccountSEPA2;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_Purp: IXMLPurposeSEPA;
    function Get_RmtInf: IXMLRemittanceInformationSEPA1Choice;
    procedure Set_ChrgBr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property PmtId: IXMLPaymentIdentificationSEPA read Get_PmtId;
    property PmtTpInf: IXMLPaymentTypeInformationSDD read Get_PmtTpInf;
    property InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA read Get_InstdAmt;
    property ChrgBr: UnicodeString read Get_ChrgBr write Set_ChrgBr;
    property DrctDbtTx: IXMLDirectDebitTransactionSDD read Get_DrctDbtTx;
    property UltmtCdtr: IXMLPartyIdentificationSEPA1 read Get_UltmtCdtr;
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3 read Get_DbtrAgt;
    property Dbtr: IXMLPartyIdentificationSEPA2 read Get_Dbtr;
    property DbtrAcct: IXMLCashAccountSEPA2 read Get_DbtrAcct;
    property UltmtDbtr: IXMLPartyIdentificationSEPA1 read Get_UltmtDbtr;
    property Purp: IXMLPurposeSEPA read Get_Purp;
    property RmtInf: IXMLRemittanceInformationSEPA1Choice read Get_RmtInf;
  end;

{ IXMLDirectDebitTransactionInformationSDDList }

  IXMLDirectDebitTransactionInformationSDDList = interface(IXMLNodeCollection)
    ['{34747269-38EE-4D38-85B6-9F2718C5589B}']
    { Methoden & Eigenschaften }
    function Add: IXMLDirectDebitTransactionInformationSDD;
    function Insert(const Index: Integer): IXMLDirectDebitTransactionInformationSDD;

    function Get_Item(Index: Integer): IXMLDirectDebitTransactionInformationSDD;
    property Items[Index: Integer]: IXMLDirectDebitTransactionInformationSDD read Get_Item; default;
  end;

{ IXMLDirectDebitTransactionSDD }

  IXMLDirectDebitTransactionSDD = interface(IXMLNode)
    ['{EA85E6AA-1E60-46CC-8569-0A16F996F6EF}']
    { Eigenschaftszugriff }
    function Get_MndtRltdInf: IXMLMandateRelatedInformationSDD;
    function Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
    { Methoden & Eigenschaften }
    property MndtRltdInf: IXMLMandateRelatedInformationSDD read Get_MndtRltdInf;
    property CdtrSchmeId: IXMLPartyIdentificationSEPA3 read Get_CdtrSchmeId;
  end;

{ IXMLMandateRelatedInformationSDD }

  IXMLMandateRelatedInformationSDD = interface(IXMLNode)
    ['{82E3BA84-05CF-4174-A6D6-EA502E12025C}']
    { Eigenschaftszugriff }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetailsSDD;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MndtId: UnicodeString read Get_MndtId write Set_MndtId;
    property DtOfSgntr: UnicodeString read Get_DtOfSgntr write Set_DtOfSgntr;
    property AmdmntInd: Boolean read Get_AmdmntInd write Set_AmdmntInd;
    property AmdmntInfDtls: IXMLAmendmentInformationDetailsSDD read Get_AmdmntInfDtls;
    property ElctrncSgntr: UnicodeString read Get_ElctrncSgntr write Set_ElctrncSgntr;
  end;

{ IXMLAmendmentInformationDetailsSDD }

  IXMLAmendmentInformationDetailsSDD = interface(IXMLNode)
    ['{7E13FF74-1F55-419F-A54F-851E1B1F62CE}']
    { Eigenschaftszugriff }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4;
    function Get_OrgnlDbtrAcct: IXMLCashAccountSEPAMandate;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMndtId: UnicodeString read Get_OrgnlMndtId write Set_OrgnlMndtId;
    property OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4 read Get_OrgnlCdtrSchmeId;
    property OrgnlDbtrAcct: IXMLCashAccountSEPAMandate read Get_OrgnlDbtrAcct;
    property OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2 read Get_OrgnlDbtrAgt;
  end;

{ Forward-Deklarationen }

  TXMLDocument00800102 = class;
  TXMLCustomerDirectDebitInitiationV02 = class;
  TXMLGroupHeaderSDD = class;
  TXMLPaymentInstructionInformationSDD = class;
  TXMLPaymentInstructionInformationSDDList = class;
  TXMLPaymentTypeInformationSDD = class;
  TXMLLocalInstrumentSEPA = class;
  TXMLPartyIdentificationSEPA5 = class;
  TXMLPartyIdentificationSEPA3 = class;
  TXMLPartySEPA2 = class;
  TXMLPersonIdentificationSEPA2 = class;
  TXMLRestrictedPersonIdentificationSEPA = class;
  TXMLRestrictedPersonIdentificationSchemeNameSEPA = class;
  TXMLDirectDebitTransactionInformationSDD = class;
  TXMLDirectDebitTransactionInformationSDDList = class;
  TXMLDirectDebitTransactionSDD = class;
  TXMLMandateRelatedInformationSDD = class;
  TXMLAmendmentInformationDetailsSDD = class;
  TXMLPartyIdentificationSEPA4 = class;
  TXMLCashAccountSEPAMandate = class;
  TXMLAccountIdentificationSEPAMandate = class;
  TXMLGenericAccountIdentificationSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA2 = class;
  TXMLFinancialInstitutionIdentificationSEPA2 = class;

{ TXMLDocument00800102 }

  TXMLDocument00800102 = class(TXMLNode, IXMLDocument00800102)
  protected
    { IXMLDocument00800102 }
    function Get_CstmrDrctDbtInitn: IXMLCustomerDirectDebitInitiationV02;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomerDirectDebitInitiationV02 }

  TXMLCustomerDirectDebitInitiationV02 = class(TXMLNode, IXMLCustomerDirectDebitInitiationV02)
  private
    FPmtInf: IXMLPaymentInstructionInformationSDDList;
  protected
    { IXMLCustomerDirectDebitInitiationV02 }
    function Get_GrpHdr: IXMLGroupHeaderSDD;
    function Get_PmtInf: IXMLPaymentInstructionInformationSDDList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGroupHeaderSDD }

  TXMLGroupHeaderSDD = class(TXMLNode, IXMLGroupHeaderSDD)
  protected
    { IXMLGroupHeaderSDD }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_InitgPty: IXMLPartyIdentificationSEPA1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentInstructionInformationSDD }

  TXMLPaymentInstructionInformationSDD = class(TXMLNode, IXMLPaymentInstructionInformationSDD)
  private
    FDrctDbtTxInf: IXMLDirectDebitTransactionInformationSDDList;
  protected
    { IXMLPaymentInstructionInformationSDD }
    function Get_PmtInfId: UnicodeString;
    function Get_PmtMtd: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSDD;
    function Get_ReqdColltnDt: UnicodeString;
    function Get_Cdtr: IXMLPartyIdentificationSEPA5;
    function Get_CdtrAcct: IXMLCashAccountSEPA1;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    function Get_ChrgBr: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
    function Get_DrctDbtTxInf: IXMLDirectDebitTransactionInformationSDDList;
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_PmtMtd(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_ReqdColltnDt(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentInstructionInformationSDDList }

  TXMLPaymentInstructionInformationSDDList = class(TXMLNodeCollection, IXMLPaymentInstructionInformationSDDList)
  protected
    { IXMLPaymentInstructionInformationSDDList }
    function Add: IXMLPaymentInstructionInformationSDD;
    function Insert(const Index: Integer): IXMLPaymentInstructionInformationSDD;

    function Get_Item(Index: Integer): IXMLPaymentInstructionInformationSDD;
  end;

{ TXMLPaymentTypeInformationSDD }

  TXMLPaymentTypeInformationSDD = class(TXMLNode, IXMLPaymentTypeInformationSDD)
  protected
    { IXMLPaymentTypeInformationSDD }
    function Get_SvcLvl: IXMLServiceLevel;
    function Get_LclInstrm: IXMLLocalInstrumentSEPA;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurposeSEPA;
    procedure Set_SeqTp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLocalInstrumentSEPA }

  TXMLLocalInstrumentSEPA = class(TXMLNode, IXMLLocalInstrumentSEPA)
  protected
    { IXMLLocalInstrumentSEPA }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLPartyIdentificationSEPA5 }

  TXMLPartyIdentificationSEPA5 = class(TXMLNode, IXMLPartyIdentificationSEPA5)
  protected
    { IXMLPartyIdentificationSEPA5 }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddressSEPA;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentificationSEPA3 }

  TXMLPartyIdentificationSEPA3 = class(TXMLNode, IXMLPartyIdentificationSEPA3)
  protected
    { IXMLPartyIdentificationSEPA3 }
    function Get_Id: IXMLPartySEPA2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartySEPA2 }

  TXMLPartySEPA2 = class(TXMLNode, IXMLPartySEPA2)
  protected
    { IXMLPartySEPA2 }
    function Get_PrvtId: IXMLPersonIdentificationSEPA2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonIdentificationSEPA2 }

  TXMLPersonIdentificationSEPA2 = class(TXMLNode, IXMLPersonIdentificationSEPA2)
  protected
    { IXMLPersonIdentificationSEPA2 }
    function Get_Othr: IXMLRestrictedPersonIdentificationSEPA;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRestrictedPersonIdentificationSEPA }

  TXMLRestrictedPersonIdentificationSEPA = class(TXMLNode, IXMLRestrictedPersonIdentificationSEPA)
  protected
    { IXMLRestrictedPersonIdentificationSEPA }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLRestrictedPersonIdentificationSchemeNameSEPA;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRestrictedPersonIdentificationSchemeNameSEPA }

  TXMLRestrictedPersonIdentificationSchemeNameSEPA = class(TXMLNode, IXMLRestrictedPersonIdentificationSchemeNameSEPA)
  protected
    { IXMLRestrictedPersonIdentificationSchemeNameSEPA }
    function Get_Prtry: UnicodeString;
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLDirectDebitTransactionInformationSDD }

  TXMLDirectDebitTransactionInformationSDD = class(TXMLNode, IXMLDirectDebitTransactionInformationSDD)
  protected
    { IXMLDirectDebitTransactionInformationSDD }
    function Get_PmtId: IXMLPaymentIdentificationSEPA;
    function Get_PmtTpInf: IXMLPaymentTypeInformationSDD;
    function Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
    function Get_ChrgBr: UnicodeString;
    function Get_DrctDbtTx: IXMLDirectDebitTransactionSDD;
    function Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
    function Get_Dbtr: IXMLPartyIdentificationSEPA2;
    function Get_DbtrAcct: IXMLCashAccountSEPA2;
    function Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
    function Get_Purp: IXMLPurposeSEPA;
    function Get_RmtInf: IXMLRemittanceInformationSEPA1Choice;
    procedure Set_ChrgBr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDirectDebitTransactionInformationSDDList }

  TXMLDirectDebitTransactionInformationSDDList = class(TXMLNodeCollection, IXMLDirectDebitTransactionInformationSDDList)
  protected
    { IXMLDirectDebitTransactionInformationSDDList }
    function Add: IXMLDirectDebitTransactionInformationSDD;
    function Insert(const Index: Integer): IXMLDirectDebitTransactionInformationSDD;

    function Get_Item(Index: Integer): IXMLDirectDebitTransactionInformationSDD;
  end;

{ TXMLDirectDebitTransactionSDD }

  TXMLDirectDebitTransactionSDD = class(TXMLNode, IXMLDirectDebitTransactionSDD)
  protected
    { IXMLDirectDebitTransactionSDD }
    function Get_MndtRltdInf: IXMLMandateRelatedInformationSDD;
    function Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMandateRelatedInformationSDD }

  TXMLMandateRelatedInformationSDD = class(TXMLNode, IXMLMandateRelatedInformationSDD)
  protected
    { IXMLMandateRelatedInformationSDD }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetailsSDD;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmendmentInformationDetailsSDD }

  TXMLAmendmentInformationDetailsSDD = class(TXMLNode, IXMLAmendmentInformationDetailsSDD)
  protected
    { IXMLAmendmentInformationDetailsSDD }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4;
    function Get_OrgnlDbtrAcct: IXMLCashAccountSEPAMandate;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentificationSEPA4 }

  TXMLPartyIdentificationSEPA4 = class(TXMLNode, IXMLPartyIdentificationSEPA4)
  protected
    { IXMLPartyIdentificationSEPA4 }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLPartySEPA2;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccountSEPAMandate }

  TXMLCashAccountSEPAMandate = class(TXMLNode, IXMLCashAccountSEPAMandate)
  protected
    { IXMLCashAccountSEPAMandate }
    function Get_Id: IXMLAccountIdentificationSEPAMandate;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountIdentificationSEPAMandate }

  TXMLAccountIdentificationSEPAMandate = class(TXMLNode, IXMLAccountIdentificationSEPAMandate)
  protected
    { IXMLAccountIdentificationSEPAMandate }
    function Get_IBAN: UnicodeString;
    function Get_Othr: IXMLGenericAccountIdentificationSEPA;
    procedure Set_IBAN(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenericAccountIdentificationSEPA }

  TXMLGenericAccountIdentificationSEPA = class(TXMLNode, IXMLGenericAccountIdentificationSEPA)
  protected
    { IXMLGenericAccountIdentificationSEPA }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLBranchAndFinancialInstitutionIdentificationSEPA2 }

  TXMLBranchAndFinancialInstitutionIdentificationSEPA2 = class(TXMLNode, IXMLBranchAndFinancialInstitutionIdentificationSEPA2)
  protected
    { IXMLBranchAndFinancialInstitutionIdentificationSEPA2 }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFinancialInstitutionIdentificationSEPA2 }

  TXMLFinancialInstitutionIdentificationSEPA2 = class(TXMLNode, IXMLFinancialInstitutionIdentificationSEPA2)
  protected
    { IXMLFinancialInstitutionIdentificationSEPA2 }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
  end;

//************************ camt.052.001.02.xsd **************************

{ Forward-Deklarationen }

  IXMLDocument05200102 = interface;
  IXMLBankToCustomerAccountReportV02 = interface;
  IXMLGroupHeader42 = interface;
  IXMLPagination = interface;
  IXMLAccountReport11 = interface;
  IXMLAccountReport11List = interface;
  IXMLDateTimePeriodDetails = interface;
  IXMLReportingSource1Choice = interface;
  IXMLCashAccount20 = interface;
  IXMLCashAccountType2 = interface;
  IXMLAccountInterest2 = interface;
  IXMLAccountInterest2List = interface;
  IXMLInterestType1Choice = interface;
  IXMLRate3 = interface;
  IXMLRate3List = interface;
  IXMLRateType4Choice = interface;
  IXMLCurrencyAndAmountRange2 = interface;
  IXMLImpliedCurrencyAmountRangeChoice = interface;
  IXMLAmountRangeBoundary1 = interface;
  IXMLFromToAmountRange = interface;
  IXMLCashBalance3 = interface;
  IXMLCashBalance3List = interface;
  IXMLBalanceType12 = interface;
  IXMLBalanceType5Choice = interface;
  IXMLBalanceSubType1Choice = interface;
  IXMLCreditLine2 = interface;
  IXMLDateAndDateTimeChoice = interface;
  IXMLCashBalanceAvailability2 = interface;
  IXMLCashBalanceAvailability2List = interface;
  IXMLCashBalanceAvailabilityDate1 = interface;
  IXMLTotalTransactions2 = interface;
  IXMLNumberAndSumOfTransactions2 = interface;
  IXMLNumberAndSumOfTransactions1 = interface;
  IXMLTotalsPerBankTransactionCode2 = interface;
  IXMLTotalsPerBankTransactionCode2List = interface;
  IXMLBankTransactionCodeStructure4 = interface;
  IXMLBankTransactionCodeStructure5 = interface;
  IXMLBankTransactionCodeStructure6 = interface;
  IXMLProprietaryBankTransactionCodeStructure1 = interface;
  IXMLReportEntry2 = interface;
  IXMLReportEntry2List = interface;
  IXMLMessageIdentification2 = interface;
  IXMLAmountAndCurrencyExchange3 = interface;
  IXMLAmountAndCurrencyExchangeDetails3 = interface;
  IXMLCurrencyExchange5 = interface;
  IXMLAmountAndCurrencyExchangeDetails4 = interface;
  IXMLAmountAndCurrencyExchangeDetails4List = interface;
  IXMLChargesInformation6 = interface;
  IXMLChargesInformation6List = interface;
  IXMLChargeType2Choice = interface;
  IXMLGenericIdentification3 = interface;
  IXMLTaxCharges2 = interface;
  IXMLTechnicalInputChannel1Choice = interface;
  IXMLTransactionInterest2 = interface;
  IXMLTransactionInterest2List = interface;
  IXMLEntryDetails1 = interface;
  IXMLEntryDetails1List = interface;
  IXMLBatchInformation2 = interface;
  IXMLEntryTransaction2 = interface;
  IXMLEntryTransaction2List = interface;
  IXMLTransactionReferences2 = interface;
  IXMLProprietaryReference1 = interface;
  IXMLTransactionParty2 = interface;
  IXMLProprietaryParty2 = interface;
  IXMLProprietaryParty2List = interface;
  IXMLTransactionAgents2 = interface;
  IXMLProprietaryAgent2 = interface;
  IXMLProprietaryAgent2List = interface;
  IXMLPurpose2Choice = interface;
  IXMLRemittanceLocation2 = interface;
  IXMLRemittanceLocation2List = interface;
  IXMLNameAndAddress10 = interface;
  IXMLTransactionDates2 = interface;
  IXMLProprietaryDate2 = interface;
  IXMLProprietaryDate2List = interface;
  IXMLTransactionPrice2Choice = interface;
  IXMLProprietaryPrice2 = interface;
  IXMLProprietaryPrice2List = interface;
  IXMLTransactionQuantities1Choice = interface;
  IXMLTransactionQuantities1ChoiceList = interface;
  IXMLFinancialInstrumentQuantityChoice = interface;
  IXMLProprietaryQuantity1 = interface;
  IXMLSecurityIdentification4Choice = interface;
  IXMLAlternateSecurityIdentification2 = interface;
  IXMLTaxInformation3 = interface;
  IXMLTaxParty1 = interface;
  IXMLTaxParty2 = interface;
  IXMLTaxAuthorisation1 = interface;
  IXMLTaxRecord1 = interface;
  IXMLTaxRecord1List = interface;
  IXMLTaxPeriod1 = interface;
  IXMLDatePeriodDetails = interface;
  IXMLTaxAmount1 = interface;
  IXMLTaxRecordDetails1 = interface;
  IXMLTaxRecordDetails1List = interface;
  IXMLReturnReasonInformation10 = interface;
  IXMLReturnReason5Choice = interface;
  IXMLCorporateAction1 = interface;

{ IXMLDocument05200102 }

  IXMLDocument05200102 = interface(IXMLNode)
    ['{3A8B1B37-E135-4A60-9C04-A70B725C8512}']
    { Eigenschaftszugriff }
    function Get_BkToCstmrAcctRpt: IXMLBankToCustomerAccountReportV02;
    { Methoden & Eigenschaften }
    property BkToCstmrAcctRpt: IXMLBankToCustomerAccountReportV02 read Get_BkToCstmrAcctRpt;
  end;

{ IXMLBankToCustomerAccountReportV02 }

  IXMLBankToCustomerAccountReportV02 = interface(IXMLNode)
    ['{2F9D48D0-FAEC-48B4-8603-63A9CA6C795E}']
    { Eigenschaftszugriff }
    function Get_GrpHdr: IXMLGroupHeader42;
    function Get_Rpt: IXMLAccountReport11List;
    { Methoden & Eigenschaften }
    property GrpHdr: IXMLGroupHeader42 read Get_GrpHdr;
    property Rpt: IXMLAccountReport11List read Get_Rpt;
  end;

{ IXMLGroupHeader42 }

  IXMLGroupHeader42 = interface(IXMLNode)
    ['{32FAA3A1-E3C6-475C-8388-2024D9AC8D0B}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_MsgRcpt: IXMLPartyIdentification32;
    function Get_MsgPgntn: IXMLPagination;
    function Get_AddtlInf: UnicodeString;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_AddtlInf(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property CreDtTm: UnicodeString read Get_CreDtTm write Set_CreDtTm;
    property MsgRcpt: IXMLPartyIdentification32 read Get_MsgRcpt;
    property MsgPgntn: IXMLPagination read Get_MsgPgntn;
    property AddtlInf: UnicodeString read Get_AddtlInf write Set_AddtlInf;
  end;

{ IXMLPagination }

  IXMLPagination = interface(IXMLNode)
    ['{BE1BAADF-9077-4800-9EB3-CB0A7B311127}']
    { Eigenschaftszugriff }
    function Get_PgNb: UnicodeString;
    function Get_LastPgInd: Boolean;
    procedure Set_PgNb(Value: UnicodeString);
    procedure Set_LastPgInd(Value: Boolean);
    { Methoden & Eigenschaften }
    property PgNb: UnicodeString read Get_PgNb write Set_PgNb;
    property LastPgInd: Boolean read Get_LastPgInd write Set_LastPgInd;
  end;

{ IXMLAccountReport11 }

  IXMLAccountReport11 = interface(IXMLNode)
    ['{4AB16E21-DE42-4AA8-903F-41CC2EC56DF8}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_ElctrncSeqNb: UnicodeString;
    function Get_LglSeqNb: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_FrToDt: IXMLDateTimePeriodDetails;
    function Get_CpyDplctInd: UnicodeString;
    function Get_RptgSrc: IXMLReportingSource1Choice;
    function Get_Acct: IXMLCashAccount20;
    function Get_RltdAcct: IXMLCashAccount16;
    function Get_Intrst: IXMLAccountInterest2List;
    function Get_Bal: IXMLCashBalance3List;
    function Get_TxsSummry: IXMLTotalTransactions2;
    function Get_Ntry: IXMLReportEntry2List;
    function Get_AddtlRptInf: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_ElctrncSeqNb(Value: UnicodeString);
    procedure Set_LglSeqNb(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_CpyDplctInd(Value: UnicodeString);
    procedure Set_AddtlRptInf(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property ElctrncSeqNb: UnicodeString read Get_ElctrncSeqNb write Set_ElctrncSeqNb;
    property LglSeqNb: UnicodeString read Get_LglSeqNb write Set_LglSeqNb;
    property CreDtTm: UnicodeString read Get_CreDtTm write Set_CreDtTm;
    property FrToDt: IXMLDateTimePeriodDetails read Get_FrToDt;
    property CpyDplctInd: UnicodeString read Get_CpyDplctInd write Set_CpyDplctInd;
    property RptgSrc: IXMLReportingSource1Choice read Get_RptgSrc;
    property Acct: IXMLCashAccount20 read Get_Acct;
    property RltdAcct: IXMLCashAccount16 read Get_RltdAcct;
    property Intrst: IXMLAccountInterest2List read Get_Intrst;
    property Bal: IXMLCashBalance3List read Get_Bal;
    property TxsSummry: IXMLTotalTransactions2 read Get_TxsSummry;
    property Ntry: IXMLReportEntry2List read Get_Ntry;
    property AddtlRptInf: UnicodeString read Get_AddtlRptInf write Set_AddtlRptInf;
  end;

{ IXMLAccountReport11List }

  IXMLAccountReport11List = interface(IXMLNodeCollection)
    ['{F3EE1CA1-C927-4F61-8EF4-A6A5A9EAF9D7}']
    { Methoden & Eigenschaften }
    function Add: IXMLAccountReport11;
    function Insert(const Index: Integer): IXMLAccountReport11;

    function Get_Item(Index: Integer): IXMLAccountReport11;
    property Items[Index: Integer]: IXMLAccountReport11 read Get_Item; default;
  end;

{ IXMLDateTimePeriodDetails }

  IXMLDateTimePeriodDetails = interface(IXMLNode)
    ['{CB1511FB-4A9D-4E91-9D5A-BEAB20152E7F}']
    { Eigenschaftszugriff }
    function Get_FrDtTm: UnicodeString;
    function Get_ToDtTm: UnicodeString;
    procedure Set_FrDtTm(Value: UnicodeString);
    procedure Set_ToDtTm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property FrDtTm: UnicodeString read Get_FrDtTm write Set_FrDtTm;
    property ToDtTm: UnicodeString read Get_ToDtTm write Set_ToDtTm;
  end;

{ IXMLReportingSource1Choice }

  IXMLReportingSource1Choice = interface(IXMLNode)
    ['{F44412C9-B8F5-4EE5-B304-B3FBCCA8BCF2}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLCashAccount20 }

  IXMLCashAccount20 = interface(IXMLNode)
    ['{F3A6F2C1-114C-453F-AD1B-05F97D3BE892}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentification4Choice;
    function Get_Tp: IXMLCashAccountType2;
    function Get_Ccy: UnicodeString;
    function Get_Nm: UnicodeString;
    function Get_Ownr: IXMLPartyIdentification32;
    function Get_Svcr: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_Ccy(Value: UnicodeString);
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentification4Choice read Get_Id;
    property Tp: IXMLCashAccountType2 read Get_Tp;
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Ownr: IXMLPartyIdentification32 read Get_Ownr;
    property Svcr: IXMLBranchAndFinancialInstitutionIdentification4 read Get_Svcr;
  end;

{ IXMLCashAccountType2 }

  IXMLCashAccountType2 = interface(IXMLNode)
    ['{E63DF45D-3990-4A2A-A921-58FB03812A0D}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLAccountInterest2 }

  IXMLAccountInterest2 = interface(IXMLNode)
    ['{34B63A3E-3D35-41AD-AF32-0645CC02F9EF}']
    { Eigenschaftszugriff }
    function Get_Tp: IXMLInterestType1Choice;
    function Get_Rate: IXMLRate3List;
    function Get_FrToDt: IXMLDateTimePeriodDetails;
    function Get_Rsn: UnicodeString;
    procedure Set_Rsn(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: IXMLInterestType1Choice read Get_Tp;
    property Rate: IXMLRate3List read Get_Rate;
    property FrToDt: IXMLDateTimePeriodDetails read Get_FrToDt;
    property Rsn: UnicodeString read Get_Rsn write Set_Rsn;
  end;

{ IXMLAccountInterest2List }

  IXMLAccountInterest2List = interface(IXMLNodeCollection)
    ['{0C90BD5D-E2A7-4F26-883D-CEAF6B6A5D9B}']
    { Methoden & Eigenschaften }
    function Add: IXMLAccountInterest2;
    function Insert(const Index: Integer): IXMLAccountInterest2;

    function Get_Item(Index: Integer): IXMLAccountInterest2;
    property Items[Index: Integer]: IXMLAccountInterest2 read Get_Item; default;
  end;

{ IXMLInterestType1Choice }

  IXMLInterestType1Choice = interface(IXMLNode)
    ['{6B9C80DC-6B19-41A6-ABC0-09D2573D5C62}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLRate3 }

  IXMLRate3 = interface(IXMLNode)
    ['{467F32DC-162D-497E-9692-7660B32A7BA5}']
    { Eigenschaftszugriff }
    function Get_Tp: IXMLRateType4Choice;
    function Get_VldtyRg: IXMLCurrencyAndAmountRange2;
    { Methoden & Eigenschaften }
    property Tp: IXMLRateType4Choice read Get_Tp;
    property VldtyRg: IXMLCurrencyAndAmountRange2 read Get_VldtyRg;
  end;

{ IXMLRate3List }

  IXMLRate3List = interface(IXMLNodeCollection)
    ['{7C751D14-CD15-4BA6-8C62-CD622D499F47}']
    { Methoden & Eigenschaften }
    function Add: IXMLRate3;
    function Insert(const Index: Integer): IXMLRate3;

    function Get_Item(Index: Integer): IXMLRate3;
    property Items[Index: Integer]: IXMLRate3 read Get_Item; default;
  end;

{ IXMLRateType4Choice }

  IXMLRateType4Choice = interface(IXMLNode)
    ['{104179C4-072F-4A57-B4B7-F603130F307A}']
    { Eigenschaftszugriff }
    function Get_Pctg: UnicodeString;
    function Get_Othr: UnicodeString;
    procedure Set_Pctg(Value: UnicodeString);
    procedure Set_Othr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Pctg: UnicodeString read Get_Pctg write Set_Pctg;
    property Othr: UnicodeString read Get_Othr write Set_Othr;
  end;

{ IXMLCurrencyAndAmountRange2 }

  IXMLCurrencyAndAmountRange2 = interface(IXMLNode)
    ['{EBEE1B54-C876-40CC-9F85-A9D434592594}']
    { Eigenschaftszugriff }
    function Get_Amt: IXMLImpliedCurrencyAmountRangeChoice;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Ccy: UnicodeString;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Amt: IXMLImpliedCurrencyAmountRangeChoice read Get_Amt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLImpliedCurrencyAmountRangeChoice }

  IXMLImpliedCurrencyAmountRangeChoice = interface(IXMLNode)
    ['{34CC5BEA-394F-4EF8-8FD6-37829B327DE8}']
    { Eigenschaftszugriff }
    function Get_FrAmt: IXMLAmountRangeBoundary1;
    function Get_ToAmt: IXMLAmountRangeBoundary1;
    function Get_FrToAmt: IXMLFromToAmountRange;
    function Get_EQAmt: UnicodeString;
    function Get_NEQAmt: UnicodeString;
    procedure Set_EQAmt(Value: UnicodeString);
    procedure Set_NEQAmt(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property FrAmt: IXMLAmountRangeBoundary1 read Get_FrAmt;
    property ToAmt: IXMLAmountRangeBoundary1 read Get_ToAmt;
    property FrToAmt: IXMLFromToAmountRange read Get_FrToAmt;
    property EQAmt: UnicodeString read Get_EQAmt write Set_EQAmt;
    property NEQAmt: UnicodeString read Get_NEQAmt write Set_NEQAmt;
  end;

{ IXMLAmountRangeBoundary1 }

  IXMLAmountRangeBoundary1 = interface(IXMLNode)
    ['{AC1A5AD2-4EA2-4DC7-8E28-09102D4B7733}']
    { Eigenschaftszugriff }
    function Get_BdryAmt: UnicodeString;
    function Get_Incl: Boolean;
    procedure Set_BdryAmt(Value: UnicodeString);
    procedure Set_Incl(Value: Boolean);
    { Methoden & Eigenschaften }
    property BdryAmt: UnicodeString read Get_BdryAmt write Set_BdryAmt;
    property Incl: Boolean read Get_Incl write Set_Incl;
  end;

{ IXMLFromToAmountRange }

  IXMLFromToAmountRange = interface(IXMLNode)
    ['{618A40BC-C84B-4508-AA2B-19D3F31E28DC}']
    { Eigenschaftszugriff }
    function Get_FrAmt: IXMLAmountRangeBoundary1;
    function Get_ToAmt: IXMLAmountRangeBoundary1;
    { Methoden & Eigenschaften }
    property FrAmt: IXMLAmountRangeBoundary1 read Get_FrAmt;
    property ToAmt: IXMLAmountRangeBoundary1 read Get_ToAmt;
  end;

{ IXMLCashBalance3 }

  IXMLCashBalance3 = interface(IXMLNode)
    ['{7216B857-01A8-4457-891E-061BC939EA8B}']
    { Eigenschaftszugriff }
    function Get_Tp: IXMLBalanceType12;
    function Get_CdtLine: IXMLCreditLine2;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Dt: IXMLDateAndDateTimeChoice;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: IXMLBalanceType12 read Get_Tp;
    property CdtLine: IXMLCreditLine2 read Get_CdtLine;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
    property Dt: IXMLDateAndDateTimeChoice read Get_Dt;
    property Avlbty: IXMLCashBalanceAvailability2List read Get_Avlbty;
  end;

{ IXMLCashBalance3List }

  IXMLCashBalance3List = interface(IXMLNodeCollection)
    ['{21AA1FEF-7539-4F1D-BE97-0167B618C4AA}']
    { Methoden & Eigenschaften }
    function Add: IXMLCashBalance3;
    function Insert(const Index: Integer): IXMLCashBalance3;

    function Get_Item(Index: Integer): IXMLCashBalance3;
    property Items[Index: Integer]: IXMLCashBalance3 read Get_Item; default;
  end;

{ IXMLBalanceType12 }

  IXMLBalanceType12 = interface(IXMLNode)
    ['{47FACBAE-5417-42C9-AABD-C06D14C50B07}']
    { Eigenschaftszugriff }
    function Get_CdOrPrtry: IXMLBalanceType5Choice;
    function Get_SubTp: IXMLBalanceSubType1Choice;
    { Methoden & Eigenschaften }
    property CdOrPrtry: IXMLBalanceType5Choice read Get_CdOrPrtry;
    property SubTp: IXMLBalanceSubType1Choice read Get_SubTp;
  end;

{ IXMLBalanceType5Choice }

  IXMLBalanceType5Choice = interface(IXMLNode)
    ['{00DE6832-77FF-4D25-A2D9-9C074CF5F8CC}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLBalanceSubType1Choice }

  IXMLBalanceSubType1Choice = interface(IXMLNode)
    ['{21FD1700-5218-48F6-AA54-44E35EF1464B}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLCreditLine2 }

  IXMLCreditLine2 = interface(IXMLNode)
    ['{B2650EEF-BB6D-4F34-A93A-7D9CCD4F3F15}']
    { Eigenschaftszugriff }
    function Get_Incl: Boolean;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    procedure Set_Incl(Value: Boolean);
    { Methoden & Eigenschaften }
    property Incl: Boolean read Get_Incl write Set_Incl;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
  end;

{ IXMLDateAndDateTimeChoice }

  IXMLDateAndDateTimeChoice = interface(IXMLNode)
    ['{5E77D9F1-AB5B-4E01-80A1-1F730B6C09BC}']
    { Eigenschaftszugriff }
    function Get_Dt: UnicodeString;
    function Get_DtTm: UnicodeString;
    procedure Set_Dt(Value: UnicodeString);
    procedure Set_DtTm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Dt: UnicodeString read Get_Dt write Set_Dt;
    property DtTm: UnicodeString read Get_DtTm write Set_DtTm;
  end;

{ IXMLCashBalanceAvailability2 }

  IXMLCashBalanceAvailability2 = interface(IXMLNode)
    ['{3F2DAE0E-532C-4648-98E5-86E429C406AD}']
    { Eigenschaftszugriff }
    function Get_Dt: IXMLCashBalanceAvailabilityDate1;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Dt: IXMLCashBalanceAvailabilityDate1 read Get_Dt;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
  end;

{ IXMLCashBalanceAvailability2List }

  IXMLCashBalanceAvailability2List = interface(IXMLNodeCollection)
    ['{5DA7D1EC-CAD3-4FB6-BD05-D76FD8E0FEB2}']
    { Methoden & Eigenschaften }
    function Add: IXMLCashBalanceAvailability2;
    function Insert(const Index: Integer): IXMLCashBalanceAvailability2;

    function Get_Item(Index: Integer): IXMLCashBalanceAvailability2;
    property Items[Index: Integer]: IXMLCashBalanceAvailability2 read Get_Item; default;
  end;

{ IXMLCashBalanceAvailabilityDate1 }

  IXMLCashBalanceAvailabilityDate1 = interface(IXMLNode)
    ['{318E4DC7-D3B3-443D-9733-73431CBEFBF2}']
    { Eigenschaftszugriff }
    function Get_NbOfDays: UnicodeString;
    function Get_ActlDt: UnicodeString;
    procedure Set_NbOfDays(Value: UnicodeString);
    procedure Set_ActlDt(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property NbOfDays: UnicodeString read Get_NbOfDays write Set_NbOfDays;
    property ActlDt: UnicodeString read Get_ActlDt write Set_ActlDt;
  end;

{ IXMLTotalTransactions2 }

  IXMLTotalTransactions2 = interface(IXMLNode)
    ['{40B65877-9FB2-4289-A70C-D77F261C46EF}']
    { Eigenschaftszugriff }
    function Get_TtlNtries: IXMLNumberAndSumOfTransactions2;
    function Get_TtlCdtNtries: IXMLNumberAndSumOfTransactions1;
    function Get_TtlDbtNtries: IXMLNumberAndSumOfTransactions1;
    function Get_TtlNtriesPerBkTxCd: IXMLTotalsPerBankTransactionCode2List;
    { Methoden & Eigenschaften }
    property TtlNtries: IXMLNumberAndSumOfTransactions2 read Get_TtlNtries;
    property TtlCdtNtries: IXMLNumberAndSumOfTransactions1 read Get_TtlCdtNtries;
    property TtlDbtNtries: IXMLNumberAndSumOfTransactions1 read Get_TtlDbtNtries;
    property TtlNtriesPerBkTxCd: IXMLTotalsPerBankTransactionCode2List read Get_TtlNtriesPerBkTxCd;
  end;

{ IXMLNumberAndSumOfTransactions2 }

  IXMLNumberAndSumOfTransactions2 = interface(IXMLNode)
    ['{9A93FA0C-6325-46B0-B840-A85446AD1485}']
    { Eigenschaftszugriff }
    function Get_NbOfNtries: UnicodeString;
    function Get_Sum: UnicodeString;
    function Get_TtlNetNtryAmt: UnicodeString;
    function Get_CdtDbtInd: UnicodeString;
    procedure Set_NbOfNtries(Value: UnicodeString);
    procedure Set_Sum(Value: UnicodeString);
    procedure Set_TtlNetNtryAmt(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property NbOfNtries: UnicodeString read Get_NbOfNtries write Set_NbOfNtries;
    property Sum: UnicodeString read Get_Sum write Set_Sum;
    property TtlNetNtryAmt: UnicodeString read Get_TtlNetNtryAmt write Set_TtlNetNtryAmt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
  end;

{ IXMLNumberAndSumOfTransactions1 }

  IXMLNumberAndSumOfTransactions1 = interface(IXMLNode)
    ['{51CD75AF-B059-462D-911D-0B9AABDA1E30}']
    { Eigenschaftszugriff }
    function Get_NbOfNtries: UnicodeString;
    function Get_Sum: UnicodeString;
    procedure Set_NbOfNtries(Value: UnicodeString);
    procedure Set_Sum(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property NbOfNtries: UnicodeString read Get_NbOfNtries write Set_NbOfNtries;
    property Sum: UnicodeString read Get_Sum write Set_Sum;
  end;

{ IXMLTotalsPerBankTransactionCode2 }

  IXMLTotalsPerBankTransactionCode2 = interface(IXMLNode)
    ['{85604C40-6DDE-4321-A86C-A09E22C5E724}']
    { Eigenschaftszugriff }
    function Get_NbOfNtries: UnicodeString;
    function Get_Sum: UnicodeString;
    function Get_TtlNetNtryAmt: UnicodeString;
    function Get_CdtDbtInd: UnicodeString;
    function Get_FcstInd: Boolean;
    function Get_BkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    procedure Set_NbOfNtries(Value: UnicodeString);
    procedure Set_Sum(Value: UnicodeString);
    procedure Set_TtlNetNtryAmt(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_FcstInd(Value: Boolean);
    { Methoden & Eigenschaften }
    property NbOfNtries: UnicodeString read Get_NbOfNtries write Set_NbOfNtries;
    property Sum: UnicodeString read Get_Sum write Set_Sum;
    property TtlNetNtryAmt: UnicodeString read Get_TtlNetNtryAmt write Set_TtlNetNtryAmt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
    property FcstInd: Boolean read Get_FcstInd write Set_FcstInd;
    property BkTxCd: IXMLBankTransactionCodeStructure4 read Get_BkTxCd;
    property Avlbty: IXMLCashBalanceAvailability2List read Get_Avlbty;
  end;

{ IXMLTotalsPerBankTransactionCode2List }

  IXMLTotalsPerBankTransactionCode2List = interface(IXMLNodeCollection)
    ['{ABF007E4-807E-4E54-AB69-73F7868557AF}']
    { Methoden & Eigenschaften }
    function Add: IXMLTotalsPerBankTransactionCode2;
    function Insert(const Index: Integer): IXMLTotalsPerBankTransactionCode2;

    function Get_Item(Index: Integer): IXMLTotalsPerBankTransactionCode2;
    property Items[Index: Integer]: IXMLTotalsPerBankTransactionCode2 read Get_Item; default;
  end;

{ IXMLBankTransactionCodeStructure4 }

  IXMLBankTransactionCodeStructure4 = interface(IXMLNode)
    ['{A58E45A0-D4E5-45B0-B3CE-18CB6E29C8A0}']
    { Eigenschaftszugriff }
    function Get_Domn: IXMLBankTransactionCodeStructure5;
    function Get_Prtry: IXMLProprietaryBankTransactionCodeStructure1;
    { Methoden & Eigenschaften }
    property Domn: IXMLBankTransactionCodeStructure5 read Get_Domn;
    property Prtry: IXMLProprietaryBankTransactionCodeStructure1 read Get_Prtry;
  end;

{ IXMLBankTransactionCodeStructure5 }

  IXMLBankTransactionCodeStructure5 = interface(IXMLNode)
    ['{706C6105-1578-4C90-AB52-8D69725C9E1A}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Fmly: IXMLBankTransactionCodeStructure6;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Fmly: IXMLBankTransactionCodeStructure6 read Get_Fmly;
  end;

{ IXMLBankTransactionCodeStructure6 }

  IXMLBankTransactionCodeStructure6 = interface(IXMLNode)
    ['{EFDBD50A-2800-4B16-B233-158366B2DC17}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_SubFmlyCd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_SubFmlyCd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property SubFmlyCd: UnicodeString read Get_SubFmlyCd write Set_SubFmlyCd;
  end;

{ IXMLProprietaryBankTransactionCodeStructure1 }

  IXMLProprietaryBankTransactionCodeStructure1 = interface(IXMLNode)
    ['{44786555-705F-4FD4-A7BD-864AA4DF99A6}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Issr: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Issr: UnicodeString read Get_Issr write Set_Issr;
  end;

{ IXMLReportEntry2 }

  IXMLReportEntry2 = interface(IXMLNode)
    ['{37362520-96A8-4806-8DCC-88F8C03DA5A4}']
    { Eigenschaftszugriff }
    function Get_NtryRef: UnicodeString;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_RvslInd: Boolean;
    function Get_Sts: UnicodeString;
    function Get_BookgDt: IXMLDateAndDateTimeChoice;
    function Get_ValDt: IXMLDateAndDateTimeChoice;
    function Get_AcctSvcrRef: UnicodeString;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    function Get_BkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_ComssnWvrInd: Boolean;
    function Get_AddtlInfInd: IXMLMessageIdentification2;
    function Get_AmtDtls: IXMLAmountAndCurrencyExchange3;
    function Get_Chrgs: IXMLChargesInformation6List;
    function Get_TechInptChanl: IXMLTechnicalInputChannel1Choice;
    function Get_Intrst: IXMLTransactionInterest2List;
    function Get_NtryDtls: IXMLEntryDetails1List;
    function Get_AddtlNtryInf: UnicodeString;
    procedure Set_NtryRef(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_RvslInd(Value: Boolean);
    procedure Set_Sts(Value: UnicodeString);
    procedure Set_AcctSvcrRef(Value: UnicodeString);
    procedure Set_ComssnWvrInd(Value: Boolean);
    procedure Set_AddtlNtryInf(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property NtryRef: UnicodeString read Get_NtryRef write Set_NtryRef;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
    property RvslInd: Boolean read Get_RvslInd write Set_RvslInd;
    property Sts: UnicodeString read Get_Sts write Set_Sts;
    property BookgDt: IXMLDateAndDateTimeChoice read Get_BookgDt;
    property ValDt: IXMLDateAndDateTimeChoice read Get_ValDt;
    property AcctSvcrRef: UnicodeString read Get_AcctSvcrRef write Set_AcctSvcrRef;
    property Avlbty: IXMLCashBalanceAvailability2List read Get_Avlbty;
    property BkTxCd: IXMLBankTransactionCodeStructure4 read Get_BkTxCd;
    property ComssnWvrInd: Boolean read Get_ComssnWvrInd write Set_ComssnWvrInd;
    property AddtlInfInd: IXMLMessageIdentification2 read Get_AddtlInfInd;
    property AmtDtls: IXMLAmountAndCurrencyExchange3 read Get_AmtDtls;
    property Chrgs: IXMLChargesInformation6List read Get_Chrgs;
    property TechInptChanl: IXMLTechnicalInputChannel1Choice read Get_TechInptChanl;
    property Intrst: IXMLTransactionInterest2List read Get_Intrst;
    property NtryDtls: IXMLEntryDetails1List read Get_NtryDtls;
    property AddtlNtryInf: UnicodeString read Get_AddtlNtryInf write Set_AddtlNtryInf;
  end;

{ IXMLReportEntry2List }

  IXMLReportEntry2List = interface(IXMLNodeCollection)
    ['{BDC26ECA-7D41-4A60-9849-E3EC125583F1}']
    { Methoden & Eigenschaften }
    function Add: IXMLReportEntry2;
    function Insert(const Index: Integer): IXMLReportEntry2;

    function Get_Item(Index: Integer): IXMLReportEntry2;
    property Items[Index: Integer]: IXMLReportEntry2 read Get_Item; default;
  end;

{ IXMLMessageIdentification2 }

  IXMLMessageIdentification2 = interface(IXMLNode)
    ['{09FE859E-C6DB-4A32-9843-F11E867E5E0B}']
    { Eigenschaftszugriff }
    function Get_MsgNmId: UnicodeString;
    function Get_MsgId: UnicodeString;
    procedure Set_MsgNmId(Value: UnicodeString);
    procedure Set_MsgId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgNmId: UnicodeString read Get_MsgNmId write Set_MsgNmId;
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
  end;

{ IXMLAmountAndCurrencyExchange3 }

  IXMLAmountAndCurrencyExchange3 = interface(IXMLNode)
    ['{6D1B19C3-C004-46F4-98C5-3037C60349F3}']
    { Eigenschaftszugriff }
    function Get_InstdAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_TxAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_CntrValAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_AnncdPstngAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_PrtryAmt: IXMLAmountAndCurrencyExchangeDetails4List;
    { Methoden & Eigenschaften }
    property InstdAmt: IXMLAmountAndCurrencyExchangeDetails3 read Get_InstdAmt;
    property TxAmt: IXMLAmountAndCurrencyExchangeDetails3 read Get_TxAmt;
    property CntrValAmt: IXMLAmountAndCurrencyExchangeDetails3 read Get_CntrValAmt;
    property AnncdPstngAmt: IXMLAmountAndCurrencyExchangeDetails3 read Get_AnncdPstngAmt;
    property PrtryAmt: IXMLAmountAndCurrencyExchangeDetails4List read Get_PrtryAmt;
  end;

{ IXMLAmountAndCurrencyExchangeDetails3 }

  IXMLAmountAndCurrencyExchangeDetails3 = interface(IXMLNode)
    ['{C05D26C7-000D-45BD-A461-7154BF14CBD2}']
    { Eigenschaftszugriff }
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CcyXchg: IXMLCurrencyExchange5;
    { Methoden & Eigenschaften }
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CcyXchg: IXMLCurrencyExchange5 read Get_CcyXchg;
  end;

{ IXMLCurrencyExchange5 }

  IXMLCurrencyExchange5 = interface(IXMLNode)
    ['{8E5A3BF7-2885-4848-9992-58EA73A6F6BC}']
    { Eigenschaftszugriff }
    function Get_SrcCcy: UnicodeString;
    function Get_TrgtCcy: UnicodeString;
    function Get_UnitCcy: UnicodeString;
    function Get_XchgRate: UnicodeString;
    function Get_CtrctId: UnicodeString;
    function Get_QtnDt: UnicodeString;
    procedure Set_SrcCcy(Value: UnicodeString);
    procedure Set_TrgtCcy(Value: UnicodeString);
    procedure Set_UnitCcy(Value: UnicodeString);
    procedure Set_XchgRate(Value: UnicodeString);
    procedure Set_CtrctId(Value: UnicodeString);
    procedure Set_QtnDt(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property SrcCcy: UnicodeString read Get_SrcCcy write Set_SrcCcy;
    property TrgtCcy: UnicodeString read Get_TrgtCcy write Set_TrgtCcy;
    property UnitCcy: UnicodeString read Get_UnitCcy write Set_UnitCcy;
    property XchgRate: UnicodeString read Get_XchgRate write Set_XchgRate;
    property CtrctId: UnicodeString read Get_CtrctId write Set_CtrctId;
    property QtnDt: UnicodeString read Get_QtnDt write Set_QtnDt;
  end;

{ IXMLAmountAndCurrencyExchangeDetails4 }

  IXMLAmountAndCurrencyExchangeDetails4 = interface(IXMLNode)
    ['{55F3C425-5836-4952-9444-5ADDA303F61A}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CcyXchg: IXMLCurrencyExchange5;
    procedure Set_Tp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CcyXchg: IXMLCurrencyExchange5 read Get_CcyXchg;
  end;

{ IXMLAmountAndCurrencyExchangeDetails4List }

  IXMLAmountAndCurrencyExchangeDetails4List = interface(IXMLNodeCollection)
    ['{DA916838-9AEA-4E03-A1C0-7605156A4F93}']
    { Methoden & Eigenschaften }
    function Add: IXMLAmountAndCurrencyExchangeDetails4;
    function Insert(const Index: Integer): IXMLAmountAndCurrencyExchangeDetails4;

    function Get_Item(Index: Integer): IXMLAmountAndCurrencyExchangeDetails4;
    property Items[Index: Integer]: IXMLAmountAndCurrencyExchangeDetails4 read Get_Item; default;
  end;

{ IXMLChargesInformation6 }

  IXMLChargesInformation6 = interface(IXMLNode)
    ['{A65375BA-B330-4D6F-8F1B-51D74EBB2100}']
    { Eigenschaftszugriff }
    function Get_TtlChrgsAndTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Tp: IXMLChargeType2Choice;
    function Get_Rate: UnicodeString;
    function Get_Br: UnicodeString;
    function Get_Pty: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Tax: IXMLTaxCharges2;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_Rate(Value: UnicodeString);
    procedure Set_Br(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property TtlChrgsAndTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_TtlChrgsAndTaxAmt;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
    property Tp: IXMLChargeType2Choice read Get_Tp;
    property Rate: UnicodeString read Get_Rate write Set_Rate;
    property Br: UnicodeString read Get_Br write Set_Br;
    property Pty: IXMLBranchAndFinancialInstitutionIdentification4 read Get_Pty;
    property Tax: IXMLTaxCharges2 read Get_Tax;
  end;

{ IXMLChargesInformation6List }

  IXMLChargesInformation6List = interface(IXMLNodeCollection)
    ['{10B32FA3-8C67-4BDB-AF1C-D75AFE45C1B6}']
    { Methoden & Eigenschaften }
    function Add: IXMLChargesInformation6;
    function Insert(const Index: Integer): IXMLChargesInformation6;

    function Get_Item(Index: Integer): IXMLChargesInformation6;
    property Items[Index: Integer]: IXMLChargesInformation6 read Get_Item; default;
  end;

{ IXMLChargeType2Choice }

  IXMLChargeType2Choice = interface(IXMLNode)
    ['{29F9E3AA-8BC6-4C88-AB36-0383FD84CD8C}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: IXMLGenericIdentification3;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: IXMLGenericIdentification3 read Get_Prtry;
  end;

{ IXMLGenericIdentification3 }

  IXMLGenericIdentification3 = interface(IXMLNode)
    ['{261FCE7E-2FD6-4EE3-AB61-4325FE45B8DE}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_Issr: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property Issr: UnicodeString read Get_Issr write Set_Issr;
  end;

{ IXMLTaxCharges2 }

  IXMLTaxCharges2 = interface(IXMLNode)
    ['{0F783D20-2EC4-4D55-B232-ACA457F4B5DE}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_Rate: UnicodeString;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Rate(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property Rate: UnicodeString read Get_Rate write Set_Rate;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
  end;

{ IXMLTechnicalInputChannel1Choice }

  IXMLTechnicalInputChannel1Choice = interface(IXMLNode)
    ['{DB64FA7B-23B4-4539-9462-DF6B7E3E2254}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLTransactionInterest2 }

  IXMLTransactionInterest2 = interface(IXMLNode)
    ['{5044D125-E2A3-475F-9038-109F624D6FDF}']
    { Eigenschaftszugriff }
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Tp: IXMLInterestType1Choice;
    function Get_Rate: IXMLRate3List;
    function Get_FrToDt: IXMLDateTimePeriodDetails;
    function Get_Rsn: UnicodeString;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_Rsn(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
    property Tp: IXMLInterestType1Choice read Get_Tp;
    property Rate: IXMLRate3List read Get_Rate;
    property FrToDt: IXMLDateTimePeriodDetails read Get_FrToDt;
    property Rsn: UnicodeString read Get_Rsn write Set_Rsn;
  end;

{ IXMLTransactionInterest2List }

  IXMLTransactionInterest2List = interface(IXMLNodeCollection)
    ['{A3D23B38-0A9F-4ADD-B331-E75006393D54}']
    { Methoden & Eigenschaften }
    function Add: IXMLTransactionInterest2;
    function Insert(const Index: Integer): IXMLTransactionInterest2;

    function Get_Item(Index: Integer): IXMLTransactionInterest2;
    property Items[Index: Integer]: IXMLTransactionInterest2 read Get_Item; default;
  end;

{ IXMLEntryDetails1 }

  IXMLEntryDetails1 = interface(IXMLNode)
    ['{AD893DEB-64EC-491A-9EBB-E080F656545E}']
    { Eigenschaftszugriff }
    function Get_Btch: IXMLBatchInformation2;
    function Get_TxDtls: IXMLEntryTransaction2List;
    { Methoden & Eigenschaften }
    property Btch: IXMLBatchInformation2 read Get_Btch;
    property TxDtls: IXMLEntryTransaction2List read Get_TxDtls;
  end;

{ IXMLEntryDetails1List }

  IXMLEntryDetails1List = interface(IXMLNodeCollection)
    ['{A221C5BB-5E54-4BB3-B954-263AD7E330A4}']
    { Methoden & Eigenschaften }
    function Add: IXMLEntryDetails1;
    function Insert(const Index: Integer): IXMLEntryDetails1;

    function Get_Item(Index: Integer): IXMLEntryDetails1;
    property Items[Index: Integer]: IXMLEntryDetails1 read Get_Item; default;
  end;

{ IXMLBatchInformation2 }

  IXMLBatchInformation2 = interface(IXMLNode)
    ['{78EDE4DA-BC3C-4D34-832E-0854FA2FDB86}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_PmtInfId: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property PmtInfId: UnicodeString read Get_PmtInfId write Set_PmtInfId;
    property NbOfTxs: UnicodeString read Get_NbOfTxs write Set_NbOfTxs;
    property TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_TtlAmt;
    property CdtDbtInd: UnicodeString read Get_CdtDbtInd write Set_CdtDbtInd;
  end;

{ IXMLEntryTransaction2 }

  IXMLEntryTransaction2 = interface(IXMLNode)
    ['{3DA931DD-4827-4970-B834-6F94F9C4DF33}']
    { Eigenschaftszugriff }
    function Get_Refs: IXMLTransactionReferences2;
    function Get_AmtDtls: IXMLAmountAndCurrencyExchange3;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    function Get_BkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_Chrgs: IXMLChargesInformation6List;
    function Get_Intrst: IXMLTransactionInterest2List;
    function Get_RltdPties: IXMLTransactionParty2;
    function Get_RltdAgts: IXMLTransactionAgents2;
    function Get_Purp: IXMLPurpose2Choice;
    function Get_RltdRmtInf: IXMLRemittanceLocation2List;
    function Get_RmtInf: IXMLRemittanceInformation5;
    function Get_RltdDts: IXMLTransactionDates2;
    function Get_RltdPric: IXMLTransactionPrice2Choice;
    function Get_RltdQties: IXMLTransactionQuantities1ChoiceList;
    function Get_FinInstrmId: IXMLSecurityIdentification4Choice;
    function Get_Tax: IXMLTaxInformation3;
    function Get_RtrInf: IXMLReturnReasonInformation10;
    function Get_CorpActn: IXMLCorporateAction1;
    function Get_SfkpgAcct: IXMLCashAccount16;
    function Get_AddtlTxInf: UnicodeString;
    procedure Set_AddtlTxInf(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Refs: IXMLTransactionReferences2 read Get_Refs;
    property AmtDtls: IXMLAmountAndCurrencyExchange3 read Get_AmtDtls;
    property Avlbty: IXMLCashBalanceAvailability2List read Get_Avlbty;
    property BkTxCd: IXMLBankTransactionCodeStructure4 read Get_BkTxCd;
    property Chrgs: IXMLChargesInformation6List read Get_Chrgs;
    property Intrst: IXMLTransactionInterest2List read Get_Intrst;
    property RltdPties: IXMLTransactionParty2 read Get_RltdPties;
    property RltdAgts: IXMLTransactionAgents2 read Get_RltdAgts;
    property Purp: IXMLPurpose2Choice read Get_Purp;
    property RltdRmtInf: IXMLRemittanceLocation2List read Get_RltdRmtInf;
    property RmtInf: IXMLRemittanceInformation5 read Get_RmtInf;
    property RltdDts: IXMLTransactionDates2 read Get_RltdDts;
    property RltdPric: IXMLTransactionPrice2Choice read Get_RltdPric;
    property RltdQties: IXMLTransactionQuantities1ChoiceList read Get_RltdQties;
    property FinInstrmId: IXMLSecurityIdentification4Choice read Get_FinInstrmId;
    property Tax: IXMLTaxInformation3 read Get_Tax;
    property RtrInf: IXMLReturnReasonInformation10 read Get_RtrInf;
    property CorpActn: IXMLCorporateAction1 read Get_CorpActn;
    property SfkpgAcct: IXMLCashAccount16 read Get_SfkpgAcct;
    property AddtlTxInf: UnicodeString read Get_AddtlTxInf write Set_AddtlTxInf;
  end;

{ IXMLEntryTransaction2List }

  IXMLEntryTransaction2List = interface(IXMLNodeCollection)
    ['{E22EB472-8C90-4218-ADCF-DC9629702618}']
    { Methoden & Eigenschaften }
    function Add: IXMLEntryTransaction2;
    function Insert(const Index: Integer): IXMLEntryTransaction2;

    function Get_Item(Index: Integer): IXMLEntryTransaction2;
    property Items[Index: Integer]: IXMLEntryTransaction2 read Get_Item; default;
  end;

{ IXMLTransactionReferences2 }

  IXMLTransactionReferences2 = interface(IXMLNode)
    ['{914746CA-D08F-4BE0-AFAD-43F79C49FD58}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_AcctSvcrRef: UnicodeString;
    function Get_PmtInfId: UnicodeString;
    function Get_InstrId: UnicodeString;
    function Get_EndToEndId: UnicodeString;
    function Get_TxId: UnicodeString;
    function Get_MndtId: UnicodeString;
    function Get_ChqNb: UnicodeString;
    function Get_ClrSysRef: UnicodeString;
    function Get_Prtry: IXMLProprietaryReference1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_AcctSvcrRef(Value: UnicodeString);
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_InstrId(Value: UnicodeString);
    procedure Set_EndToEndId(Value: UnicodeString);
    procedure Set_TxId(Value: UnicodeString);
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_ChqNb(Value: UnicodeString);
    procedure Set_ClrSysRef(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MsgId: UnicodeString read Get_MsgId write Set_MsgId;
    property AcctSvcrRef: UnicodeString read Get_AcctSvcrRef write Set_AcctSvcrRef;
    property PmtInfId: UnicodeString read Get_PmtInfId write Set_PmtInfId;
    property InstrId: UnicodeString read Get_InstrId write Set_InstrId;
    property EndToEndId: UnicodeString read Get_EndToEndId write Set_EndToEndId;
    property TxId: UnicodeString read Get_TxId write Set_TxId;
    property MndtId: UnicodeString read Get_MndtId write Set_MndtId;
    property ChqNb: UnicodeString read Get_ChqNb write Set_ChqNb;
    property ClrSysRef: UnicodeString read Get_ClrSysRef write Set_ClrSysRef;
    property Prtry: IXMLProprietaryReference1 read Get_Prtry;
  end;

{ IXMLProprietaryReference1 }

  IXMLProprietaryReference1 = interface(IXMLNode)
    ['{BF893B6A-2FFF-4B1A-8FFE-0109E913E4D6}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Ref: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Ref(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Ref: UnicodeString read Get_Ref write Set_Ref;
  end;

{ IXMLTransactionParty2 }

  IXMLTransactionParty2 = interface(IXMLNode)
    ['{42E0EB75-B3EC-4582-A001-FAE2065695D8}']
    { Eigenschaftszugriff }
    function Get_InitgPty: IXMLPartyIdentification32;
    function Get_Dbtr: IXMLPartyIdentification32;
    function Get_DbtrAcct: IXMLCashAccount16;
    function Get_UltmtDbtr: IXMLPartyIdentification32;
    function Get_Cdtr: IXMLPartyIdentification32;
    function Get_CdtrAcct: IXMLCashAccount16;
    function Get_UltmtCdtr: IXMLPartyIdentification32;
    function Get_TradgPty: IXMLPartyIdentification32;
    function Get_Prtry: IXMLProprietaryParty2List;
    { Methoden & Eigenschaften }
    property InitgPty: IXMLPartyIdentification32 read Get_InitgPty;
    property Dbtr: IXMLPartyIdentification32 read Get_Dbtr;
    property DbtrAcct: IXMLCashAccount16 read Get_DbtrAcct;
    property UltmtDbtr: IXMLPartyIdentification32 read Get_UltmtDbtr;
    property Cdtr: IXMLPartyIdentification32 read Get_Cdtr;
    property CdtrAcct: IXMLCashAccount16 read Get_CdtrAcct;
    property UltmtCdtr: IXMLPartyIdentification32 read Get_UltmtCdtr;
    property TradgPty: IXMLPartyIdentification32 read Get_TradgPty;
    property Prtry: IXMLProprietaryParty2List read Get_Prtry;
  end;

{ IXMLProprietaryParty2 }

  IXMLProprietaryParty2 = interface(IXMLNode)
    ['{3E166285-8A4C-4B17-959A-4CC17F077D92}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Pty: IXMLPartyIdentification32;
    procedure Set_Tp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Pty: IXMLPartyIdentification32 read Get_Pty;
  end;

{ IXMLProprietaryParty2List }

  IXMLProprietaryParty2List = interface(IXMLNodeCollection)
    ['{BFA90DFA-9ABA-4DE7-8BC0-99867ED61334}']
    { Methoden & Eigenschaften }
    function Add: IXMLProprietaryParty2;
    function Insert(const Index: Integer): IXMLProprietaryParty2;

    function Get_Item(Index: Integer): IXMLProprietaryParty2;
    property Items[Index: Integer]: IXMLProprietaryParty2 read Get_Item; default;
  end;

{ IXMLTransactionAgents2 }

  IXMLTransactionAgents2 = interface(IXMLNode)
    ['{77B9B205-BE27-4EE2-8893-18629C62D7B3}']
    { Eigenschaftszugriff }
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IntrmyAgt1: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IntrmyAgt2: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IntrmyAgt3: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_RcvgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_DlvrgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IssgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_SttlmPlc: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Prtry: IXMLProprietaryAgent2List;
    { Methoden & Eigenschaften }
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_DbtrAgt;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_CdtrAgt;
    property IntrmyAgt1: IXMLBranchAndFinancialInstitutionIdentification4 read Get_IntrmyAgt1;
    property IntrmyAgt2: IXMLBranchAndFinancialInstitutionIdentification4 read Get_IntrmyAgt2;
    property IntrmyAgt3: IXMLBranchAndFinancialInstitutionIdentification4 read Get_IntrmyAgt3;
    property RcvgAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_RcvgAgt;
    property DlvrgAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_DlvrgAgt;
    property IssgAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_IssgAgt;
    property SttlmPlc: IXMLBranchAndFinancialInstitutionIdentification4 read Get_SttlmPlc;
    property Prtry: IXMLProprietaryAgent2List read Get_Prtry;
  end;

{ IXMLProprietaryAgent2 }

  IXMLProprietaryAgent2 = interface(IXMLNode)
    ['{E2B79735-B0D9-4B37-9460-6586B4A6649C}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Agt: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_Tp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Agt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_Agt;
  end;

{ IXMLProprietaryAgent2List }

  IXMLProprietaryAgent2List = interface(IXMLNodeCollection)
    ['{18319275-27D1-4AA0-9E19-C6CD9B43AB1D}']
    { Methoden & Eigenschaften }
    function Add: IXMLProprietaryAgent2;
    function Insert(const Index: Integer): IXMLProprietaryAgent2;

    function Get_Item(Index: Integer): IXMLProprietaryAgent2;
    property Items[Index: Integer]: IXMLProprietaryAgent2 read Get_Item; default;
  end;

{ IXMLPurpose2Choice }

  IXMLPurpose2Choice = interface(IXMLNode)
    ['{25038E60-BB35-4B5D-AA68-FC6C788646F7}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLRemittanceLocation2 }

  IXMLRemittanceLocation2 = interface(IXMLNode)
    ['{1E6425B6-EEC2-4E81-88B1-EC9EF4B3DF61}']
    { Eigenschaftszugriff }
    function Get_RmtId: UnicodeString;
    function Get_RmtLctnMtd: UnicodeString;
    function Get_RmtLctnElctrncAdr: UnicodeString;
    function Get_RmtLctnPstlAdr: IXMLNameAndAddress10;
    procedure Set_RmtId(Value: UnicodeString);
    procedure Set_RmtLctnMtd(Value: UnicodeString);
    procedure Set_RmtLctnElctrncAdr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property RmtId: UnicodeString read Get_RmtId write Set_RmtId;
    property RmtLctnMtd: UnicodeString read Get_RmtLctnMtd write Set_RmtLctnMtd;
    property RmtLctnElctrncAdr: UnicodeString read Get_RmtLctnElctrncAdr write Set_RmtLctnElctrncAdr;
    property RmtLctnPstlAdr: IXMLNameAndAddress10 read Get_RmtLctnPstlAdr;
  end;

{ IXMLRemittanceLocation2List }

  IXMLRemittanceLocation2List = interface(IXMLNodeCollection)
    ['{644F47FA-507E-48AE-AF6E-0F1997C78F6E}']
    { Methoden & Eigenschaften }
    function Add: IXMLRemittanceLocation2;
    function Insert(const Index: Integer): IXMLRemittanceLocation2;

    function Get_Item(Index: Integer): IXMLRemittanceLocation2;
    property Items[Index: Integer]: IXMLRemittanceLocation2 read Get_Item; default;
  end;

{ IXMLNameAndAddress10 }

  IXMLNameAndAddress10 = interface(IXMLNode)
    ['{BA70CFA4-4690-49AA-9594-8A3EDD120E69}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Adr: IXMLPostalAddress6;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Adr: IXMLPostalAddress6 read Get_Adr;
  end;

{ IXMLTransactionDates2 }

  IXMLTransactionDates2 = interface(IXMLNode)
    ['{BA66639F-023A-4364-80F2-6958237D162E}']
    { Eigenschaftszugriff }
    function Get_AccptncDtTm: UnicodeString;
    function Get_TradActvtyCtrctlSttlmDt: UnicodeString;
    function Get_TradDt: UnicodeString;
    function Get_IntrBkSttlmDt: UnicodeString;
    function Get_StartDt: UnicodeString;
    function Get_EndDt: UnicodeString;
    function Get_TxDtTm: UnicodeString;
    function Get_Prtry: IXMLProprietaryDate2List;
    procedure Set_AccptncDtTm(Value: UnicodeString);
    procedure Set_TradActvtyCtrctlSttlmDt(Value: UnicodeString);
    procedure Set_TradDt(Value: UnicodeString);
    procedure Set_IntrBkSttlmDt(Value: UnicodeString);
    procedure Set_StartDt(Value: UnicodeString);
    procedure Set_EndDt(Value: UnicodeString);
    procedure Set_TxDtTm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property AccptncDtTm: UnicodeString read Get_AccptncDtTm write Set_AccptncDtTm;
    property TradActvtyCtrctlSttlmDt: UnicodeString read Get_TradActvtyCtrctlSttlmDt write Set_TradActvtyCtrctlSttlmDt;
    property TradDt: UnicodeString read Get_TradDt write Set_TradDt;
    property IntrBkSttlmDt: UnicodeString read Get_IntrBkSttlmDt write Set_IntrBkSttlmDt;
    property StartDt: UnicodeString read Get_StartDt write Set_StartDt;
    property EndDt: UnicodeString read Get_EndDt write Set_EndDt;
    property TxDtTm: UnicodeString read Get_TxDtTm write Set_TxDtTm;
    property Prtry: IXMLProprietaryDate2List read Get_Prtry;
  end;

{ IXMLProprietaryDate2 }

  IXMLProprietaryDate2 = interface(IXMLNode)
    ['{9269F531-BFB5-470D-AE60-3BE6E63E022F}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Dt: IXMLDateAndDateTimeChoice;
    procedure Set_Tp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Dt: IXMLDateAndDateTimeChoice read Get_Dt;
  end;

{ IXMLProprietaryDate2List }

  IXMLProprietaryDate2List = interface(IXMLNodeCollection)
    ['{E15D91DC-6191-45E5-BCA5-56F5B5C7DCAE}']
    { Methoden & Eigenschaften }
    function Add: IXMLProprietaryDate2;
    function Insert(const Index: Integer): IXMLProprietaryDate2;

    function Get_Item(Index: Integer): IXMLProprietaryDate2;
    property Items[Index: Integer]: IXMLProprietaryDate2 read Get_Item; default;
  end;

{ IXMLTransactionPrice2Choice }

  IXMLTransactionPrice2Choice = interface(IXMLNode)
    ['{214A5804-96C9-4957-B61C-935AF2765F2A}']
    { Eigenschaftszugriff }
    function Get_DealPric: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Prtry: IXMLProprietaryPrice2List;
    { Methoden & Eigenschaften }
    property DealPric: IXMLActiveOrHistoricCurrencyAndAmount read Get_DealPric;
    property Prtry: IXMLProprietaryPrice2List read Get_Prtry;
  end;

{ IXMLProprietaryPrice2 }

  IXMLProprietaryPrice2 = interface(IXMLNode)
    ['{062AB2D4-408C-445C-9B58-C2E6205CEED3}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Pric: IXMLActiveOrHistoricCurrencyAndAmount;
    procedure Set_Tp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Pric: IXMLActiveOrHistoricCurrencyAndAmount read Get_Pric;
  end;

{ IXMLProprietaryPrice2List }

  IXMLProprietaryPrice2List = interface(IXMLNodeCollection)
    ['{792C8CFA-97E8-4F7D-81B9-95EDB65C5A94}']
    { Methoden & Eigenschaften }
    function Add: IXMLProprietaryPrice2;
    function Insert(const Index: Integer): IXMLProprietaryPrice2;

    function Get_Item(Index: Integer): IXMLProprietaryPrice2;
    property Items[Index: Integer]: IXMLProprietaryPrice2 read Get_Item; default;
  end;

{ IXMLTransactionQuantities1Choice }

  IXMLTransactionQuantities1Choice = interface(IXMLNode)
    ['{12E34303-7831-4ADE-918A-E3876C9084EE}']
    { Eigenschaftszugriff }
    function Get_Qty: IXMLFinancialInstrumentQuantityChoice;
    function Get_Prtry: IXMLProprietaryQuantity1;
    { Methoden & Eigenschaften }
    property Qty: IXMLFinancialInstrumentQuantityChoice read Get_Qty;
    property Prtry: IXMLProprietaryQuantity1 read Get_Prtry;
  end;

{ IXMLTransactionQuantities1ChoiceList }

  IXMLTransactionQuantities1ChoiceList = interface(IXMLNodeCollection)
    ['{A72BD8EC-DB85-4CA4-A1D8-0D513951455E}']
    { Methoden & Eigenschaften }
    function Add: IXMLTransactionQuantities1Choice;
    function Insert(const Index: Integer): IXMLTransactionQuantities1Choice;

    function Get_Item(Index: Integer): IXMLTransactionQuantities1Choice;
    property Items[Index: Integer]: IXMLTransactionQuantities1Choice read Get_Item; default;
  end;

{ IXMLFinancialInstrumentQuantityChoice }

  IXMLFinancialInstrumentQuantityChoice = interface(IXMLNode)
    ['{A488588D-957B-47D2-BC6D-668BA86CE91D}']
    { Eigenschaftszugriff }
    function Get_Unit_: UnicodeString;
    function Get_FaceAmt: UnicodeString;
    function Get_AmtsdVal: UnicodeString;
    procedure Set_Unit_(Value: UnicodeString);
    procedure Set_FaceAmt(Value: UnicodeString);
    procedure Set_AmtsdVal(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Unit_: UnicodeString read Get_Unit_ write Set_Unit_;
    property FaceAmt: UnicodeString read Get_FaceAmt write Set_FaceAmt;
    property AmtsdVal: UnicodeString read Get_AmtsdVal write Set_AmtsdVal;
  end;

{ IXMLProprietaryQuantity1 }

  IXMLProprietaryQuantity1 = interface(IXMLNode)
    ['{284A6CE7-3F4D-4BA0-915C-E711B91A4BD5}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Qty: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Qty(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Qty: UnicodeString read Get_Qty write Set_Qty;
  end;

{ IXMLSecurityIdentification4Choice }

  IXMLSecurityIdentification4Choice = interface(IXMLNode)
    ['{A4990903-18D7-4521-8C2B-686F908F9026}']
    { Eigenschaftszugriff }
    function Get_ISIN: UnicodeString;
    function Get_Prtry: IXMLAlternateSecurityIdentification2;
    procedure Set_ISIN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property ISIN: UnicodeString read Get_ISIN write Set_ISIN;
    property Prtry: IXMLAlternateSecurityIdentification2 read Get_Prtry;
  end;

{ IXMLAlternateSecurityIdentification2 }

  IXMLAlternateSecurityIdentification2 = interface(IXMLNode)
    ['{848D90F0-44D5-413E-9FB0-2FAF9BEE43E1}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Id: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLTaxInformation3 }

  IXMLTaxInformation3 = interface(IXMLNode)
    ['{D97D4234-3FF3-48BB-8EE1-CA70FE8FCEA0}']
    { Eigenschaftszugriff }
    function Get_Cdtr: IXMLTaxParty1;
    function Get_Dbtr: IXMLTaxParty2;
    function Get_AdmstnZn: UnicodeString;
    function Get_RefNb: UnicodeString;
    function Get_Mtd: UnicodeString;
    function Get_TtlTaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_TtlTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Dt: UnicodeString;
    function Get_SeqNb: UnicodeString;
    function Get_Rcrd: IXMLTaxRecord1List;
    procedure Set_AdmstnZn(Value: UnicodeString);
    procedure Set_RefNb(Value: UnicodeString);
    procedure Set_Mtd(Value: UnicodeString);
    procedure Set_Dt(Value: UnicodeString);
    procedure Set_SeqNb(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cdtr: IXMLTaxParty1 read Get_Cdtr;
    property Dbtr: IXMLTaxParty2 read Get_Dbtr;
    property AdmstnZn: UnicodeString read Get_AdmstnZn write Set_AdmstnZn;
    property RefNb: UnicodeString read Get_RefNb write Set_RefNb;
    property Mtd: UnicodeString read Get_Mtd write Set_Mtd;
    property TtlTaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_TtlTaxblBaseAmt;
    property TtlTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_TtlTaxAmt;
    property Dt: UnicodeString read Get_Dt write Set_Dt;
    property SeqNb: UnicodeString read Get_SeqNb write Set_SeqNb;
    property Rcrd: IXMLTaxRecord1List read Get_Rcrd;
  end;

{ IXMLTaxParty1 }

  IXMLTaxParty1 = interface(IXMLNode)
    ['{D80EF036-AE36-456A-8D3F-2D90B56FC638}']
    { Eigenschaftszugriff }
    function Get_TaxId: UnicodeString;
    function Get_RegnId: UnicodeString;
    function Get_TaxTp: UnicodeString;
    procedure Set_TaxId(Value: UnicodeString);
    procedure Set_RegnId(Value: UnicodeString);
    procedure Set_TaxTp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property TaxId: UnicodeString read Get_TaxId write Set_TaxId;
    property RegnId: UnicodeString read Get_RegnId write Set_RegnId;
    property TaxTp: UnicodeString read Get_TaxTp write Set_TaxTp;
  end;

{ IXMLTaxParty2 }

  IXMLTaxParty2 = interface(IXMLNode)
    ['{017D5AD6-92D2-4FB7-8E41-B4D28A51D7B8}']
    { Eigenschaftszugriff }
    function Get_TaxId: UnicodeString;
    function Get_RegnId: UnicodeString;
    function Get_TaxTp: UnicodeString;
    function Get_Authstn: IXMLTaxAuthorisation1;
    procedure Set_TaxId(Value: UnicodeString);
    procedure Set_RegnId(Value: UnicodeString);
    procedure Set_TaxTp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property TaxId: UnicodeString read Get_TaxId write Set_TaxId;
    property RegnId: UnicodeString read Get_RegnId write Set_RegnId;
    property TaxTp: UnicodeString read Get_TaxTp write Set_TaxTp;
    property Authstn: IXMLTaxAuthorisation1 read Get_Authstn;
  end;

{ IXMLTaxAuthorisation1 }

  IXMLTaxAuthorisation1 = interface(IXMLNode)
    ['{A3DF0BEE-3369-4B72-A122-F27C308FFA16}']
    { Eigenschaftszugriff }
    function Get_Titl: UnicodeString;
    function Get_Nm: UnicodeString;
    procedure Set_Titl(Value: UnicodeString);
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Titl: UnicodeString read Get_Titl write Set_Titl;
    property Nm: UnicodeString read Get_Nm write Set_Nm;
  end;

{ IXMLTaxRecord1 }

  IXMLTaxRecord1 = interface(IXMLNode)
    ['{3DB2BFE8-0542-48ED-983F-BB6395590A1A}']
    { Eigenschaftszugriff }
    function Get_Tp: UnicodeString;
    function Get_Ctgy: UnicodeString;
    function Get_CtgyDtls: UnicodeString;
    function Get_DbtrSts: UnicodeString;
    function Get_CertId: UnicodeString;
    function Get_FrmsCd: UnicodeString;
    function Get_Prd: IXMLTaxPeriod1;
    function Get_TaxAmt: IXMLTaxAmount1;
    function Get_AddtlInf: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Ctgy(Value: UnicodeString);
    procedure Set_CtgyDtls(Value: UnicodeString);
    procedure Set_DbtrSts(Value: UnicodeString);
    procedure Set_CertId(Value: UnicodeString);
    procedure Set_FrmsCd(Value: UnicodeString);
    procedure Set_AddtlInf(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property Ctgy: UnicodeString read Get_Ctgy write Set_Ctgy;
    property CtgyDtls: UnicodeString read Get_CtgyDtls write Set_CtgyDtls;
    property DbtrSts: UnicodeString read Get_DbtrSts write Set_DbtrSts;
    property CertId: UnicodeString read Get_CertId write Set_CertId;
    property FrmsCd: UnicodeString read Get_FrmsCd write Set_FrmsCd;
    property Prd: IXMLTaxPeriod1 read Get_Prd;
    property TaxAmt: IXMLTaxAmount1 read Get_TaxAmt;
    property AddtlInf: UnicodeString read Get_AddtlInf write Set_AddtlInf;
  end;

{ IXMLTaxRecord1List }

  IXMLTaxRecord1List = interface(IXMLNodeCollection)
    ['{21A36659-E408-4D65-A664-79496F67DBF9}']
    { Methoden & Eigenschaften }
    function Add: IXMLTaxRecord1;
    function Insert(const Index: Integer): IXMLTaxRecord1;

    function Get_Item(Index: Integer): IXMLTaxRecord1;
    property Items[Index: Integer]: IXMLTaxRecord1 read Get_Item; default;
  end;

{ IXMLTaxPeriod1 }

  IXMLTaxPeriod1 = interface(IXMLNode)
    ['{69F5C9E9-37E8-44BC-A4E7-79E12A7A7F16}']
    { Eigenschaftszugriff }
    function Get_Yr: UnicodeString;
    function Get_Tp: UnicodeString;
    function Get_FrToDt: IXMLDatePeriodDetails;
    procedure Set_Yr(Value: UnicodeString);
    procedure Set_Tp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Yr: UnicodeString read Get_Yr write Set_Yr;
    property Tp: UnicodeString read Get_Tp write Set_Tp;
    property FrToDt: IXMLDatePeriodDetails read Get_FrToDt;
  end;

{ IXMLDatePeriodDetails }

  IXMLDatePeriodDetails = interface(IXMLNode)
    ['{8C4CB0C2-0FA6-4DF4-B26C-7A4562EF0866}']
    { Eigenschaftszugriff }
    function Get_FrDt: UnicodeString;
    function Get_ToDt: UnicodeString;
    procedure Set_FrDt(Value: UnicodeString);
    procedure Set_ToDt(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property FrDt: UnicodeString read Get_FrDt write Set_FrDt;
    property ToDt: UnicodeString read Get_ToDt write Set_ToDt;
  end;

{ IXMLTaxAmount1 }

  IXMLTaxAmount1 = interface(IXMLNode)
    ['{BDEBECDD-C571-4B45-98FB-41E6164F2E6D}']
    { Eigenschaftszugriff }
    function Get_Rate: UnicodeString;
    function Get_TaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Dtls: IXMLTaxRecordDetails1List;
    procedure Set_Rate(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Rate: UnicodeString read Get_Rate write Set_Rate;
    property TaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_TaxblBaseAmt;
    property TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount read Get_TtlAmt;
    property Dtls: IXMLTaxRecordDetails1List read Get_Dtls;
  end;

{ IXMLTaxRecordDetails1 }

  IXMLTaxRecordDetails1 = interface(IXMLNode)
    ['{EAF28842-CF37-420D-B2D5-EA9F2EA57F04}']
    { Eigenschaftszugriff }
    function Get_Prd: IXMLTaxPeriod1;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    { Methoden & Eigenschaften }
    property Prd: IXMLTaxPeriod1 read Get_Prd;
    property Amt: IXMLActiveOrHistoricCurrencyAndAmount read Get_Amt;
  end;

{ IXMLTaxRecordDetails1List }

  IXMLTaxRecordDetails1List = interface(IXMLNodeCollection)
    ['{B97F6FA1-A47C-4368-9D60-7E85DF8E1611}']
    { Methoden & Eigenschaften }
    function Add: IXMLTaxRecordDetails1;
    function Insert(const Index: Integer): IXMLTaxRecordDetails1;

    function Get_Item(Index: Integer): IXMLTaxRecordDetails1;
    property Items[Index: Integer]: IXMLTaxRecordDetails1 read Get_Item; default;
  end;

{ IXMLReturnReasonInformation10 }

  IXMLReturnReasonInformation10 = interface(IXMLNode)
    ['{D57AE680-3DF4-48D4-97B5-AA8660861593}']
    { Eigenschaftszugriff }
    function Get_OrgnlBkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_Orgtr: IXMLPartyIdentification32;
    function Get_Rsn: IXMLReturnReason5Choice;
    function Get_AddtlInf: IXMLMax105TextList;
    { Methoden & Eigenschaften }
    property OrgnlBkTxCd: IXMLBankTransactionCodeStructure4 read Get_OrgnlBkTxCd;
    property Orgtr: IXMLPartyIdentification32 read Get_Orgtr;
    property Rsn: IXMLReturnReason5Choice read Get_Rsn;
    property AddtlInf: IXMLMax105TextList read Get_AddtlInf;
  end;

{ IXMLReturnReason5Choice }

  IXMLReturnReason5Choice = interface(IXMLNode)
    ['{C04BDC2E-C031-42F1-AFA5-492DA32E75C0}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLCorporateAction1 }

  IXMLCorporateAction1 = interface(IXMLNode)
    ['{313B7F42-87D2-4184-AED4-6F62DAD477EF}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Nb: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Nb(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Nb: UnicodeString read Get_Nb write Set_Nb;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ Forward-Deklarationen }

  TXMLDocument05200102 = class;
  TXMLBankToCustomerAccountReportV02 = class;
  TXMLGroupHeader42 = class;
  TXMLPagination = class;
  TXMLAccountReport11 = class;
  TXMLAccountReport11List = class;
  TXMLDateTimePeriodDetails = class;
  TXMLReportingSource1Choice = class;
  TXMLCashAccount20 = class;
  TXMLCashAccountType2 = class;
  TXMLAccountInterest2 = class;
  TXMLAccountInterest2List = class;
  TXMLInterestType1Choice = class;
  TXMLRate3 = class;
  TXMLRate3List = class;
  TXMLRateType4Choice = class;
  TXMLCurrencyAndAmountRange2 = class;
  TXMLImpliedCurrencyAmountRangeChoice = class;
  TXMLAmountRangeBoundary1 = class;
  TXMLFromToAmountRange = class;
  TXMLCashBalance3 = class;
  TXMLCashBalance3List = class;
  TXMLBalanceType12 = class;
  TXMLBalanceType5Choice = class;
  TXMLBalanceSubType1Choice = class;
  TXMLCreditLine2 = class;
  TXMLDateAndDateTimeChoice = class;
  TXMLCashBalanceAvailability2 = class;
  TXMLCashBalanceAvailability2List = class;
  TXMLCashBalanceAvailabilityDate1 = class;
  TXMLTotalTransactions2 = class;
  TXMLNumberAndSumOfTransactions2 = class;
  TXMLNumberAndSumOfTransactions1 = class;
  TXMLTotalsPerBankTransactionCode2 = class;
  TXMLTotalsPerBankTransactionCode2List = class;
  TXMLBankTransactionCodeStructure4 = class;
  TXMLBankTransactionCodeStructure5 = class;
  TXMLBankTransactionCodeStructure6 = class;
  TXMLProprietaryBankTransactionCodeStructure1 = class;
  TXMLReportEntry2 = class;
  TXMLReportEntry2List = class;
  TXMLMessageIdentification2 = class;
  TXMLAmountAndCurrencyExchange3 = class;
  TXMLAmountAndCurrencyExchangeDetails3 = class;
  TXMLCurrencyExchange5 = class;
  TXMLAmountAndCurrencyExchangeDetails4 = class;
  TXMLAmountAndCurrencyExchangeDetails4List = class;
  TXMLChargesInformation6 = class;
  TXMLChargesInformation6List = class;
  TXMLChargeType2Choice = class;
  TXMLGenericIdentification3 = class;
  TXMLTaxCharges2 = class;
  TXMLTechnicalInputChannel1Choice = class;
  TXMLTransactionInterest2 = class;
  TXMLTransactionInterest2List = class;
  TXMLEntryDetails1 = class;
  TXMLEntryDetails1List = class;
  TXMLBatchInformation2 = class;
  TXMLEntryTransaction2 = class;
  TXMLEntryTransaction2List = class;
  TXMLTransactionReferences2 = class;
  TXMLProprietaryReference1 = class;
  TXMLTransactionParty2 = class;
  TXMLProprietaryParty2 = class;
  TXMLProprietaryParty2List = class;
  TXMLTransactionAgents2 = class;
  TXMLProprietaryAgent2 = class;
  TXMLProprietaryAgent2List = class;
  TXMLPurpose2Choice = class;
  TXMLRemittanceLocation2 = class;
  TXMLRemittanceLocation2List = class;
  TXMLNameAndAddress10 = class;
  TXMLTransactionDates2 = class;
  TXMLProprietaryDate2 = class;
  TXMLProprietaryDate2List = class;
  TXMLTransactionPrice2Choice = class;
  TXMLProprietaryPrice2 = class;
  TXMLProprietaryPrice2List = class;
  TXMLTransactionQuantities1Choice = class;
  TXMLTransactionQuantities1ChoiceList = class;
  TXMLFinancialInstrumentQuantityChoice = class;
  TXMLProprietaryQuantity1 = class;
  TXMLSecurityIdentification4Choice = class;
  TXMLAlternateSecurityIdentification2 = class;
  TXMLTaxInformation3 = class;
  TXMLTaxParty1 = class;
  TXMLTaxParty2 = class;
  TXMLTaxAuthorisation1 = class;
  TXMLTaxRecord1 = class;
  TXMLTaxRecord1List = class;
  TXMLTaxPeriod1 = class;
  TXMLDatePeriodDetails = class;
  TXMLTaxAmount1 = class;
  TXMLTaxRecordDetails1 = class;
  TXMLTaxRecordDetails1List = class;
  TXMLReturnReasonInformation10 = class;
  TXMLReturnReason5Choice = class;
  TXMLCorporateAction1 = class;

{ TXMLDocument05200102 }

  TXMLDocument05200102 = class(TXMLNode, IXMLDocument05200102)
  protected
    { IXMLDocument05200102 }
    function Get_BkToCstmrAcctRpt: IXMLBankToCustomerAccountReportV02;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBankToCustomerAccountReportV02 }

  TXMLBankToCustomerAccountReportV02 = class(TXMLNode, IXMLBankToCustomerAccountReportV02)
  private
    FRpt: IXMLAccountReport11List;
  protected
    { IXMLBankToCustomerAccountReportV02 }
    function Get_GrpHdr: IXMLGroupHeader42;
    function Get_Rpt: IXMLAccountReport11List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGroupHeader42 }

  TXMLGroupHeader42 = class(TXMLNode, IXMLGroupHeader42)
  protected
    { IXMLGroupHeader42 }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_MsgRcpt: IXMLPartyIdentification32;
    function Get_MsgPgntn: IXMLPagination;
    function Get_AddtlInf: UnicodeString;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_AddtlInf(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPagination }

  TXMLPagination = class(TXMLNode, IXMLPagination)
  protected
    { IXMLPagination }
    function Get_PgNb: UnicodeString;
    function Get_LastPgInd: Boolean;
    procedure Set_PgNb(Value: UnicodeString);
    procedure Set_LastPgInd(Value: Boolean);
  end;

{ TXMLAccountReport11 }

  TXMLAccountReport11 = class(TXMLNode, IXMLAccountReport11)
  private
    FIntrst: IXMLAccountInterest2List;
    FBal: IXMLCashBalance3List;
    FNtry: IXMLReportEntry2List;
  protected
    { IXMLAccountReport11 }
    function Get_Id: UnicodeString;
    function Get_ElctrncSeqNb: UnicodeString;
    function Get_LglSeqNb: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_FrToDt: IXMLDateTimePeriodDetails;
    function Get_CpyDplctInd: UnicodeString;
    function Get_RptgSrc: IXMLReportingSource1Choice;
    function Get_Acct: IXMLCashAccount20;
    function Get_RltdAcct: IXMLCashAccount16;
    function Get_Intrst: IXMLAccountInterest2List;
    function Get_Bal: IXMLCashBalance3List;
    function Get_TxsSummry: IXMLTotalTransactions2;
    function Get_Ntry: IXMLReportEntry2List;
    function Get_AddtlRptInf: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_ElctrncSeqNb(Value: UnicodeString);
    procedure Set_LglSeqNb(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_CpyDplctInd(Value: UnicodeString);
    procedure Set_AddtlRptInf(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountReport11List }

  TXMLAccountReport11List = class(TXMLNodeCollection, IXMLAccountReport11List)
  protected
    { IXMLAccountReport11List }
    function Add: IXMLAccountReport11;
    function Insert(const Index: Integer): IXMLAccountReport11;

    function Get_Item(Index: Integer): IXMLAccountReport11;
  end;

{ TXMLDateTimePeriodDetails }

  TXMLDateTimePeriodDetails = class(TXMLNode, IXMLDateTimePeriodDetails)
  protected
    { IXMLDateTimePeriodDetails }
    function Get_FrDtTm: UnicodeString;
    function Get_ToDtTm: UnicodeString;
    procedure Set_FrDtTm(Value: UnicodeString);
    procedure Set_ToDtTm(Value: UnicodeString);
  end;

{ TXMLReportingSource1Choice }

  TXMLReportingSource1Choice = class(TXMLNode, IXMLReportingSource1Choice)
  protected
    { IXMLReportingSource1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLCashAccount20 }

  TXMLCashAccount20 = class(TXMLNode, IXMLCashAccount20)
  protected
    { IXMLCashAccount20 }
    function Get_Id: IXMLAccountIdentification4Choice;
    function Get_Tp: IXMLCashAccountType2;
    function Get_Ccy: UnicodeString;
    function Get_Nm: UnicodeString;
    function Get_Ownr: IXMLPartyIdentification32;
    function Get_Svcr: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_Ccy(Value: UnicodeString);
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccountType2 }

  TXMLCashAccountType2 = class(TXMLNode, IXMLCashAccountType2)
  protected
    { IXMLCashAccountType2 }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLAccountInterest2 }

  TXMLAccountInterest2 = class(TXMLNode, IXMLAccountInterest2)
  private
    FRate: IXMLRate3List;
  protected
    { IXMLAccountInterest2 }
    function Get_Tp: IXMLInterestType1Choice;
    function Get_Rate: IXMLRate3List;
    function Get_FrToDt: IXMLDateTimePeriodDetails;
    function Get_Rsn: UnicodeString;
    procedure Set_Rsn(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountInterest2List }

  TXMLAccountInterest2List = class(TXMLNodeCollection, IXMLAccountInterest2List)
  protected
    { IXMLAccountInterest2List }
    function Add: IXMLAccountInterest2;
    function Insert(const Index: Integer): IXMLAccountInterest2;

    function Get_Item(Index: Integer): IXMLAccountInterest2;
  end;

{ TXMLInterestType1Choice }

  TXMLInterestType1Choice = class(TXMLNode, IXMLInterestType1Choice)
  protected
    { IXMLInterestType1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLRate3 }

  TXMLRate3 = class(TXMLNode, IXMLRate3)
  protected
    { IXMLRate3 }
    function Get_Tp: IXMLRateType4Choice;
    function Get_VldtyRg: IXMLCurrencyAndAmountRange2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRate3List }

  TXMLRate3List = class(TXMLNodeCollection, IXMLRate3List)
  protected
    { IXMLRate3List }
    function Add: IXMLRate3;
    function Insert(const Index: Integer): IXMLRate3;

    function Get_Item(Index: Integer): IXMLRate3;
  end;

{ TXMLRateType4Choice }

  TXMLRateType4Choice = class(TXMLNode, IXMLRateType4Choice)
  protected
    { IXMLRateType4Choice }
    function Get_Pctg: UnicodeString;
    function Get_Othr: UnicodeString;
    procedure Set_Pctg(Value: UnicodeString);
    procedure Set_Othr(Value: UnicodeString);
  end;

{ TXMLCurrencyAndAmountRange2 }

  TXMLCurrencyAndAmountRange2 = class(TXMLNode, IXMLCurrencyAndAmountRange2)
  protected
    { IXMLCurrencyAndAmountRange2 }
    function Get_Amt: IXMLImpliedCurrencyAmountRangeChoice;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Ccy: UnicodeString;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_Ccy(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLImpliedCurrencyAmountRangeChoice }

  TXMLImpliedCurrencyAmountRangeChoice = class(TXMLNode, IXMLImpliedCurrencyAmountRangeChoice)
  protected
    { IXMLImpliedCurrencyAmountRangeChoice }
    function Get_FrAmt: IXMLAmountRangeBoundary1;
    function Get_ToAmt: IXMLAmountRangeBoundary1;
    function Get_FrToAmt: IXMLFromToAmountRange;
    function Get_EQAmt: UnicodeString;
    function Get_NEQAmt: UnicodeString;
    procedure Set_EQAmt(Value: UnicodeString);
    procedure Set_NEQAmt(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmountRangeBoundary1 }

  TXMLAmountRangeBoundary1 = class(TXMLNode, IXMLAmountRangeBoundary1)
  protected
    { IXMLAmountRangeBoundary1 }
    function Get_BdryAmt: UnicodeString;
    function Get_Incl: Boolean;
    procedure Set_BdryAmt(Value: UnicodeString);
    procedure Set_Incl(Value: Boolean);
  end;

{ TXMLFromToAmountRange }

  TXMLFromToAmountRange = class(TXMLNode, IXMLFromToAmountRange)
  protected
    { IXMLFromToAmountRange }
    function Get_FrAmt: IXMLAmountRangeBoundary1;
    function Get_ToAmt: IXMLAmountRangeBoundary1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashBalance3 }

  TXMLCashBalance3 = class(TXMLNode, IXMLCashBalance3)
  private
    FAvlbty: IXMLCashBalanceAvailability2List;
  protected
    { IXMLCashBalance3 }
    function Get_Tp: IXMLBalanceType12;
    function Get_CdtLine: IXMLCreditLine2;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Dt: IXMLDateAndDateTimeChoice;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    procedure Set_CdtDbtInd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashBalance3List }

  TXMLCashBalance3List = class(TXMLNodeCollection, IXMLCashBalance3List)
  protected
    { IXMLCashBalance3List }
    function Add: IXMLCashBalance3;
    function Insert(const Index: Integer): IXMLCashBalance3;

    function Get_Item(Index: Integer): IXMLCashBalance3;
  end;

{ TXMLBalanceType12 }

  TXMLBalanceType12 = class(TXMLNode, IXMLBalanceType12)
  protected
    { IXMLBalanceType12 }
    function Get_CdOrPrtry: IXMLBalanceType5Choice;
    function Get_SubTp: IXMLBalanceSubType1Choice;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBalanceType5Choice }

  TXMLBalanceType5Choice = class(TXMLNode, IXMLBalanceType5Choice)
  protected
    { IXMLBalanceType5Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLBalanceSubType1Choice }

  TXMLBalanceSubType1Choice = class(TXMLNode, IXMLBalanceSubType1Choice)
  protected
    { IXMLBalanceSubType1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLCreditLine2 }

  TXMLCreditLine2 = class(TXMLNode, IXMLCreditLine2)
  protected
    { IXMLCreditLine2 }
    function Get_Incl: Boolean;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    procedure Set_Incl(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDateAndDateTimeChoice }

  TXMLDateAndDateTimeChoice = class(TXMLNode, IXMLDateAndDateTimeChoice)
  protected
    { IXMLDateAndDateTimeChoice }
    function Get_Dt: UnicodeString;
    function Get_DtTm: UnicodeString;
    procedure Set_Dt(Value: UnicodeString);
    procedure Set_DtTm(Value: UnicodeString);
  end;

{ TXMLCashBalanceAvailability2 }

  TXMLCashBalanceAvailability2 = class(TXMLNode, IXMLCashBalanceAvailability2)
  protected
    { IXMLCashBalanceAvailability2 }
    function Get_Dt: IXMLCashBalanceAvailabilityDate1;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    procedure Set_CdtDbtInd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashBalanceAvailability2List }

  TXMLCashBalanceAvailability2List = class(TXMLNodeCollection, IXMLCashBalanceAvailability2List)
  protected
    { IXMLCashBalanceAvailability2List }
    function Add: IXMLCashBalanceAvailability2;
    function Insert(const Index: Integer): IXMLCashBalanceAvailability2;

    function Get_Item(Index: Integer): IXMLCashBalanceAvailability2;
  end;

{ TXMLCashBalanceAvailabilityDate1 }

  TXMLCashBalanceAvailabilityDate1 = class(TXMLNode, IXMLCashBalanceAvailabilityDate1)
  protected
    { IXMLCashBalanceAvailabilityDate1 }
    function Get_NbOfDays: UnicodeString;
    function Get_ActlDt: UnicodeString;
    procedure Set_NbOfDays(Value: UnicodeString);
    procedure Set_ActlDt(Value: UnicodeString);
  end;

{ TXMLTotalTransactions2 }

  TXMLTotalTransactions2 = class(TXMLNode, IXMLTotalTransactions2)
  private
    FTtlNtriesPerBkTxCd: IXMLTotalsPerBankTransactionCode2List;
  protected
    { IXMLTotalTransactions2 }
    function Get_TtlNtries: IXMLNumberAndSumOfTransactions2;
    function Get_TtlCdtNtries: IXMLNumberAndSumOfTransactions1;
    function Get_TtlDbtNtries: IXMLNumberAndSumOfTransactions1;
    function Get_TtlNtriesPerBkTxCd: IXMLTotalsPerBankTransactionCode2List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLNumberAndSumOfTransactions2 }

  TXMLNumberAndSumOfTransactions2 = class(TXMLNode, IXMLNumberAndSumOfTransactions2)
  protected
    { IXMLNumberAndSumOfTransactions2 }
    function Get_NbOfNtries: UnicodeString;
    function Get_Sum: UnicodeString;
    function Get_TtlNetNtryAmt: UnicodeString;
    function Get_CdtDbtInd: UnicodeString;
    procedure Set_NbOfNtries(Value: UnicodeString);
    procedure Set_Sum(Value: UnicodeString);
    procedure Set_TtlNetNtryAmt(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
  end;

{ TXMLNumberAndSumOfTransactions1 }

  TXMLNumberAndSumOfTransactions1 = class(TXMLNode, IXMLNumberAndSumOfTransactions1)
  protected
    { IXMLNumberAndSumOfTransactions1 }
    function Get_NbOfNtries: UnicodeString;
    function Get_Sum: UnicodeString;
    procedure Set_NbOfNtries(Value: UnicodeString);
    procedure Set_Sum(Value: UnicodeString);
  end;

{ TXMLTotalsPerBankTransactionCode2 }

  TXMLTotalsPerBankTransactionCode2 = class(TXMLNode, IXMLTotalsPerBankTransactionCode2)
  private
    FAvlbty: IXMLCashBalanceAvailability2List;
  protected
    { IXMLTotalsPerBankTransactionCode2 }
    function Get_NbOfNtries: UnicodeString;
    function Get_Sum: UnicodeString;
    function Get_TtlNetNtryAmt: UnicodeString;
    function Get_CdtDbtInd: UnicodeString;
    function Get_FcstInd: Boolean;
    function Get_BkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    procedure Set_NbOfNtries(Value: UnicodeString);
    procedure Set_Sum(Value: UnicodeString);
    procedure Set_TtlNetNtryAmt(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_FcstInd(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTotalsPerBankTransactionCode2List }

  TXMLTotalsPerBankTransactionCode2List = class(TXMLNodeCollection, IXMLTotalsPerBankTransactionCode2List)
  protected
    { IXMLTotalsPerBankTransactionCode2List }
    function Add: IXMLTotalsPerBankTransactionCode2;
    function Insert(const Index: Integer): IXMLTotalsPerBankTransactionCode2;

    function Get_Item(Index: Integer): IXMLTotalsPerBankTransactionCode2;
  end;

{ TXMLBankTransactionCodeStructure4 }

  TXMLBankTransactionCodeStructure4 = class(TXMLNode, IXMLBankTransactionCodeStructure4)
  protected
    { IXMLBankTransactionCodeStructure4 }
    function Get_Domn: IXMLBankTransactionCodeStructure5;
    function Get_Prtry: IXMLProprietaryBankTransactionCodeStructure1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBankTransactionCodeStructure5 }

  TXMLBankTransactionCodeStructure5 = class(TXMLNode, IXMLBankTransactionCodeStructure5)
  protected
    { IXMLBankTransactionCodeStructure5 }
    function Get_Cd: UnicodeString;
    function Get_Fmly: IXMLBankTransactionCodeStructure6;
    procedure Set_Cd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBankTransactionCodeStructure6 }

  TXMLBankTransactionCodeStructure6 = class(TXMLNode, IXMLBankTransactionCodeStructure6)
  protected
    { IXMLBankTransactionCodeStructure6 }
    function Get_Cd: UnicodeString;
    function Get_SubFmlyCd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_SubFmlyCd(Value: UnicodeString);
  end;

{ TXMLProprietaryBankTransactionCodeStructure1 }

  TXMLProprietaryBankTransactionCodeStructure1 = class(TXMLNode, IXMLProprietaryBankTransactionCodeStructure1)
  protected
    { IXMLProprietaryBankTransactionCodeStructure1 }
    function Get_Cd: UnicodeString;
    function Get_Issr: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
  end;

{ TXMLReportEntry2 }

  TXMLReportEntry2 = class(TXMLNode, IXMLReportEntry2)
  private
    FAvlbty: IXMLCashBalanceAvailability2List;
    FChrgs: IXMLChargesInformation6List;
    FIntrst: IXMLTransactionInterest2List;
    FNtryDtls: IXMLEntryDetails1List;
  protected
    { IXMLReportEntry2 }
    function Get_NtryRef: UnicodeString;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_RvslInd: Boolean;
    function Get_Sts: UnicodeString;
    function Get_BookgDt: IXMLDateAndDateTimeChoice;
    function Get_ValDt: IXMLDateAndDateTimeChoice;
    function Get_AcctSvcrRef: UnicodeString;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    function Get_BkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_ComssnWvrInd: Boolean;
    function Get_AddtlInfInd: IXMLMessageIdentification2;
    function Get_AmtDtls: IXMLAmountAndCurrencyExchange3;
    function Get_Chrgs: IXMLChargesInformation6List;
    function Get_TechInptChanl: IXMLTechnicalInputChannel1Choice;
    function Get_Intrst: IXMLTransactionInterest2List;
    function Get_NtryDtls: IXMLEntryDetails1List;
    function Get_AddtlNtryInf: UnicodeString;
    procedure Set_NtryRef(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_RvslInd(Value: Boolean);
    procedure Set_Sts(Value: UnicodeString);
    procedure Set_AcctSvcrRef(Value: UnicodeString);
    procedure Set_ComssnWvrInd(Value: Boolean);
    procedure Set_AddtlNtryInf(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReportEntry2List }

  TXMLReportEntry2List = class(TXMLNodeCollection, IXMLReportEntry2List)
  protected
    { IXMLReportEntry2List }
    function Add: IXMLReportEntry2;
    function Insert(const Index: Integer): IXMLReportEntry2;

    function Get_Item(Index: Integer): IXMLReportEntry2;
  end;

{ TXMLMessageIdentification2 }

  TXMLMessageIdentification2 = class(TXMLNode, IXMLMessageIdentification2)
  protected
    { IXMLMessageIdentification2 }
    function Get_MsgNmId: UnicodeString;
    function Get_MsgId: UnicodeString;
    procedure Set_MsgNmId(Value: UnicodeString);
    procedure Set_MsgId(Value: UnicodeString);
  end;

{ TXMLAmountAndCurrencyExchange3 }

  TXMLAmountAndCurrencyExchange3 = class(TXMLNode, IXMLAmountAndCurrencyExchange3)
  private
    FPrtryAmt: IXMLAmountAndCurrencyExchangeDetails4List;
  protected
    { IXMLAmountAndCurrencyExchange3 }
    function Get_InstdAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_TxAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_CntrValAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_AnncdPstngAmt: IXMLAmountAndCurrencyExchangeDetails3;
    function Get_PrtryAmt: IXMLAmountAndCurrencyExchangeDetails4List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmountAndCurrencyExchangeDetails3 }

  TXMLAmountAndCurrencyExchangeDetails3 = class(TXMLNode, IXMLAmountAndCurrencyExchangeDetails3)
  protected
    { IXMLAmountAndCurrencyExchangeDetails3 }
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CcyXchg: IXMLCurrencyExchange5;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCurrencyExchange5 }

  TXMLCurrencyExchange5 = class(TXMLNode, IXMLCurrencyExchange5)
  protected
    { IXMLCurrencyExchange5 }
    function Get_SrcCcy: UnicodeString;
    function Get_TrgtCcy: UnicodeString;
    function Get_UnitCcy: UnicodeString;
    function Get_XchgRate: UnicodeString;
    function Get_CtrctId: UnicodeString;
    function Get_QtnDt: UnicodeString;
    procedure Set_SrcCcy(Value: UnicodeString);
    procedure Set_TrgtCcy(Value: UnicodeString);
    procedure Set_UnitCcy(Value: UnicodeString);
    procedure Set_XchgRate(Value: UnicodeString);
    procedure Set_CtrctId(Value: UnicodeString);
    procedure Set_QtnDt(Value: UnicodeString);
  end;

{ TXMLAmountAndCurrencyExchangeDetails4 }

  TXMLAmountAndCurrencyExchangeDetails4 = class(TXMLNode, IXMLAmountAndCurrencyExchangeDetails4)
  protected
    { IXMLAmountAndCurrencyExchangeDetails4 }
    function Get_Tp: UnicodeString;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CcyXchg: IXMLCurrencyExchange5;
    procedure Set_Tp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmountAndCurrencyExchangeDetails4List }

  TXMLAmountAndCurrencyExchangeDetails4List = class(TXMLNodeCollection, IXMLAmountAndCurrencyExchangeDetails4List)
  protected
    { IXMLAmountAndCurrencyExchangeDetails4List }
    function Add: IXMLAmountAndCurrencyExchangeDetails4;
    function Insert(const Index: Integer): IXMLAmountAndCurrencyExchangeDetails4;

    function Get_Item(Index: Integer): IXMLAmountAndCurrencyExchangeDetails4;
  end;

{ TXMLChargesInformation6 }

  TXMLChargesInformation6 = class(TXMLNode, IXMLChargesInformation6)
  protected
    { IXMLChargesInformation6 }
    function Get_TtlChrgsAndTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Tp: IXMLChargeType2Choice;
    function Get_Rate: UnicodeString;
    function Get_Br: UnicodeString;
    function Get_Pty: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Tax: IXMLTaxCharges2;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_Rate(Value: UnicodeString);
    procedure Set_Br(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLChargesInformation6List }

  TXMLChargesInformation6List = class(TXMLNodeCollection, IXMLChargesInformation6List)
  protected
    { IXMLChargesInformation6List }
    function Add: IXMLChargesInformation6;
    function Insert(const Index: Integer): IXMLChargesInformation6;

    function Get_Item(Index: Integer): IXMLChargesInformation6;
  end;

{ TXMLChargeType2Choice }

  TXMLChargeType2Choice = class(TXMLNode, IXMLChargeType2Choice)
  protected
    { IXMLChargeType2Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: IXMLGenericIdentification3;
    procedure Set_Cd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenericIdentification3 }

  TXMLGenericIdentification3 = class(TXMLNode, IXMLGenericIdentification3)
  protected
    { IXMLGenericIdentification3 }
    function Get_Id: UnicodeString;
    function Get_Issr: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Issr(Value: UnicodeString);
  end;

{ TXMLTaxCharges2 }

  TXMLTaxCharges2 = class(TXMLNode, IXMLTaxCharges2)
  protected
    { IXMLTaxCharges2 }
    function Get_Id: UnicodeString;
    function Get_Rate: UnicodeString;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_Rate(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTechnicalInputChannel1Choice }

  TXMLTechnicalInputChannel1Choice = class(TXMLNode, IXMLTechnicalInputChannel1Choice)
  protected
    { IXMLTechnicalInputChannel1Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLTransactionInterest2 }

  TXMLTransactionInterest2 = class(TXMLNode, IXMLTransactionInterest2)
  private
    FRate: IXMLRate3List;
  protected
    { IXMLTransactionInterest2 }
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    function Get_Tp: IXMLInterestType1Choice;
    function Get_Rate: IXMLRate3List;
    function Get_FrToDt: IXMLDateTimePeriodDetails;
    function Get_Rsn: UnicodeString;
    procedure Set_CdtDbtInd(Value: UnicodeString);
    procedure Set_Rsn(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransactionInterest2List }

  TXMLTransactionInterest2List = class(TXMLNodeCollection, IXMLTransactionInterest2List)
  protected
    { IXMLTransactionInterest2List }
    function Add: IXMLTransactionInterest2;
    function Insert(const Index: Integer): IXMLTransactionInterest2;

    function Get_Item(Index: Integer): IXMLTransactionInterest2;
  end;

{ TXMLEntryDetails1 }

  TXMLEntryDetails1 = class(TXMLNode, IXMLEntryDetails1)
  private
    FTxDtls: IXMLEntryTransaction2List;
  protected
    { IXMLEntryDetails1 }
    function Get_Btch: IXMLBatchInformation2;
    function Get_TxDtls: IXMLEntryTransaction2List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEntryDetails1List }

  TXMLEntryDetails1List = class(TXMLNodeCollection, IXMLEntryDetails1List)
  protected
    { IXMLEntryDetails1List }
    function Add: IXMLEntryDetails1;
    function Insert(const Index: Integer): IXMLEntryDetails1;

    function Get_Item(Index: Integer): IXMLEntryDetails1;
  end;

{ TXMLBatchInformation2 }

  TXMLBatchInformation2 = class(TXMLNode, IXMLBatchInformation2)
  protected
    { IXMLBatchInformation2 }
    function Get_MsgId: UnicodeString;
    function Get_PmtInfId: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_CdtDbtInd: UnicodeString;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CdtDbtInd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEntryTransaction2 }

  TXMLEntryTransaction2 = class(TXMLNode, IXMLEntryTransaction2)
  private
    FAvlbty: IXMLCashBalanceAvailability2List;
    FChrgs: IXMLChargesInformation6List;
    FIntrst: IXMLTransactionInterest2List;
    FRltdRmtInf: IXMLRemittanceLocation2List;
    FRltdQties: IXMLTransactionQuantities1ChoiceList;
  protected
    { IXMLEntryTransaction2 }
    function Get_Refs: IXMLTransactionReferences2;
    function Get_AmtDtls: IXMLAmountAndCurrencyExchange3;
    function Get_Avlbty: IXMLCashBalanceAvailability2List;
    function Get_BkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_Chrgs: IXMLChargesInformation6List;
    function Get_Intrst: IXMLTransactionInterest2List;
    function Get_RltdPties: IXMLTransactionParty2;
    function Get_RltdAgts: IXMLTransactionAgents2;
    function Get_Purp: IXMLPurpose2Choice;
    function Get_RltdRmtInf: IXMLRemittanceLocation2List;
    function Get_RmtInf: IXMLRemittanceInformation5;
    function Get_RltdDts: IXMLTransactionDates2;
    function Get_RltdPric: IXMLTransactionPrice2Choice;
    function Get_RltdQties: IXMLTransactionQuantities1ChoiceList;
    function Get_FinInstrmId: IXMLSecurityIdentification4Choice;
    function Get_Tax: IXMLTaxInformation3;
    function Get_RtrInf: IXMLReturnReasonInformation10;
    function Get_CorpActn: IXMLCorporateAction1;
    function Get_SfkpgAcct: IXMLCashAccount16;
    function Get_AddtlTxInf: UnicodeString;
    procedure Set_AddtlTxInf(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEntryTransaction2List }

  TXMLEntryTransaction2List = class(TXMLNodeCollection, IXMLEntryTransaction2List)
  protected
    { IXMLEntryTransaction2List }
    function Add: IXMLEntryTransaction2;
    function Insert(const Index: Integer): IXMLEntryTransaction2;

    function Get_Item(Index: Integer): IXMLEntryTransaction2;
  end;

{ TXMLTransactionReferences2 }

  TXMLTransactionReferences2 = class(TXMLNode, IXMLTransactionReferences2)
  protected
    { IXMLTransactionReferences2 }
    function Get_MsgId: UnicodeString;
    function Get_AcctSvcrRef: UnicodeString;
    function Get_PmtInfId: UnicodeString;
    function Get_InstrId: UnicodeString;
    function Get_EndToEndId: UnicodeString;
    function Get_TxId: UnicodeString;
    function Get_MndtId: UnicodeString;
    function Get_ChqNb: UnicodeString;
    function Get_ClrSysRef: UnicodeString;
    function Get_Prtry: IXMLProprietaryReference1;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_AcctSvcrRef(Value: UnicodeString);
    procedure Set_PmtInfId(Value: UnicodeString);
    procedure Set_InstrId(Value: UnicodeString);
    procedure Set_EndToEndId(Value: UnicodeString);
    procedure Set_TxId(Value: UnicodeString);
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_ChqNb(Value: UnicodeString);
    procedure Set_ClrSysRef(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryReference1 }

  TXMLProprietaryReference1 = class(TXMLNode, IXMLProprietaryReference1)
  protected
    { IXMLProprietaryReference1 }
    function Get_Tp: UnicodeString;
    function Get_Ref: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Ref(Value: UnicodeString);
  end;

{ TXMLTransactionParty2 }

  TXMLTransactionParty2 = class(TXMLNode, IXMLTransactionParty2)
  private
    FPrtry: IXMLProprietaryParty2List;
  protected
    { IXMLTransactionParty2 }
    function Get_InitgPty: IXMLPartyIdentification32;
    function Get_Dbtr: IXMLPartyIdentification32;
    function Get_DbtrAcct: IXMLCashAccount16;
    function Get_UltmtDbtr: IXMLPartyIdentification32;
    function Get_Cdtr: IXMLPartyIdentification32;
    function Get_CdtrAcct: IXMLCashAccount16;
    function Get_UltmtCdtr: IXMLPartyIdentification32;
    function Get_TradgPty: IXMLPartyIdentification32;
    function Get_Prtry: IXMLProprietaryParty2List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryParty2 }

  TXMLProprietaryParty2 = class(TXMLNode, IXMLProprietaryParty2)
  protected
    { IXMLProprietaryParty2 }
    function Get_Tp: UnicodeString;
    function Get_Pty: IXMLPartyIdentification32;
    procedure Set_Tp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryParty2List }

  TXMLProprietaryParty2List = class(TXMLNodeCollection, IXMLProprietaryParty2List)
  protected
    { IXMLProprietaryParty2List }
    function Add: IXMLProprietaryParty2;
    function Insert(const Index: Integer): IXMLProprietaryParty2;

    function Get_Item(Index: Integer): IXMLProprietaryParty2;
  end;

{ TXMLTransactionAgents2 }

  TXMLTransactionAgents2 = class(TXMLNode, IXMLTransactionAgents2)
  private
    FPrtry: IXMLProprietaryAgent2List;
  protected
    { IXMLTransactionAgents2 }
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IntrmyAgt1: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IntrmyAgt2: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IntrmyAgt3: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_RcvgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_DlvrgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_IssgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_SttlmPlc: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Prtry: IXMLProprietaryAgent2List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryAgent2 }

  TXMLProprietaryAgent2 = class(TXMLNode, IXMLProprietaryAgent2)
  protected
    { IXMLProprietaryAgent2 }
    function Get_Tp: UnicodeString;
    function Get_Agt: IXMLBranchAndFinancialInstitutionIdentification4;
    procedure Set_Tp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryAgent2List }

  TXMLProprietaryAgent2List = class(TXMLNodeCollection, IXMLProprietaryAgent2List)
  protected
    { IXMLProprietaryAgent2List }
    function Add: IXMLProprietaryAgent2;
    function Insert(const Index: Integer): IXMLProprietaryAgent2;

    function Get_Item(Index: Integer): IXMLProprietaryAgent2;
  end;

{ TXMLPurpose2Choice }

  TXMLPurpose2Choice = class(TXMLNode, IXMLPurpose2Choice)
  protected
    { IXMLPurpose2Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLRemittanceLocation2 }

  TXMLRemittanceLocation2 = class(TXMLNode, IXMLRemittanceLocation2)
  protected
    { IXMLRemittanceLocation2 }
    function Get_RmtId: UnicodeString;
    function Get_RmtLctnMtd: UnicodeString;
    function Get_RmtLctnElctrncAdr: UnicodeString;
    function Get_RmtLctnPstlAdr: IXMLNameAndAddress10;
    procedure Set_RmtId(Value: UnicodeString);
    procedure Set_RmtLctnMtd(Value: UnicodeString);
    procedure Set_RmtLctnElctrncAdr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRemittanceLocation2List }

  TXMLRemittanceLocation2List = class(TXMLNodeCollection, IXMLRemittanceLocation2List)
  protected
    { IXMLRemittanceLocation2List }
    function Add: IXMLRemittanceLocation2;
    function Insert(const Index: Integer): IXMLRemittanceLocation2;

    function Get_Item(Index: Integer): IXMLRemittanceLocation2;
  end;

{ TXMLNameAndAddress10 }

  TXMLNameAndAddress10 = class(TXMLNode, IXMLNameAndAddress10)
  protected
    { IXMLNameAndAddress10 }
    function Get_Nm: UnicodeString;
    function Get_Adr: IXMLPostalAddress6;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransactionDates2 }

  TXMLTransactionDates2 = class(TXMLNode, IXMLTransactionDates2)
  private
    FPrtry: IXMLProprietaryDate2List;
  protected
    { IXMLTransactionDates2 }
    function Get_AccptncDtTm: UnicodeString;
    function Get_TradActvtyCtrctlSttlmDt: UnicodeString;
    function Get_TradDt: UnicodeString;
    function Get_IntrBkSttlmDt: UnicodeString;
    function Get_StartDt: UnicodeString;
    function Get_EndDt: UnicodeString;
    function Get_TxDtTm: UnicodeString;
    function Get_Prtry: IXMLProprietaryDate2List;
    procedure Set_AccptncDtTm(Value: UnicodeString);
    procedure Set_TradActvtyCtrctlSttlmDt(Value: UnicodeString);
    procedure Set_TradDt(Value: UnicodeString);
    procedure Set_IntrBkSttlmDt(Value: UnicodeString);
    procedure Set_StartDt(Value: UnicodeString);
    procedure Set_EndDt(Value: UnicodeString);
    procedure Set_TxDtTm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryDate2 }

  TXMLProprietaryDate2 = class(TXMLNode, IXMLProprietaryDate2)
  protected
    { IXMLProprietaryDate2 }
    function Get_Tp: UnicodeString;
    function Get_Dt: IXMLDateAndDateTimeChoice;
    procedure Set_Tp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryDate2List }

  TXMLProprietaryDate2List = class(TXMLNodeCollection, IXMLProprietaryDate2List)
  protected
    { IXMLProprietaryDate2List }
    function Add: IXMLProprietaryDate2;
    function Insert(const Index: Integer): IXMLProprietaryDate2;

    function Get_Item(Index: Integer): IXMLProprietaryDate2;
  end;

{ TXMLTransactionPrice2Choice }

  TXMLTransactionPrice2Choice = class(TXMLNode, IXMLTransactionPrice2Choice)
  private
    FPrtry: IXMLProprietaryPrice2List;
  protected
    { IXMLTransactionPrice2Choice }
    function Get_DealPric: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Prtry: IXMLProprietaryPrice2List;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryPrice2 }

  TXMLProprietaryPrice2 = class(TXMLNode, IXMLProprietaryPrice2)
  protected
    { IXMLProprietaryPrice2 }
    function Get_Tp: UnicodeString;
    function Get_Pric: IXMLActiveOrHistoricCurrencyAndAmount;
    procedure Set_Tp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLProprietaryPrice2List }

  TXMLProprietaryPrice2List = class(TXMLNodeCollection, IXMLProprietaryPrice2List)
  protected
    { IXMLProprietaryPrice2List }
    function Add: IXMLProprietaryPrice2;
    function Insert(const Index: Integer): IXMLProprietaryPrice2;

    function Get_Item(Index: Integer): IXMLProprietaryPrice2;
  end;

{ TXMLTransactionQuantities1Choice }

  TXMLTransactionQuantities1Choice = class(TXMLNode, IXMLTransactionQuantities1Choice)
  protected
    { IXMLTransactionQuantities1Choice }
    function Get_Qty: IXMLFinancialInstrumentQuantityChoice;
    function Get_Prtry: IXMLProprietaryQuantity1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransactionQuantities1ChoiceList }

  TXMLTransactionQuantities1ChoiceList = class(TXMLNodeCollection, IXMLTransactionQuantities1ChoiceList)
  protected
    { IXMLTransactionQuantities1ChoiceList }
    function Add: IXMLTransactionQuantities1Choice;
    function Insert(const Index: Integer): IXMLTransactionQuantities1Choice;

    function Get_Item(Index: Integer): IXMLTransactionQuantities1Choice;
  end;

{ TXMLFinancialInstrumentQuantityChoice }

  TXMLFinancialInstrumentQuantityChoice = class(TXMLNode, IXMLFinancialInstrumentQuantityChoice)
  protected
    { IXMLFinancialInstrumentQuantityChoice }
    function Get_Unit_: UnicodeString;
    function Get_FaceAmt: UnicodeString;
    function Get_AmtsdVal: UnicodeString;
    procedure Set_Unit_(Value: UnicodeString);
    procedure Set_FaceAmt(Value: UnicodeString);
    procedure Set_AmtsdVal(Value: UnicodeString);
  end;

{ TXMLProprietaryQuantity1 }

  TXMLProprietaryQuantity1 = class(TXMLNode, IXMLProprietaryQuantity1)
  protected
    { IXMLProprietaryQuantity1 }
    function Get_Tp: UnicodeString;
    function Get_Qty: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Qty(Value: UnicodeString);
  end;

{ TXMLSecurityIdentification4Choice }

  TXMLSecurityIdentification4Choice = class(TXMLNode, IXMLSecurityIdentification4Choice)
  protected
    { IXMLSecurityIdentification4Choice }
    function Get_ISIN: UnicodeString;
    function Get_Prtry: IXMLAlternateSecurityIdentification2;
    procedure Set_ISIN(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAlternateSecurityIdentification2 }

  TXMLAlternateSecurityIdentification2 = class(TXMLNode, IXMLAlternateSecurityIdentification2)
  protected
    { IXMLAlternateSecurityIdentification2 }
    function Get_Tp: UnicodeString;
    function Get_Id: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLTaxInformation3 }

  TXMLTaxInformation3 = class(TXMLNode, IXMLTaxInformation3)
  private
    FRcrd: IXMLTaxRecord1List;
  protected
    { IXMLTaxInformation3 }
    function Get_Cdtr: IXMLTaxParty1;
    function Get_Dbtr: IXMLTaxParty2;
    function Get_AdmstnZn: UnicodeString;
    function Get_RefNb: UnicodeString;
    function Get_Mtd: UnicodeString;
    function Get_TtlTaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_TtlTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Dt: UnicodeString;
    function Get_SeqNb: UnicodeString;
    function Get_Rcrd: IXMLTaxRecord1List;
    procedure Set_AdmstnZn(Value: UnicodeString);
    procedure Set_RefNb(Value: UnicodeString);
    procedure Set_Mtd(Value: UnicodeString);
    procedure Set_Dt(Value: UnicodeString);
    procedure Set_SeqNb(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxParty1 }

  TXMLTaxParty1 = class(TXMLNode, IXMLTaxParty1)
  protected
    { IXMLTaxParty1 }
    function Get_TaxId: UnicodeString;
    function Get_RegnId: UnicodeString;
    function Get_TaxTp: UnicodeString;
    procedure Set_TaxId(Value: UnicodeString);
    procedure Set_RegnId(Value: UnicodeString);
    procedure Set_TaxTp(Value: UnicodeString);
  end;

{ TXMLTaxParty2 }

  TXMLTaxParty2 = class(TXMLNode, IXMLTaxParty2)
  protected
    { IXMLTaxParty2 }
    function Get_TaxId: UnicodeString;
    function Get_RegnId: UnicodeString;
    function Get_TaxTp: UnicodeString;
    function Get_Authstn: IXMLTaxAuthorisation1;
    procedure Set_TaxId(Value: UnicodeString);
    procedure Set_RegnId(Value: UnicodeString);
    procedure Set_TaxTp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxAuthorisation1 }

  TXMLTaxAuthorisation1 = class(TXMLNode, IXMLTaxAuthorisation1)
  protected
    { IXMLTaxAuthorisation1 }
    function Get_Titl: UnicodeString;
    function Get_Nm: UnicodeString;
    procedure Set_Titl(Value: UnicodeString);
    procedure Set_Nm(Value: UnicodeString);
  end;

{ TXMLTaxRecord1 }

  TXMLTaxRecord1 = class(TXMLNode, IXMLTaxRecord1)
  protected
    { IXMLTaxRecord1 }
    function Get_Tp: UnicodeString;
    function Get_Ctgy: UnicodeString;
    function Get_CtgyDtls: UnicodeString;
    function Get_DbtrSts: UnicodeString;
    function Get_CertId: UnicodeString;
    function Get_FrmsCd: UnicodeString;
    function Get_Prd: IXMLTaxPeriod1;
    function Get_TaxAmt: IXMLTaxAmount1;
    function Get_AddtlInf: UnicodeString;
    procedure Set_Tp(Value: UnicodeString);
    procedure Set_Ctgy(Value: UnicodeString);
    procedure Set_CtgyDtls(Value: UnicodeString);
    procedure Set_DbtrSts(Value: UnicodeString);
    procedure Set_CertId(Value: UnicodeString);
    procedure Set_FrmsCd(Value: UnicodeString);
    procedure Set_AddtlInf(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxRecord1List }

  TXMLTaxRecord1List = class(TXMLNodeCollection, IXMLTaxRecord1List)
  protected
    { IXMLTaxRecord1List }
    function Add: IXMLTaxRecord1;
    function Insert(const Index: Integer): IXMLTaxRecord1;

    function Get_Item(Index: Integer): IXMLTaxRecord1;
  end;

{ TXMLTaxPeriod1 }

  TXMLTaxPeriod1 = class(TXMLNode, IXMLTaxPeriod1)
  protected
    { IXMLTaxPeriod1 }
    function Get_Yr: UnicodeString;
    function Get_Tp: UnicodeString;
    function Get_FrToDt: IXMLDatePeriodDetails;
    procedure Set_Yr(Value: UnicodeString);
    procedure Set_Tp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDatePeriodDetails }

  TXMLDatePeriodDetails = class(TXMLNode, IXMLDatePeriodDetails)
  protected
    { IXMLDatePeriodDetails }
    function Get_FrDt: UnicodeString;
    function Get_ToDt: UnicodeString;
    procedure Set_FrDt(Value: UnicodeString);
    procedure Set_ToDt(Value: UnicodeString);
  end;

{ TXMLTaxAmount1 }

  TXMLTaxAmount1 = class(TXMLNode, IXMLTaxAmount1)
  private
    FDtls: IXMLTaxRecordDetails1List;
  protected
    { IXMLTaxAmount1 }
    function Get_Rate: UnicodeString;
    function Get_TaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount;
    function Get_Dtls: IXMLTaxRecordDetails1List;
    procedure Set_Rate(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxRecordDetails1 }

  TXMLTaxRecordDetails1 = class(TXMLNode, IXMLTaxRecordDetails1)
  protected
    { IXMLTaxRecordDetails1 }
    function Get_Prd: IXMLTaxPeriod1;
    function Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTaxRecordDetails1List }

  TXMLTaxRecordDetails1List = class(TXMLNodeCollection, IXMLTaxRecordDetails1List)
  protected
    { IXMLTaxRecordDetails1List }
    function Add: IXMLTaxRecordDetails1;
    function Insert(const Index: Integer): IXMLTaxRecordDetails1;

    function Get_Item(Index: Integer): IXMLTaxRecordDetails1;
  end;

{ TXMLReturnReasonInformation10 }

  TXMLReturnReasonInformation10 = class(TXMLNode, IXMLReturnReasonInformation10)
  private
    FAddtlInf: IXMLMax105TextList;
  protected
    { IXMLReturnReasonInformation10 }
    function Get_OrgnlBkTxCd: IXMLBankTransactionCodeStructure4;
    function Get_Orgtr: IXMLPartyIdentification32;
    function Get_Rsn: IXMLReturnReason5Choice;
    function Get_AddtlInf: IXMLMax105TextList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReturnReason5Choice }

  TXMLReturnReason5Choice = class(TXMLNode, IXMLReturnReason5Choice)
  protected
    { IXMLReturnReason5Choice }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLCorporateAction1 }

  TXMLCorporateAction1 = class(TXMLNode, IXMLCorporateAction1)
  protected
    { IXMLCorporateAction1 }
    function Get_Cd: UnicodeString;
    function Get_Nb: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Nb(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
  end;

//************************ TSEPATypesHelper ************************************

  TSEPATypesHelper = class(TObject)
  public const
    TargetNamespace00100103 = 'urn:iso:std:iso:20022:tech:xsd:pain.001.001.03';
    TargetNamespace00200103 = 'urn:iso:std:iso:20022:tech:xsd:pain.002.001.03';
    TargetNamespace00700102 = 'urn:iso:std:iso:20022:tech:xsd:pain.007.001.02';
    TargetNamespace00800102 = 'urn:iso:std:iso:20022:tech:xsd:pain.008.001.02';
    TargetNamespace05200102 = 'urn:iso:std:iso:20022:tech:xsd:camt.052.001.02';
  public
    //class function GetDocument00100103(Doc: IXMLDocument00100103): IXMLDocument00100103;
    class function LoadDocument00100103(const FileName: string): IXMLDocument00100103;
    class function NewDocument00100103: IXMLDocument00100103;
    //class function GetDocument00200103(Doc: IXMLDocument00200103): IXMLDocument00200103;
    class function LoadDocument00200103(const FileName: string): IXMLDocument00200103;
    class function NewDocument00200103: IXMLDocument00200103;
    //class function GetDocument00700102(Doc: IXMLDocument00700102): IXMLDocument007001022;
    class function LoadDocument00700102(const FileName: string): IXMLDocument00700102;
    class function NewDocument00700102: IXMLDocument00700102;
    //class function GetDocument00800102(Doc: IXMLDocument00800102): IXMLDocument00800102;
    class function LoadDocument00800102(const FileName: string): IXMLDocument00800102;
    class function NewDocument00800102: IXMLDocument00800102;
    //class function GetDocument05200102(Doc: IXMLDocument05200102): IXMLDocument05200102;
    class function LoadDocument05200102(const FileName: string): IXMLDocument05200102;
    class function NewDocument05200102: IXMLDocument05200102;
  end;

implementation

uses Xml.xmlutil;

{ TSEPATypesHelper }

//class function TSEPATypesHelper.GetDocument00100103(Doc: IXMLDocument00100103): IXMLDocument00100103;
//begin
//  Result := Doc.GetDocBinding('Document', TXMLDocument00100103, TargetNamespace00100103) as IXMLDocument00100103;
//end;

//function GetDocument(Doc: IXMLDocument00200103): IXMLDocument00200103;
//begin
//  Result := Doc.GetDocBinding('Document', TXMLDocument00200103, TargetNamespace) as IXMLDocument00200103;
//end;

//function GetDocument(Doc: IXMLDocument00700102): IXMLDocument00700102;
//begin
//  Result := Doc.GetDocBinding('Document', TXMLDocument00700102, TargetNamespace) as IXMLDocument00700102;
//end;

//function GetDocument(Doc: IXMLDocument00800102): IXMLDocument00800102;
//begin
//  Result := Doc.GetDocBinding('Document', TXMLDocument00800102, TargetNamespace) as IXMLDocument00800102;
//end;

class function TSEPATypesHelper.LoadDocument00100103(
  const FileName: string): IXMLDocument00100103;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Document', TXMLDocument00100103, TargetNamespace00100103) as IXMLDocument00100103;
end;

class function TSEPATypesHelper.LoadDocument00200103(
  const FileName: string): IXMLDocument00200103;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Document', TXMLDocument00200103, TargetNamespace00200103) as IXMLDocument00200103;
end;

class function TSEPATypesHelper.LoadDocument00700102(
  const FileName: string): IXMLDocument00700102;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Document', TXMLDocument00700102, TargetNamespace00700102) as IXMLDocument00700102;
end;

class function TSEPATypesHelper.LoadDocument00800102(
  const FileName: string): IXMLDocument00800102;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Document', TXMLDocument00800102, TargetNamespace00800102) as IXMLDocument00800102;
end;

class function TSEPATypesHelper.LoadDocument05200102(
  const FileName: string): IXMLDocument05200102;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Document', TXMLDocument05200102, TargetNamespace05200102) as IXMLDocument05200102;
end;

class function TSEPATypesHelper.NewDocument00800102: IXMLDocument00800102;
begin
  Result := NewXMLDocument.GetDocBinding('Document', TXMLDocument00800102, TargetNamespace00800102) as IXMLDocument00800102;
end;

class function TSEPATypesHelper.NewDocument05200102: IXMLDocument05200102;
begin
  Result := NewXMLDocument.GetDocBinding('Document', TXMLDocument05200102, TargetNamespace05200102) as IXMLDocument05200102;
end;

class function TSEPATypesHelper.NewDocument00100103: IXMLDocument00100103;
begin
  Result := NewXMLDocument.GetDocBinding('Document', TXMLDocument00100103, TargetNamespace00100103) as IXMLDocument00100103;
end;

class function TSEPATypesHelper.NewDocument00200103: IXMLDocument00200103;
begin
  Result := NewXMLDocument.GetDocBinding('Document', TXMLDocument00200103, TargetNamespace00200103) as IXMLDocument00200103;
end;

class function TSEPATypesHelper.NewDocument00700102: IXMLDocument00700102;
begin
  Result := NewXMLDocument.GetDocBinding('Document', TXMLDocument00700102, TargetNamespace00700102) as IXMLDocument00700102;
end;

//************************ pain.001.001.03_GBIC_2.xsd **************************

{ TXMLDocument00100103 }

procedure TXMLDocument00100103.AfterConstruction;
begin
  RegisterChildNode('CstmrCdtTrfInitn', TXMLCustomerCreditTransferInitiationV03);
  inherited;
end;

function TXMLDocument00100103.Get_CstmrCdtTrfInitn: IXMLCustomerCreditTransferInitiationV03;
begin
  Result := ChildNodes['CstmrCdtTrfInitn'] as IXMLCustomerCreditTransferInitiationV03;
end;

{ TXMLCustomerCreditTransferInitiationV03 }

procedure TXMLCustomerCreditTransferInitiationV03.AfterConstruction;
begin
  RegisterChildNode('GrpHdr', TXMLGroupHeaderSCT);
  RegisterChildNode('PmtInf', TXMLPaymentInstructionInformationSCT);
  FPmtInf := CreateCollection(TXMLPaymentInstructionInformationSCTList, IXMLPaymentInstructionInformationSCT, 'PmtInf') as IXMLPaymentInstructionInformationSCTList;
  inherited;
end;

function TXMLCustomerCreditTransferInitiationV03.Get_GrpHdr: IXMLGroupHeaderSCT;
begin
  Result := ChildNodes['GrpHdr'] as IXMLGroupHeaderSCT;
end;

function TXMLCustomerCreditTransferInitiationV03.Get_PmtInf: IXMLPaymentInstructionInformationSCTList;
begin
  Result := FPmtInf;
end;

{ TXMLGroupHeaderSCT }

procedure TXMLGroupHeaderSCT.AfterConstruction;
begin
  RegisterChildNode('InitgPty', TXMLPartyIdentificationSEPA1);
  inherited;
end;

function TXMLGroupHeaderSCT.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLGroupHeaderSCT.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLGroupHeaderSCT.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLGroupHeaderSCT.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLGroupHeaderSCT.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLGroupHeaderSCT.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLGroupHeaderSCT.Get_CtrlSum: UnicodeString;
begin
  Result := ChildNodes['CtrlSum'].Text;
end;

procedure TXMLGroupHeaderSCT.Set_CtrlSum(Value: UnicodeString);
begin
  ChildNodes['CtrlSum'].NodeValue := Value;
end;

function TXMLGroupHeaderSCT.Get_InitgPty: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['InitgPty'] as IXMLPartyIdentificationSEPA1;
end;

{ TXMLPartyIdentificationSEPA1 }

procedure TXMLPartyIdentificationSEPA1.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLPartySEPAChoice);
  inherited;
end;

function TXMLPartyIdentificationSEPA1.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentificationSEPA1.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentificationSEPA1.Get_Id: IXMLPartySEPAChoice;
begin
  Result := ChildNodes['Id'] as IXMLPartySEPAChoice;
end;

{ TXMLPartySEPAChoice }

procedure TXMLPartySEPAChoice.AfterConstruction;
begin
  RegisterChildNode('OrgId', TXMLOrganisationIdentificationSEPAChoice);
  RegisterChildNode('PrvtId', TXMLPersonIdentificationSEPA1Choice);
  inherited;
end;

function TXMLPartySEPAChoice.Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
begin
  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentificationSEPAChoice;
end;

function TXMLPartySEPAChoice.Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
begin
  Result := ChildNodes['PrvtId'] as IXMLPersonIdentificationSEPA1Choice;
end;

{ TXMLOrganisationIdentificationSEPAChoice }

procedure TXMLOrganisationIdentificationSEPAChoice.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
  inherited;
end;

function TXMLOrganisationIdentificationSEPAChoice.Get_BICOrBEI: UnicodeString;
begin
  Result := ChildNodes['BICOrBEI'].Text;
end;

procedure TXMLOrganisationIdentificationSEPAChoice.Set_BICOrBEI(Value: UnicodeString);
begin
  ChildNodes['BICOrBEI'].NodeValue := Value;
end;

function TXMLOrganisationIdentificationSEPAChoice.Get_Othr: IXMLGenericOrganisationIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericOrganisationIdentification1;
end;

{ TXMLGenericOrganisationIdentification1 }

procedure TXMLGenericOrganisationIdentification1.AfterConstruction;
begin
  RegisterChildNode('SchmeNm', TXMLOrganisationIdentificationSchemeName1Choice);
  inherited;
end;

function TXMLGenericOrganisationIdentification1.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericOrganisationIdentification1.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLGenericOrganisationIdentification1.Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
begin
  Result := ChildNodes['SchmeNm'] as IXMLOrganisationIdentificationSchemeName1Choice;
end;

function TXMLGenericOrganisationIdentification1.Get_Issr: UnicodeString;
begin
  Result := ChildNodes['Issr'].Text;
end;

procedure TXMLGenericOrganisationIdentification1.Set_Issr(Value: UnicodeString);
begin
  ChildNodes['Issr'].NodeValue := Value;
end;

{ TXMLOrganisationIdentificationSchemeName1Choice }

function TXMLOrganisationIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLOrganisationIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLPersonIdentificationSEPA1Choice }

procedure TXMLPersonIdentificationSEPA1Choice.AfterConstruction;
begin
  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
  inherited;
end;

function TXMLPersonIdentificationSEPA1Choice.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
begin
  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
end;

function TXMLPersonIdentificationSEPA1Choice.Get_Othr: IXMLGenericPersonIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1;
end;

{ TXMLDateAndPlaceOfBirth }

function TXMLDateAndPlaceOfBirth.Get_BirthDt: UnicodeString;
begin
  Result := ChildNodes['BirthDt'].Text;
end;

procedure TXMLDateAndPlaceOfBirth.Set_BirthDt(Value: UnicodeString);
begin
  ChildNodes['BirthDt'].NodeValue := Value;
end;

function TXMLDateAndPlaceOfBirth.Get_PrvcOfBirth: UnicodeString;
begin
  Result := ChildNodes['PrvcOfBirth'].Text;
end;

procedure TXMLDateAndPlaceOfBirth.Set_PrvcOfBirth(Value: UnicodeString);
begin
  ChildNodes['PrvcOfBirth'].NodeValue := Value;
end;

function TXMLDateAndPlaceOfBirth.Get_CityOfBirth: UnicodeString;
begin
  Result := ChildNodes['CityOfBirth'].Text;
end;

procedure TXMLDateAndPlaceOfBirth.Set_CityOfBirth(Value: UnicodeString);
begin
  ChildNodes['CityOfBirth'].NodeValue := Value;
end;

function TXMLDateAndPlaceOfBirth.Get_CtryOfBirth: UnicodeString;
begin
  Result := ChildNodes['CtryOfBirth'].Text;
end;

procedure TXMLDateAndPlaceOfBirth.Set_CtryOfBirth(Value: UnicodeString);
begin
  ChildNodes['CtryOfBirth'].NodeValue := Value;
end;

{ TXMLGenericPersonIdentification1 }

procedure TXMLGenericPersonIdentification1.AfterConstruction;
begin
  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice);
  inherited;
end;

function TXMLGenericPersonIdentification1.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericPersonIdentification1.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLGenericPersonIdentification1.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
begin
  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice;
end;

function TXMLGenericPersonIdentification1.Get_Issr: UnicodeString;
begin
  Result := ChildNodes['Issr'].Text;
end;

procedure TXMLGenericPersonIdentification1.Set_Issr(Value: UnicodeString);
begin
  ChildNodes['Issr'].NodeValue := Value;
end;

{ TXMLPersonIdentificationSchemeName1Choice }

function TXMLPersonIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLPersonIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLPersonIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLPersonIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLPaymentInstructionInformationSCT }

procedure TXMLPaymentInstructionInformationSCT.AfterConstruction;
begin
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformationSCT1);
  RegisterChildNode('Dbtr', TXMLPartyIdentificationSEPA2);
  RegisterChildNode('DbtrAcct', TXMLCashAccountSEPA1);
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA3);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('CdtTrfTxInf', TXMLCreditTransferTransactionInformationSCT);
  FCdtTrfTxInf := CreateCollection(TXMLCreditTransferTransactionInformationSCTList, IXMLCreditTransferTransactionInformationSCT, 'CdtTrfTxInf') as IXMLCreditTransferTransactionInformationSCTList;
  inherited;
end;

function TXMLPaymentInstructionInformationSCT.Get_PmtInfId: UnicodeString;
begin
  Result := ChildNodes['PmtInfId'].Text;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_PmtInfId(Value: UnicodeString);
begin
  ChildNodes['PmtInfId'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_PmtMtd: UnicodeString;
begin
  Result := ChildNodes['PmtMtd'].Text;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_PmtMtd(Value: UnicodeString);
begin
  ChildNodes['PmtMtd'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_BtchBookg: Boolean;
begin
  Result := ChildNodes['BtchBookg'].NodeValue;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_BtchBookg(Value: Boolean);
begin
  ChildNodes['BtchBookg'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_CtrlSum: UnicodeString;
begin
  Result := ChildNodes['CtrlSum'].Text;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_CtrlSum(Value: UnicodeString);
begin
  ChildNodes['CtrlSum'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_PmtTpInf: IXMLPaymentTypeInformationSCT1;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformationSCT1;
end;

function TXMLPaymentInstructionInformationSCT.Get_ReqdExctnDt: UnicodeString;
begin
  Result := ChildNodes['ReqdExctnDt'].Text;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_ReqdExctnDt(Value: UnicodeString);
begin
  ChildNodes['ReqdExctnDt'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_Dbtr: IXMLPartyIdentificationSEPA2;
begin
  Result := ChildNodes['Dbtr'] as IXMLPartyIdentificationSEPA2;
end;

function TXMLPaymentInstructionInformationSCT.Get_DbtrAcct: IXMLCashAccountSEPA1;
begin
  Result := ChildNodes['DbtrAcct'] as IXMLCashAccountSEPA1;
end;

function TXMLPaymentInstructionInformationSCT.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
end;

function TXMLPaymentInstructionInformationSCT.Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLPaymentInstructionInformationSCT.Get_ChrgBr: UnicodeString;
begin
  Result := ChildNodes['ChrgBr'].Text;
end;

procedure TXMLPaymentInstructionInformationSCT.Set_ChrgBr(Value: UnicodeString);
begin
  ChildNodes['ChrgBr'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSCT.Get_CdtTrfTxInf: IXMLCreditTransferTransactionInformationSCTList;
begin
  Result := FCdtTrfTxInf;
end;

{ TXMLPaymentInstructionInformationSCTList }

function TXMLPaymentInstructionInformationSCTList.Add: IXMLPaymentInstructionInformationSCT;
begin
  Result := AddItem(-1) as IXMLPaymentInstructionInformationSCT;
end;

function TXMLPaymentInstructionInformationSCTList.Insert(const Index: Integer): IXMLPaymentInstructionInformationSCT;
begin
  Result := AddItem(Index) as IXMLPaymentInstructionInformationSCT;
end;

function TXMLPaymentInstructionInformationSCTList.Get_Item(Index: Integer): IXMLPaymentInstructionInformationSCT;
begin
  Result := List[Index] as IXMLPaymentInstructionInformationSCT;
end;

{ TXMLPaymentTypeInformationSCT1 }

procedure TXMLPaymentTypeInformationSCT1.AfterConstruction;
begin
  RegisterChildNode('SvcLvl', TXMLServiceLevel);
  RegisterChildNode('CtgyPurp', TXMLCategoryPurposeSEPA);
  inherited;
end;

function TXMLPaymentTypeInformationSCT1.Get_InstrPrty: UnicodeString;
begin
  Result := ChildNodes['InstrPrty'].Text;
end;

procedure TXMLPaymentTypeInformationSCT1.Set_InstrPrty(Value: UnicodeString);
begin
  ChildNodes['InstrPrty'].NodeValue := Value;
end;

function TXMLPaymentTypeInformationSCT1.Get_SvcLvl: IXMLServiceLevel;
begin
  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel;
end;

function TXMLPaymentTypeInformationSCT1.Get_CtgyPurp: IXMLCategoryPurposeSEPA;
begin
  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurposeSEPA;
end;

{ TXMLServiceLevel }

function TXMLServiceLevel.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLServiceLevel.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLCategoryPurposeSEPA }

function TXMLCategoryPurposeSEPA.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLCategoryPurposeSEPA.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLPartyIdentificationSEPA2 }

procedure TXMLPartyIdentificationSEPA2.AfterConstruction;
begin
  RegisterChildNode('PstlAdr', TXMLPostalAddressSEPA);
  RegisterChildNode('Id', TXMLPartySEPAChoice);
  inherited;
end;

function TXMLPartyIdentificationSEPA2.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentificationSEPA2.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentificationSEPA2.Get_PstlAdr: IXMLPostalAddressSEPA;
begin
  Result := ChildNodes['PstlAdr'] as IXMLPostalAddressSEPA;
end;

function TXMLPartyIdentificationSEPA2.Get_Id: IXMLPartySEPAChoice;
begin
  Result := ChildNodes['Id'] as IXMLPartySEPAChoice;
end;

{ TXMLPostalAddressSEPA }

procedure TXMLPostalAddressSEPA.AfterConstruction;
begin
  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
  inherited;
end;

function TXMLPostalAddressSEPA.Get_Ctry: UnicodeString;
begin
  Result := ChildNodes['Ctry'].Text;
end;

procedure TXMLPostalAddressSEPA.Set_Ctry(Value: UnicodeString);
begin
  ChildNodes['Ctry'].NodeValue := Value;
end;

function TXMLPostalAddressSEPA.Get_AdrLine: IXMLMax70TextList;
begin
  Result := FAdrLine;
end;

{ TXMLCashAccountSEPA1 }

procedure TXMLCashAccountSEPA1.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentificationSEPA);
  inherited;
end;

function TXMLCashAccountSEPA1.Get_Id: IXMLAccountIdentificationSEPA;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPA;
end;

function TXMLCashAccountSEPA1.Get_Ccy: UnicodeString;
begin
  Result := ChildNodes['Ccy'].Text;
end;

procedure TXMLCashAccountSEPA1.Set_Ccy(Value: UnicodeString);
begin
  ChildNodes['Ccy'].NodeValue := Value;
end;

{ TXMLAccountIdentificationSEPA }

function TXMLAccountIdentificationSEPA.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLAccountIdentificationSEPA.Set_IBAN(Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

{ TXMLBranchAndFinancialInstitutionIdentificationSEPA3 }

procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA3.AfterConstruction;
begin
  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA3);
  inherited;
end;

function TXMLBranchAndFinancialInstitutionIdentificationSEPA3.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
begin
  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA3;
end;

{ TXMLFinancialInstitutionIdentificationSEPA3 }

procedure TXMLFinancialInstitutionIdentificationSEPA3.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLOthrIdentification);
  inherited;
end;

function TXMLFinancialInstitutionIdentificationSEPA3.Get_BIC: UnicodeString;
begin
  Result := ChildNodes['BIC'].Text;
end;

procedure TXMLFinancialInstitutionIdentificationSEPA3.Set_BIC(Value: UnicodeString);
begin
  ChildNodes['BIC'].NodeValue := Value;
end;

function TXMLFinancialInstitutionIdentificationSEPA3.Get_Othr: IXMLOthrIdentification;
begin
  Result := ChildNodes['Othr'] as IXMLOthrIdentification;
end;

{ TXMLOthrIdentification }

function TXMLOthrIdentification.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLOthrIdentification.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

{ TXMLCreditTransferTransactionInformationSCT }

procedure TXMLCreditTransferTransactionInformationSCT.AfterConstruction;
begin
  RegisterChildNode('PmtId', TXMLPaymentIdentificationSEPA);
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformationSCT2);
  RegisterChildNode('Amt', TXMLAmountTypeSEPA);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA1);
  RegisterChildNode('Cdtr', TXMLPartyIdentificationSEPA2);
  RegisterChildNode('CdtrAcct', TXMLCashAccountSEPA2);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('Purp', TXMLPurposeSEPA);
  RegisterChildNode('RmtInf', TXMLRemittanceInformationSEPA1Choice);
  inherited;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_PmtId: IXMLPaymentIdentificationSEPA;
begin
  Result := ChildNodes['PmtId'] as IXMLPaymentIdentificationSEPA;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_PmtTpInf: IXMLPaymentTypeInformationSCT2;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformationSCT2;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_Amt: IXMLAmountTypeSEPA;
begin
  Result := ChildNodes['Amt'] as IXMLAmountTypeSEPA;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_ChrgBr: UnicodeString;
begin
  Result := ChildNodes['ChrgBr'].Text;
end;

procedure TXMLCreditTransferTransactionInformationSCT.Set_ChrgBr(Value: UnicodeString);
begin
  ChildNodes['ChrgBr'].NodeValue := Value;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_Cdtr: IXMLPartyIdentificationSEPA2;
begin
  Result := ChildNodes['Cdtr'] as IXMLPartyIdentificationSEPA2;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_CdtrAcct: IXMLCashAccountSEPA2;
begin
  Result := ChildNodes['CdtrAcct'] as IXMLCashAccountSEPA2;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_Purp: IXMLPurposeSEPA;
begin
  Result := ChildNodes['Purp'] as IXMLPurposeSEPA;
end;

function TXMLCreditTransferTransactionInformationSCT.Get_RmtInf: IXMLRemittanceInformationSEPA1Choice;
begin
  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformationSEPA1Choice;
end;

{ TXMLCreditTransferTransactionInformationSCTList }

function TXMLCreditTransferTransactionInformationSCTList.Add: IXMLCreditTransferTransactionInformationSCT;
begin
  Result := AddItem(-1) as IXMLCreditTransferTransactionInformationSCT;
end;

function TXMLCreditTransferTransactionInformationSCTList.Insert(const Index: Integer): IXMLCreditTransferTransactionInformationSCT;
begin
  Result := AddItem(Index) as IXMLCreditTransferTransactionInformationSCT;
end;

function TXMLCreditTransferTransactionInformationSCTList.Get_Item(Index: Integer): IXMLCreditTransferTransactionInformationSCT;
begin
  Result := List[Index] as IXMLCreditTransferTransactionInformationSCT;
end;

{ TXMLPaymentIdentificationSEPA }

function TXMLPaymentIdentificationSEPA.Get_InstrId: UnicodeString;
begin
  Result := ChildNodes['InstrId'].Text;
end;

procedure TXMLPaymentIdentificationSEPA.Set_InstrId(Value: UnicodeString);
begin
  ChildNodes['InstrId'].NodeValue := Value;
end;

function TXMLPaymentIdentificationSEPA.Get_EndToEndId: UnicodeString;
begin
  Result := ChildNodes['EndToEndId'].Text;
end;

procedure TXMLPaymentIdentificationSEPA.Set_EndToEndId(Value: UnicodeString);
begin
  ChildNodes['EndToEndId'].NodeValue := Value;
end;

{ TXMLPaymentTypeInformationSCT2 }

procedure TXMLPaymentTypeInformationSCT2.AfterConstruction;
begin
  RegisterChildNode('SvcLvl', TXMLServiceLevel);
  RegisterChildNode('CtgyPurp', TXMLCategoryPurposeSEPA);
  inherited;
end;

function TXMLPaymentTypeInformationSCT2.Get_SvcLvl: IXMLServiceLevel;
begin
  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel;
end;

function TXMLPaymentTypeInformationSCT2.Get_CtgyPurp: IXMLCategoryPurposeSEPA;
begin
  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurposeSEPA;
end;

{ TXMLAmountTypeSEPA }

procedure TXMLAmountTypeSEPA.AfterConstruction;
begin
  RegisterChildNode('InstdAmt', TXMLActiveOrHistoricCurrencyAndAmountSEPA);
  inherited;
end;

function TXMLAmountTypeSEPA.Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
begin
  Result := ChildNodes['InstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmountSEPA;
end;

{ TXMLActiveOrHistoricCurrencyAndAmountSEPA }

function TXMLActiveOrHistoricCurrencyAndAmountSEPA.Get_Ccy: UnicodeString;
begin
  Result := AttributeNodes['Ccy'].Text;
end;

procedure TXMLActiveOrHistoricCurrencyAndAmountSEPA.Set_Ccy(Value: UnicodeString);
begin
  SetAttribute('Ccy', Value);
end;

{ TXMLBranchAndFinancialInstitutionIdentificationSEPA1 }

procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA1.AfterConstruction;
begin
  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA1);
  inherited;
end;

function TXMLBranchAndFinancialInstitutionIdentificationSEPA1.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1;
begin
  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA1;
end;

{ TXMLFinancialInstitutionIdentificationSEPA1 }

function TXMLFinancialInstitutionIdentificationSEPA1.Get_BIC: UnicodeString;
begin
  Result := ChildNodes['BIC'].Text;
end;

procedure TXMLFinancialInstitutionIdentificationSEPA1.Set_BIC(Value: UnicodeString);
begin
  ChildNodes['BIC'].NodeValue := Value;
end;

{ TXMLCashAccountSEPA2 }

procedure TXMLCashAccountSEPA2.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentificationSEPA);
  inherited;
end;

function TXMLCashAccountSEPA2.Get_Id: IXMLAccountIdentificationSEPA;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPA;
end;

{ TXMLPurposeSEPA }

function TXMLPurposeSEPA.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLPurposeSEPA.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLRemittanceInformationSEPA1Choice }

procedure TXMLRemittanceInformationSEPA1Choice.AfterConstruction;
begin
  RegisterChildNode('Strd', TXMLStructuredRemittanceInformationSEPA1);
  inherited;
end;

function TXMLRemittanceInformationSEPA1Choice.Get_Ustrd: UnicodeString;
begin
  Result := ChildNodes['Ustrd'].Text;
end;

procedure TXMLRemittanceInformationSEPA1Choice.Set_Ustrd(Value: UnicodeString);
begin
  ChildNodes['Ustrd'].NodeValue := Value;
end;

function TXMLRemittanceInformationSEPA1Choice.Get_Strd: IXMLStructuredRemittanceInformationSEPA1;
begin
  Result := ChildNodes['Strd'] as IXMLStructuredRemittanceInformationSEPA1;
end;

{ TXMLStructuredRemittanceInformationSEPA1 }

procedure TXMLStructuredRemittanceInformationSEPA1.AfterConstruction;
begin
  RegisterChildNode('CdtrRefInf', TXMLCreditorReferenceInformationSEPA1);
  inherited;
end;

function TXMLStructuredRemittanceInformationSEPA1.Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA1;
begin
  Result := ChildNodes['CdtrRefInf'] as IXMLCreditorReferenceInformationSEPA1;
end;

{ TXMLCreditorReferenceInformationSEPA1 }

procedure TXMLCreditorReferenceInformationSEPA1.AfterConstruction;
begin
  RegisterChildNode('Tp', TXMLCreditorReferenceTypeSEPA);
  inherited;
end;

function TXMLCreditorReferenceInformationSEPA1.Get_Tp: IXMLCreditorReferenceTypeSEPA;
begin
  Result := ChildNodes['Tp'] as IXMLCreditorReferenceTypeSEPA;
end;

function TXMLCreditorReferenceInformationSEPA1.Get_Ref: UnicodeString;
begin
  Result := ChildNodes['Ref'].Text;
end;

procedure TXMLCreditorReferenceInformationSEPA1.Set_Ref(Value: UnicodeString);
begin
  ChildNodes['Ref'].NodeValue := Value;
end;

{ TXMLCreditorReferenceTypeSEPA }

procedure TXMLCreditorReferenceTypeSEPA.AfterConstruction;
begin
  RegisterChildNode('CdOrPrtry', TXMLCreditorReferenceTypeCodeSEPA);
  inherited;
end;

function TXMLCreditorReferenceTypeSEPA.Get_CdOrPrtry: IXMLCreditorReferenceTypeCodeSEPA;
begin
  Result := ChildNodes['CdOrPrtry'] as IXMLCreditorReferenceTypeCodeSEPA;
end;

function TXMLCreditorReferenceTypeSEPA.Get_Issr: UnicodeString;
begin
  Result := ChildNodes['Issr'].Text;
end;

procedure TXMLCreditorReferenceTypeSEPA.Set_Issr(Value: UnicodeString);
begin
  ChildNodes['Issr'].NodeValue := Value;
end;

{ TXMLCreditorReferenceTypeCodeSEPA }

function TXMLCreditorReferenceTypeCodeSEPA.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLCreditorReferenceTypeCodeSEPA.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLMax70TextList }

function TXMLMax70TextList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLMax70TextList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLMax70TextList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

//************************ pain.002.001.03_GBIC_2.xsd **************************

{ TXMLDocument00200103 }

procedure TXMLDocument00200103.AfterConstruction;
begin
  RegisterChildNode('CstmrPmtStsRpt', TXMLCustomerPaymentStatusReportV03);
  inherited;
end;

function TXMLDocument00200103.Get_CstmrPmtStsRpt: IXMLCustomerPaymentStatusReportV03;
begin
  Result := ChildNodes['CstmrPmtStsRpt'] as IXMLCustomerPaymentStatusReportV03;
end;

{ TXMLCustomerPaymentStatusReportV03 }

procedure TXMLCustomerPaymentStatusReportV03.AfterConstruction;
begin
  RegisterChildNode('GrpHdr', TXMLGroupHeaderSEPA);
  RegisterChildNode('OrgnlGrpInfAndSts', TXMLOriginalGroupInformationSEPA);
  RegisterChildNode('OrgnlPmtInfAndSts', TXMLOriginalPaymentInformationSEPA);
  FOrgnlPmtInfAndSts := CreateCollection(TXMLOriginalPaymentInformationSEPAList, IXMLOriginalPaymentInformationSEPA, 'OrgnlPmtInfAndSts') as IXMLOriginalPaymentInformationSEPAList;
  inherited;
end;

function TXMLCustomerPaymentStatusReportV03.Get_GrpHdr: IXMLGroupHeaderSEPA;
begin
  Result := ChildNodes['GrpHdr'] as IXMLGroupHeaderSEPA;
end;

function TXMLCustomerPaymentStatusReportV03.Get_OrgnlGrpInfAndSts: IXMLOriginalGroupInformationSEPA;
begin
  Result := ChildNodes['OrgnlGrpInfAndSts'] as IXMLOriginalGroupInformationSEPA;
end;

function TXMLCustomerPaymentStatusReportV03.Get_OrgnlPmtInfAndSts: IXMLOriginalPaymentInformationSEPAList;
begin
  Result := FOrgnlPmtInfAndSts;
end;

{ TXMLGroupHeaderSEPA }

procedure TXMLGroupHeaderSEPA.AfterConstruction;
begin
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA1);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA1);
  inherited;
end;

function TXMLGroupHeaderSEPA.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLGroupHeaderSEPA.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLGroupHeaderSEPA.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLGroupHeaderSEPA.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLGroupHeaderSEPA.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
end;

function TXMLGroupHeaderSEPA.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA1;
end;

//{ TXMLBranchAndFinancialInstitutionIdentificationSEPA1 }
//
//procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA1);
//  inherited;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentificationSEPA1.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1;
//begin
//  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA1;
//end;
//
//{ TXMLFinancialInstitutionIdentificationSEPA1 }
//
//function TXMLFinancialInstitutionIdentificationSEPA1.Get_BIC: UnicodeString;
//begin
//  Result := ChildNodes['BIC'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentificationSEPA1.Set_BIC(Value: UnicodeString);
//begin
//  ChildNodes['BIC'].NodeValue := Value;
//end;
//
{ TXMLOriginalGroupInformationSEPA }

procedure TXMLOriginalGroupInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('StsRsnInf', TXMLStatusReasonInformationSEPA);
  RegisterChildNode('NbOfTxsPerSts', TXMLNumberOfTransactionsPerStatus3);
  FStsRsnInf := CreateCollection(TXMLStatusReasonInformationSEPAList, IXMLStatusReasonInformationSEPA, 'StsRsnInf') as IXMLStatusReasonInformationSEPAList;
  FNbOfTxsPerSts := CreateCollection(TXMLNumberOfTransactionsPerStatus3List, IXMLNumberOfTransactionsPerStatus3, 'NbOfTxsPerSts') as IXMLNumberOfTransactionsPerStatus3List;
  inherited;
end;

function TXMLOriginalGroupInformationSEPA.Get_OrgnlMsgId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMsgId'].Text;
end;

procedure TXMLOriginalGroupInformationSEPA.Set_OrgnlMsgId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMsgId'].NodeValue := Value;
end;

function TXMLOriginalGroupInformationSEPA.Get_OrgnlMsgNmId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMsgNmId'].Text;
end;

procedure TXMLOriginalGroupInformationSEPA.Set_OrgnlMsgNmId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMsgNmId'].NodeValue := Value;
end;

function TXMLOriginalGroupInformationSEPA.Get_OrgnlNbOfTxs: UnicodeString;
begin
  Result := ChildNodes['OrgnlNbOfTxs'].Text;
end;

procedure TXMLOriginalGroupInformationSEPA.Set_OrgnlNbOfTxs(Value: UnicodeString);
begin
  ChildNodes['OrgnlNbOfTxs'].NodeValue := Value;
end;

function TXMLOriginalGroupInformationSEPA.Get_OrgnlCtrlSum: UnicodeString;
begin
  Result := ChildNodes['OrgnlCtrlSum'].Text;
end;

procedure TXMLOriginalGroupInformationSEPA.Set_OrgnlCtrlSum(Value: UnicodeString);
begin
  ChildNodes['OrgnlCtrlSum'].NodeValue := Value;
end;

function TXMLOriginalGroupInformationSEPA.Get_GrpSts: UnicodeString;
begin
  Result := ChildNodes['GrpSts'].Text;
end;

procedure TXMLOriginalGroupInformationSEPA.Set_GrpSts(Value: UnicodeString);
begin
  ChildNodes['GrpSts'].NodeValue := Value;
end;

function TXMLOriginalGroupInformationSEPA.Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
begin
  Result := FStsRsnInf;
end;

function TXMLOriginalGroupInformationSEPA.Get_NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
begin
  Result := FNbOfTxsPerSts;
end;

{ TXMLStatusReasonInformationSEPA }

procedure TXMLStatusReasonInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('Orgtr', TXMLPartyIdentificationSEPA6Choice);
  RegisterChildNode('Rsn', TXMLStatusReasonSEPA);
  FAddtlInf := CreateCollection(TXMLMax105TextList, IXMLNode, 'AddtlInf') as IXMLMax105TextList;
  inherited;
end;

function TXMLStatusReasonInformationSEPA.Get_Orgtr: IXMLPartyIdentificationSEPA6Choice;
begin
  Result := ChildNodes['Orgtr'] as IXMLPartyIdentificationSEPA6Choice;
end;

function TXMLStatusReasonInformationSEPA.Get_Rsn: IXMLStatusReasonSEPA;
begin
  Result := ChildNodes['Rsn'] as IXMLStatusReasonSEPA;
end;

function TXMLStatusReasonInformationSEPA.Get_AddtlInf: IXMLMax105TextList;
begin
  Result := FAddtlInf;
end;

{ TXMLStatusReasonInformationSEPAList }

function TXMLStatusReasonInformationSEPAList.Add: IXMLStatusReasonInformationSEPA;
begin
  Result := AddItem(-1) as IXMLStatusReasonInformationSEPA;
end;

function TXMLStatusReasonInformationSEPAList.Insert(const Index: Integer): IXMLStatusReasonInformationSEPA;
begin
  Result := AddItem(Index) as IXMLStatusReasonInformationSEPA;
end;

function TXMLStatusReasonInformationSEPAList.Get_Item(Index: Integer): IXMLStatusReasonInformationSEPA;
begin
  Result := List[Index] as IXMLStatusReasonInformationSEPA;
end;

{ TXMLPartyIdentificationSEPA6Choice }

procedure TXMLPartyIdentificationSEPA6Choice.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLPartySEPA1);
  inherited;
end;

function TXMLPartyIdentificationSEPA6Choice.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentificationSEPA6Choice.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentificationSEPA6Choice.Get_Id: IXMLPartySEPA1;
begin
  Result := ChildNodes['Id'] as IXMLPartySEPA1;
end;

{ TXMLPartySEPA1 }

procedure TXMLPartySEPA1.AfterConstruction;
begin
  RegisterChildNode('OrgId', TXMLOrganisationIdentificationSEPA);
  inherited;
end;

function TXMLPartySEPA1.Get_OrgId: IXMLOrganisationIdentificationSEPA;
begin
  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentificationSEPA;
end;

{ TXMLOrganisationIdentificationSEPA }

function TXMLOrganisationIdentificationSEPA.Get_BICOrBEI: UnicodeString;
begin
  Result := ChildNodes['BICOrBEI'].Text;
end;

procedure TXMLOrganisationIdentificationSEPA.Set_BICOrBEI(Value: UnicodeString);
begin
  ChildNodes['BICOrBEI'].NodeValue := Value;
end;

{ TXMLStatusReasonSEPA }

function TXMLStatusReasonSEPA.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLStatusReasonSEPA.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLNumberOfTransactionsPerStatus3 }

function TXMLNumberOfTransactionsPerStatus3.Get_DtldNbOfTxs: UnicodeString;
begin
  Result := ChildNodes['DtldNbOfTxs'].Text;
end;

procedure TXMLNumberOfTransactionsPerStatus3.Set_DtldNbOfTxs(Value: UnicodeString);
begin
  ChildNodes['DtldNbOfTxs'].NodeValue := Value;
end;

function TXMLNumberOfTransactionsPerStatus3.Get_DtldSts: UnicodeString;
begin
  Result := ChildNodes['DtldSts'].Text;
end;

procedure TXMLNumberOfTransactionsPerStatus3.Set_DtldSts(Value: UnicodeString);
begin
  ChildNodes['DtldSts'].NodeValue := Value;
end;

function TXMLNumberOfTransactionsPerStatus3.Get_DtldCtrlSum: UnicodeString;
begin
  Result := ChildNodes['DtldCtrlSum'].Text;
end;

procedure TXMLNumberOfTransactionsPerStatus3.Set_DtldCtrlSum(Value: UnicodeString);
begin
  ChildNodes['DtldCtrlSum'].NodeValue := Value;
end;

{ TXMLNumberOfTransactionsPerStatus3List }

function TXMLNumberOfTransactionsPerStatus3List.Add: IXMLNumberOfTransactionsPerStatus3;
begin
  Result := AddItem(-1) as IXMLNumberOfTransactionsPerStatus3;
end;

function TXMLNumberOfTransactionsPerStatus3List.Insert(const Index: Integer): IXMLNumberOfTransactionsPerStatus3;
begin
  Result := AddItem(Index) as IXMLNumberOfTransactionsPerStatus3;
end;

function TXMLNumberOfTransactionsPerStatus3List.Get_Item(Index: Integer): IXMLNumberOfTransactionsPerStatus3;
begin
  Result := List[Index] as IXMLNumberOfTransactionsPerStatus3;
end;

{ TXMLOriginalPaymentInformationSEPA }

procedure TXMLOriginalPaymentInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('StsRsnInf', TXMLStatusReasonInformationSEPA);
  RegisterChildNode('NbOfTxsPerSts', TXMLNumberOfTransactionsPerStatus3);
  RegisterChildNode('TxInfAndSts', TXMLPaymentTransactionInformationSEPA);
  FStsRsnInf := CreateCollection(TXMLStatusReasonInformationSEPAList, IXMLStatusReasonInformationSEPA, 'StsRsnInf') as IXMLStatusReasonInformationSEPAList;
  FNbOfTxsPerSts := CreateCollection(TXMLNumberOfTransactionsPerStatus3List, IXMLNumberOfTransactionsPerStatus3, 'NbOfTxsPerSts') as IXMLNumberOfTransactionsPerStatus3List;
  FTxInfAndSts := CreateCollection(TXMLPaymentTransactionInformationSEPAList, IXMLPaymentTransactionInformationSEPA, 'TxInfAndSts') as IXMLPaymentTransactionInformationSEPAList;
  inherited;
end;

function TXMLOriginalPaymentInformationSEPA.Get_OrgnlPmtInfId: UnicodeString;
begin
  Result := ChildNodes['OrgnlPmtInfId'].Text;
end;

procedure TXMLOriginalPaymentInformationSEPA.Set_OrgnlPmtInfId(Value: UnicodeString);
begin
  ChildNodes['OrgnlPmtInfId'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformationSEPA.Get_OrgnlNbOfTxs: UnicodeString;
begin
  Result := ChildNodes['OrgnlNbOfTxs'].Text;
end;

procedure TXMLOriginalPaymentInformationSEPA.Set_OrgnlNbOfTxs(Value: UnicodeString);
begin
  ChildNodes['OrgnlNbOfTxs'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformationSEPA.Get_OrgnlCtrlSum: UnicodeString;
begin
  Result := ChildNodes['OrgnlCtrlSum'].Text;
end;

procedure TXMLOriginalPaymentInformationSEPA.Set_OrgnlCtrlSum(Value: UnicodeString);
begin
  ChildNodes['OrgnlCtrlSum'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformationSEPA.Get_PmtInfSts: UnicodeString;
begin
  Result := ChildNodes['PmtInfSts'].Text;
end;

procedure TXMLOriginalPaymentInformationSEPA.Set_PmtInfSts(Value: UnicodeString);
begin
  ChildNodes['PmtInfSts'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformationSEPA.Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
begin
  Result := FStsRsnInf;
end;

function TXMLOriginalPaymentInformationSEPA.Get_NbOfTxsPerSts: IXMLNumberOfTransactionsPerStatus3List;
begin
  Result := FNbOfTxsPerSts;
end;

function TXMLOriginalPaymentInformationSEPA.Get_TxInfAndSts: IXMLPaymentTransactionInformationSEPAList;
begin
  Result := FTxInfAndSts;
end;

{ TXMLOriginalPaymentInformationSEPAList }

function TXMLOriginalPaymentInformationSEPAList.Add: IXMLOriginalPaymentInformationSEPA;
begin
  Result := AddItem(-1) as IXMLOriginalPaymentInformationSEPA;
end;

function TXMLOriginalPaymentInformationSEPAList.Insert(const Index: Integer): IXMLOriginalPaymentInformationSEPA;
begin
  Result := AddItem(Index) as IXMLOriginalPaymentInformationSEPA;
end;

function TXMLOriginalPaymentInformationSEPAList.Get_Item(Index: Integer): IXMLOriginalPaymentInformationSEPA;
begin
  Result := List[Index] as IXMLOriginalPaymentInformationSEPA;
end;

{ TXMLPaymentTransactionInformationSEPA }

procedure TXMLPaymentTransactionInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('StsRsnInf', TXMLStatusReasonInformationSEPA);
  RegisterChildNode('OrgnlTxRef', TXMLOriginalTransactionReferenceSEPA);
  FStsRsnInf := CreateCollection(TXMLStatusReasonInformationSEPAList, IXMLStatusReasonInformationSEPA, 'StsRsnInf') as IXMLStatusReasonInformationSEPAList;
  inherited;
end;

function TXMLPaymentTransactionInformationSEPA.Get_StsId: UnicodeString;
begin
  Result := ChildNodes['StsId'].Text;
end;

procedure TXMLPaymentTransactionInformationSEPA.Set_StsId(Value: UnicodeString);
begin
  ChildNodes['StsId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformationSEPA.Get_OrgnlInstrId: UnicodeString;
begin
  Result := ChildNodes['OrgnlInstrId'].Text;
end;

procedure TXMLPaymentTransactionInformationSEPA.Set_OrgnlInstrId(Value: UnicodeString);
begin
  ChildNodes['OrgnlInstrId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformationSEPA.Get_OrgnlEndToEndId: UnicodeString;
begin
  Result := ChildNodes['OrgnlEndToEndId'].Text;
end;

procedure TXMLPaymentTransactionInformationSEPA.Set_OrgnlEndToEndId(Value: UnicodeString);
begin
  ChildNodes['OrgnlEndToEndId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformationSEPA.Get_TxSts: UnicodeString;
begin
  Result := ChildNodes['TxSts'].Text;
end;

procedure TXMLPaymentTransactionInformationSEPA.Set_TxSts(Value: UnicodeString);
begin
  ChildNodes['TxSts'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformationSEPA.Get_StsRsnInf: IXMLStatusReasonInformationSEPAList;
begin
  Result := FStsRsnInf;
end;

function TXMLPaymentTransactionInformationSEPA.Get_OrgnlTxRef: IXMLOriginalTransactionReferenceSEPA;
begin
  Result := ChildNodes['OrgnlTxRef'] as IXMLOriginalTransactionReferenceSEPA;
end;

{ TXMLPaymentTransactionInformationSEPAList }

function TXMLPaymentTransactionInformationSEPAList.Add: IXMLPaymentTransactionInformationSEPA;
begin
  Result := AddItem(-1) as IXMLPaymentTransactionInformationSEPA;
end;

function TXMLPaymentTransactionInformationSEPAList.Insert(const Index: Integer): IXMLPaymentTransactionInformationSEPA;
begin
  Result := AddItem(Index) as IXMLPaymentTransactionInformationSEPA;
end;

function TXMLPaymentTransactionInformationSEPAList.Get_Item(Index: Integer): IXMLPaymentTransactionInformationSEPA;
begin
  Result := List[Index] as IXMLPaymentTransactionInformationSEPA;
end;

{ TXMLOriginalTransactionReferenceSEPA }

procedure TXMLOriginalTransactionReferenceSEPA.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLAmountTypeSEPA);
  RegisterChildNode('CdtrSchmeId', TXMLPartyIdentificationSEPA3);
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformationSEPA);
  RegisterChildNode('MndtRltdInf', TXMLMandateRelatedInformationSEPA);
  RegisterChildNode('RmtInf', TXMLRemittanceInformationSEPA2Choice);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('Dbtr', TXMLPartyIdentificationSEPA2);
  RegisterChildNode('DbtrAcct', TXMLCashAccountSEPA1);
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA3);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA3);
  RegisterChildNode('Cdtr', TXMLPartyIdentificationSEPA2);
  RegisterChildNode('CdtrAcct', TXMLCashAccountSEPA1);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentificationSEPA1);
  inherited;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_Amt: IXMLAmountTypeSEPA;
begin
  Result := ChildNodes['Amt'] as IXMLAmountTypeSEPA;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_ReqdColltnDt: UnicodeString;
begin
  Result := ChildNodes['ReqdColltnDt'].Text;
end;

procedure TXMLOriginalTransactionReferenceSEPA.Set_ReqdColltnDt(Value: UnicodeString);
begin
  ChildNodes['ReqdColltnDt'].NodeValue := Value;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_ReqdExctnDt: UnicodeString;
begin
  Result := ChildNodes['ReqdExctnDt'].Text;
end;

procedure TXMLOriginalTransactionReferenceSEPA.Set_ReqdExctnDt(Value: UnicodeString);
begin
  ChildNodes['ReqdExctnDt'].NodeValue := Value;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
begin
  Result := ChildNodes['CdtrSchmeId'] as IXMLPartyIdentificationSEPA3;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_PmtTpInf: IXMLPaymentTypeInformationSEPA;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformationSEPA;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_PmtMtd: UnicodeString;
begin
  Result := ChildNodes['PmtMtd'].Text;
end;

procedure TXMLOriginalTransactionReferenceSEPA.Set_PmtMtd(Value: UnicodeString);
begin
  ChildNodes['PmtMtd'].NodeValue := Value;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_MndtRltdInf: IXMLMandateRelatedInformationSEPA;
begin
  Result := ChildNodes['MndtRltdInf'] as IXMLMandateRelatedInformationSEPA;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_RmtInf: IXMLRemittanceInformationSEPA2Choice;
begin
  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformationSEPA2Choice;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_Dbtr: IXMLPartyIdentificationSEPA2;
begin
  Result := ChildNodes['Dbtr'] as IXMLPartyIdentificationSEPA2;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_DbtrAcct: IXMLCashAccountSEPA1;
begin
  Result := ChildNodes['DbtrAcct'] as IXMLCashAccountSEPA1;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_Cdtr: IXMLPartyIdentificationSEPA2;
begin
  Result := ChildNodes['Cdtr'] as IXMLPartyIdentificationSEPA2;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_CdtrAcct: IXMLCashAccountSEPA1;
begin
  Result := ChildNodes['CdtrAcct'] as IXMLCashAccountSEPA1;
end;

function TXMLOriginalTransactionReferenceSEPA.Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentificationSEPA1;
end;

//{ TXMLAmountTypeSEPA }
//
//procedure TXMLAmountTypeSEPA.AfterConstruction;
//begin
//  RegisterChildNode('InstdAmt', TXMLActiveOrHistoricCurrencyAndAmountSEPA);
//  inherited;
//end;
//
//function TXMLAmountTypeSEPA.Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
//begin
//  Result := ChildNodes['InstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmountSEPA;
//end;
//
//{ TXMLActiveOrHistoricCurrencyAndAmountSEPA }
//
//function TXMLActiveOrHistoricCurrencyAndAmountSEPA.Get_Ccy: UnicodeString;
//begin
//  Result := AttributeNodes['Ccy'].Text;
//end;
//
//procedure TXMLActiveOrHistoricCurrencyAndAmountSEPA.Set_Ccy(Value: UnicodeString);
//begin
//  SetAttribute('Ccy', Value);
//end;
//
//{ TXMLPartyIdentificationSEPA3 }
//
//procedure TXMLPartyIdentificationSEPA3.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLPartySEPA2);
//  inherited;
//end;
//
//function TXMLPartyIdentificationSEPA3.Get_Id: IXMLPartySEPA2;
//begin
//  Result := ChildNodes['Id'] as IXMLPartySEPA2;
//end;
//
//{ TXMLPartySEPA2 }
//
//procedure TXMLPartySEPA2.AfterConstruction;
//begin
//  RegisterChildNode('PrvtId', TXMLPersonIdentificationSEPA2);
//  inherited;
//end;
//
//function TXMLPartySEPA2.Get_PrvtId: IXMLPersonIdentificationSEPA2;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentificationSEPA2;
//end;
//
//{ TXMLPersonIdentificationSEPA2 }
//
//procedure TXMLPersonIdentificationSEPA2.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLRestrictedPersonIdentificationSEPA);
//  inherited;
//end;
//
//function TXMLPersonIdentificationSEPA2.Get_Othr: IXMLRestrictedPersonIdentificationSEPA;
//begin
//  Result := ChildNodes['Othr'] as IXMLRestrictedPersonIdentificationSEPA;
//end;
//
//{ TXMLRestrictedPersonIdentificationSEPA }
//
//procedure TXMLRestrictedPersonIdentificationSEPA.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLRestrictedPersonIdentificationSchemeNameSEPA);
//  inherited;
//end;
//
//function TXMLRestrictedPersonIdentificationSEPA.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLRestrictedPersonIdentificationSEPA.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLRestrictedPersonIdentificationSEPA.Get_SchmeNm: IXMLRestrictedPersonIdentificationSchemeNameSEPA;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLRestrictedPersonIdentificationSchemeNameSEPA;
//end;
//
//{ TXMLRestrictedPersonIdentificationSchemeNameSEPA }
//
//function TXMLRestrictedPersonIdentificationSchemeNameSEPA.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLRestrictedPersonIdentificationSchemeNameSEPA.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
{ TXMLPaymentTypeInformationSEPA }

procedure TXMLPaymentTypeInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('SvcLvl', TXMLServiceLevel);
  RegisterChildNode('LclInstrm', TXMLLocalInstrumentSEPA);
  RegisterChildNode('CtgyPurp', TXMLCategoryPurposeSEPA);
  inherited;
end;

function TXMLPaymentTypeInformationSEPA.Get_InstrPrty: UnicodeString;
begin
  Result := ChildNodes['InstrPrty'].Text;
end;

procedure TXMLPaymentTypeInformationSEPA.Set_InstrPrty(Value: UnicodeString);
begin
  ChildNodes['InstrPrty'].NodeValue := Value;
end;

function TXMLPaymentTypeInformationSEPA.Get_SvcLvl: IXMLServiceLevel;
begin
  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel;
end;

function TXMLPaymentTypeInformationSEPA.Get_LclInstrm: IXMLLocalInstrumentSEPA;
begin
  Result := ChildNodes['LclInstrm'] as IXMLLocalInstrumentSEPA;
end;

function TXMLPaymentTypeInformationSEPA.Get_SeqTp: UnicodeString;
begin
  Result := ChildNodes['SeqTp'].Text;
end;

procedure TXMLPaymentTypeInformationSEPA.Set_SeqTp(Value: UnicodeString);
begin
  ChildNodes['SeqTp'].NodeValue := Value;
end;

function TXMLPaymentTypeInformationSEPA.Get_CtgyPurp: IXMLCategoryPurposeSEPA;
begin
  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurposeSEPA;
end;

//{ TXMLServiceLevel }
//
//function TXMLServiceLevel.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLServiceLevel.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLLocalInstrumentSEPA }
//
//function TXMLLocalInstrumentSEPA.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLLocalInstrumentSEPA.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLCategoryPurposeSEPA }
//
//function TXMLCategoryPurposeSEPA.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLCategoryPurposeSEPA.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
{ TXMLMandateRelatedInformationSEPA }

procedure TXMLMandateRelatedInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('AmdmntInfDtls', TXMLAmendmentInformationDetailsSEPA);
  inherited;
end;

function TXMLMandateRelatedInformationSEPA.Get_MndtId: UnicodeString;
begin
  Result := ChildNodes['MndtId'].Text;
end;

procedure TXMLMandateRelatedInformationSEPA.Set_MndtId(Value: UnicodeString);
begin
  ChildNodes['MndtId'].NodeValue := Value;
end;

function TXMLMandateRelatedInformationSEPA.Get_DtOfSgntr: UnicodeString;
begin
  Result := ChildNodes['DtOfSgntr'].Text;
end;

procedure TXMLMandateRelatedInformationSEPA.Set_DtOfSgntr(Value: UnicodeString);
begin
  ChildNodes['DtOfSgntr'].NodeValue := Value;
end;

function TXMLMandateRelatedInformationSEPA.Get_AmdmntInd: Boolean;
begin
  Result := ChildNodes['AmdmntInd'].NodeValue;
end;

procedure TXMLMandateRelatedInformationSEPA.Set_AmdmntInd(Value: Boolean);
begin
  ChildNodes['AmdmntInd'].NodeValue := Value;
end;

function TXMLMandateRelatedInformationSEPA.Get_AmdmntInfDtls: IXMLAmendmentInformationDetailsSEPA;
begin
  Result := ChildNodes['AmdmntInfDtls'] as IXMLAmendmentInformationDetailsSEPA;
end;

function TXMLMandateRelatedInformationSEPA.Get_ElctrncSgntr: UnicodeString;
begin
  Result := ChildNodes['ElctrncSgntr'].Text;
end;

procedure TXMLMandateRelatedInformationSEPA.Set_ElctrncSgntr(Value: UnicodeString);
begin
  ChildNodes['ElctrncSgntr'].NodeValue := Value;
end;

{ TXMLAmendmentInformationDetailsSEPA }

procedure TXMLAmendmentInformationDetailsSEPA.AfterConstruction;
begin
  RegisterChildNode('OrgnlCdtrSchmeId', TXMLPartyIdentificationSEPA4);
  RegisterChildNode('OrgnlDbtrAcct', TXMLCashAccountSEPAMandate);
  RegisterChildNode('OrgnlDbtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA2);
  inherited;
end;

function TXMLAmendmentInformationDetailsSEPA.Get_OrgnlMndtId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMndtId'].Text;
end;

procedure TXMLAmendmentInformationDetailsSEPA.Set_OrgnlMndtId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMndtId'].NodeValue := Value;
end;

function TXMLAmendmentInformationDetailsSEPA.Get_OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4;
begin
  Result := ChildNodes['OrgnlCdtrSchmeId'] as IXMLPartyIdentificationSEPA4;
end;

function TXMLAmendmentInformationDetailsSEPA.Get_OrgnlDbtrAcct: IXMLCashAccountSEPAMandate;
begin
  Result := ChildNodes['OrgnlDbtrAcct'] as IXMLCashAccountSEPAMandate;
end;

function TXMLAmendmentInformationDetailsSEPA.Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
begin
  Result := ChildNodes['OrgnlDbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
end;

//{ TXMLPartyIdentificationSEPA4 }
//
//procedure TXMLPartyIdentificationSEPA4.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLPartySEPA2);
//  inherited;
//end;
//
//function TXMLPartyIdentificationSEPA4.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentificationSEPA4.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentificationSEPA4.Get_Id: IXMLPartySEPA2;
//begin
//  Result := ChildNodes['Id'] as IXMLPartySEPA2;
//end;
//
//{ TXMLCashAccountSEPAMandate }
//
//procedure TXMLCashAccountSEPAMandate.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentificationSEPAMandate);
//  inherited;
//end;
//
//function TXMLCashAccountSEPAMandate.Get_Id: IXMLAccountIdentificationSEPAMandate;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPAMandate;
//end;
//
//{ TXMLAccountIdentificationSEPAMandate }
//
//procedure TXMLAccountIdentificationSEPAMandate.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericAccountIdentificationSEPA);
//  inherited;
//end;
//
//function TXMLAccountIdentificationSEPAMandate.Get_IBAN: UnicodeString;
//begin
//  Result := ChildNodes['IBAN'].Text;
//end;
//
//procedure TXMLAccountIdentificationSEPAMandate.Set_IBAN(Value: UnicodeString);
//begin
//  ChildNodes['IBAN'].NodeValue := Value;
//end;
//
//function TXMLAccountIdentificationSEPAMandate.Get_Othr: IXMLGenericAccountIdentificationSEPA;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericAccountIdentificationSEPA;
//end;
//
//{ TXMLGenericAccountIdentificationSEPA }
//
//function TXMLGenericAccountIdentificationSEPA.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericAccountIdentificationSEPA.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//{ TXMLBranchAndFinancialInstitutionIdentificationSEPA2 }
//
//procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA2.AfterConstruction;
//begin
//  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA2);
//  inherited;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentificationSEPA2.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2;
//begin
//  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA2;
//end;
//
//{ TXMLFinancialInstitutionIdentificationSEPA2 }
//
//function TXMLFinancialInstitutionIdentificationSEPA2.Get_BIC: UnicodeString;
//begin
//  Result := ChildNodes['BIC'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentificationSEPA2.Set_BIC(Value: UnicodeString);
//begin
//  ChildNodes['BIC'].NodeValue := Value;
//end;
//
{ TXMLRemittanceInformationSEPA2Choice }

procedure TXMLRemittanceInformationSEPA2Choice.AfterConstruction;
begin
  RegisterChildNode('Strd', TXMLStructuredRemittanceInformationSEPA2);
  inherited;
end;

function TXMLRemittanceInformationSEPA2Choice.Get_Ustrd: UnicodeString;
begin
  Result := ChildNodes['Ustrd'].Text;
end;

procedure TXMLRemittanceInformationSEPA2Choice.Set_Ustrd(Value: UnicodeString);
begin
  ChildNodes['Ustrd'].NodeValue := Value;
end;

function TXMLRemittanceInformationSEPA2Choice.Get_Strd: IXMLStructuredRemittanceInformationSEPA2;
begin
  Result := ChildNodes['Strd'] as IXMLStructuredRemittanceInformationSEPA2;
end;

{ TXMLStructuredRemittanceInformationSEPA2 }

procedure TXMLStructuredRemittanceInformationSEPA2.AfterConstruction;
begin
  RegisterChildNode('CdtrRefInf', TXMLCreditorReferenceInformationSEPA);
  inherited;
end;

function TXMLStructuredRemittanceInformationSEPA2.Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA;
begin
  Result := ChildNodes['CdtrRefInf'] as IXMLCreditorReferenceInformationSEPA;
end;

{ TXMLCreditorReferenceInformationSEPA }

procedure TXMLCreditorReferenceInformationSEPA.AfterConstruction;
begin
  RegisterChildNode('Tp', TXMLCreditorReferenceTypeSEPA);
  inherited;
end;

function TXMLCreditorReferenceInformationSEPA.Get_Tp: IXMLCreditorReferenceTypeSEPA;
begin
  Result := ChildNodes['Tp'] as IXMLCreditorReferenceTypeSEPA;
end;

function TXMLCreditorReferenceInformationSEPA.Get_Ref: UnicodeString;
begin
  Result := ChildNodes['Ref'].Text;
end;

procedure TXMLCreditorReferenceInformationSEPA.Set_Ref(Value: UnicodeString);
begin
  ChildNodes['Ref'].NodeValue := Value;
end;

//{ TXMLCreditorReferenceTypeSEPA }
//
//procedure TXMLCreditorReferenceTypeSEPA.AfterConstruction;
//begin
//  RegisterChildNode('CdOrPrtry', TXMLCreditorReferenceTypeCodeSEPA);
//  inherited;
//end;
//
//function TXMLCreditorReferenceTypeSEPA.Get_CdOrPrtry: IXMLCreditorReferenceTypeCodeSEPA;
//begin
//  Result := ChildNodes['CdOrPrtry'] as IXMLCreditorReferenceTypeCodeSEPA;
//end;
//
//function TXMLCreditorReferenceTypeSEPA.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLCreditorReferenceTypeSEPA.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLCreditorReferenceTypeCodeSEPA }
//
//function TXMLCreditorReferenceTypeCodeSEPA.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLCreditorReferenceTypeCodeSEPA.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLPartyIdentificationSEPA1 }
//
//procedure TXMLPartyIdentificationSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLPartySEPAChoice);
//  inherited;
//end;
//
//function TXMLPartyIdentificationSEPA1.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentificationSEPA1.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentificationSEPA1.Get_Id: IXMLPartySEPAChoice;
//begin
//  Result := ChildNodes['Id'] as IXMLPartySEPAChoice;
//end;
//
//{ TXMLPartySEPAChoice }
//
//procedure TXMLPartySEPAChoice.AfterConstruction;
//begin
//  RegisterChildNode('OrgId', TXMLOrganisationIdentificationSEPAChoice);
//  RegisterChildNode('PrvtId', TXMLPersonIdentificationSEPA1Choice);
//  inherited;
//end;
//
//function TXMLPartySEPAChoice.Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
//begin
//  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentificationSEPAChoice;
//end;
//
//function TXMLPartySEPAChoice.Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentificationSEPA1Choice;
//end;
//
//{ TXMLOrganisationIdentificationSEPAChoice }
//
//procedure TXMLOrganisationIdentificationSEPAChoice.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
//  inherited;
//end;
//
//function TXMLOrganisationIdentificationSEPAChoice.Get_BICOrBEI: UnicodeString;
//begin
//  Result := ChildNodes['BICOrBEI'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSEPAChoice.Set_BICOrBEI(Value: UnicodeString);
//begin
//  ChildNodes['BICOrBEI'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentificationSEPAChoice.Get_Othr: IXMLGenericOrganisationIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericOrganisationIdentification1;
//end;
//
//{ TXMLGenericOrganisationIdentification1 }
//
//procedure TXMLGenericOrganisationIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLOrganisationIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLOrganisationIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLOrganisationIdentificationSchemeName1Choice }
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLPersonIdentificationSEPA1Choice }
//
//procedure TXMLPersonIdentificationSEPA1Choice.AfterConstruction;
//begin
//  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
//  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
//  inherited;
//end;
//
//function TXMLPersonIdentificationSEPA1Choice.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
//begin
//  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
//end;
//
//function TXMLPersonIdentificationSEPA1Choice.Get_Othr: IXMLGenericPersonIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1;
//end;
//
//{ TXMLDateAndPlaceOfBirth }
//
//function TXMLDateAndPlaceOfBirth.Get_BirthDt: UnicodeString;
//begin
//  Result := ChildNodes['BirthDt'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_BirthDt(Value: UnicodeString);
//begin
//  ChildNodes['BirthDt'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_PrvcOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['PrvcOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_PrvcOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['PrvcOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CityOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CityOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CityOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CityOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CtryOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CtryOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CtryOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CtryOfBirth'].NodeValue := Value;
//end;
//
//{ TXMLGenericPersonIdentification1 }
//
//procedure TXMLGenericPersonIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericPersonIdentification1.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLPersonIdentificationSchemeName1Choice }
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLPartyIdentificationSEPA2 }
//
//procedure TXMLPartyIdentificationSEPA2.AfterConstruction;
//begin
//  RegisterChildNode('PstlAdr', TXMLPostalAddressSEPA);
//  RegisterChildNode('Id', TXMLPartySEPAChoice);
//  inherited;
//end;
//
//function TXMLPartyIdentificationSEPA2.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentificationSEPA2.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentificationSEPA2.Get_PstlAdr: IXMLPostalAddressSEPA;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddressSEPA;
//end;
//
//function TXMLPartyIdentificationSEPA2.Get_Id: IXMLPartySEPAChoice;
//begin
//  Result := ChildNodes['Id'] as IXMLPartySEPAChoice;
//end;
//
//{ TXMLPostalAddressSEPA }
//
//procedure TXMLPostalAddressSEPA.AfterConstruction;
//begin
//  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
//  inherited;
//end;
//
//function TXMLPostalAddressSEPA.Get_Ctry: UnicodeString;
//begin
//  Result := ChildNodes['Ctry'].Text;
//end;
//
//procedure TXMLPostalAddressSEPA.Set_Ctry(Value: UnicodeString);
//begin
//  ChildNodes['Ctry'].NodeValue := Value;
//end;
//
//function TXMLPostalAddressSEPA.Get_AdrLine: IXMLMax70TextList;
//begin
//  Result := FAdrLine;
//end;
//
//{ TXMLCashAccountSEPA1 }
//
//procedure TXMLCashAccountSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentificationSEPA);
//  inherited;
//end;
//
//function TXMLCashAccountSEPA1.Get_Id: IXMLAccountIdentificationSEPA;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPA;
//end;
//
//function TXMLCashAccountSEPA1.Get_Ccy: UnicodeString;
//begin
//  Result := ChildNodes['Ccy'].Text;
//end;
//
//procedure TXMLCashAccountSEPA1.Set_Ccy(Value: UnicodeString);
//begin
//  ChildNodes['Ccy'].NodeValue := Value;
//end;
//
//{ TXMLAccountIdentificationSEPA }
//
//function TXMLAccountIdentificationSEPA.Get_IBAN: UnicodeString;
//begin
//  Result := ChildNodes['IBAN'].Text;
//end;
//
//procedure TXMLAccountIdentificationSEPA.Set_IBAN(Value: UnicodeString);
//begin
//  ChildNodes['IBAN'].NodeValue := Value;
//end;
//
//{ TXMLBranchAndFinancialInstitutionIdentificationSEPA3 }
//
//procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA3.AfterConstruction;
//begin
//  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA3);
//  inherited;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentificationSEPA3.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
//begin
//  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA3;
//end;
//
//{ TXMLFinancialInstitutionIdentificationSEPA3 }
//
//procedure TXMLFinancialInstitutionIdentificationSEPA3.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLOthrIdentification);
//  inherited;
//end;
//
//function TXMLFinancialInstitutionIdentificationSEPA3.Get_BIC: UnicodeString;
//begin
//  Result := ChildNodes['BIC'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentificationSEPA3.Set_BIC(Value: UnicodeString);
//begin
//  ChildNodes['BIC'].NodeValue := Value;
//end;
//
//function TXMLFinancialInstitutionIdentificationSEPA3.Get_Othr: IXMLOthrIdentification;
//begin
//  Result := ChildNodes['Othr'] as IXMLOthrIdentification;
//end;
//
//{ TXMLOthrIdentification }
//
//function TXMLOthrIdentification.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLOthrIdentification.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//{ TXMLRestrictedFinancialIdentificationSEPA }
//
//function TXMLRestrictedFinancialIdentificationSEPA.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLRestrictedFinancialIdentificationSEPA.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
{ TXMLMax105TextList }

function TXMLMax105TextList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLMax105TextList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLMax105TextList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

//{ TXMLMax70TextList }
//
//function TXMLMax70TextList.Add(const Value: UnicodeString): IXMLNode;
//begin
//  Result := AddItem(-1);
//  Result.NodeValue := Value;
//end;
//
//function TXMLMax70TextList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
//begin
//  Result := AddItem(Index);
//  Result.NodeValue := Value;
//end;
//
//function TXMLMax70TextList.Get_Item(Index: Integer): UnicodeString;
//begin
//  Result := List[Index].NodeValue;
//end;
//
//************************ pain.007.001.02_GBIC_2.xsd **************************

{ TXMLDocument00700102 }

procedure TXMLDocument00700102.AfterConstruction;
begin
  RegisterChildNode('CstmrPmtRvsl', TXMLCustomerPaymentReversalV02);
  inherited;
end;

function TXMLDocument00700102.Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02;
begin
  Result := ChildNodes['CstmrPmtRvsl'] as IXMLCustomerPaymentReversalV02;
end;

{ TXMLCustomerPaymentReversalV02 }

procedure TXMLCustomerPaymentReversalV02.AfterConstruction;
begin
  RegisterChildNode('GrpHdr', TXMLGroupHeader40);
  RegisterChildNode('OrgnlGrpInf', TXMLOriginalGroupInformation22);
  RegisterChildNode('OrgnlPmtInfAndRvsl', TXMLOriginalPaymentInformation2);
  FOrgnlPmtInfAndRvsl := CreateCollection(TXMLOriginalPaymentInformation2List, IXMLOriginalPaymentInformation2, 'OrgnlPmtInfAndRvsl') as IXMLOriginalPaymentInformation2List;
  inherited;
end;

function TXMLCustomerPaymentReversalV02.Get_GrpHdr: IXMLGroupHeader40;
begin
  Result := ChildNodes['GrpHdr'] as IXMLGroupHeader40;
end;

function TXMLCustomerPaymentReversalV02.Get_OrgnlGrpInf: IXMLOriginalGroupInformation22;
begin
  Result := ChildNodes['OrgnlGrpInf'] as IXMLOriginalGroupInformation22;
end;

function TXMLCustomerPaymentReversalV02.Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2List;
begin
  Result := FOrgnlPmtInfAndRvsl;
end;

{ TXMLGroupHeader40 }

procedure TXMLGroupHeader40.AfterConstruction;
begin
  RegisterChildNode('InitgPty', TXMLPartyIdentification32);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  inherited;
end;

function TXMLGroupHeader40.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLGroupHeader40.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLGroupHeader40.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLGroupHeader40.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLGroupHeader40.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLGroupHeader40.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLGroupHeader40.Get_CtrlSum: UnicodeString;
begin
  Result := ChildNodes['CtrlSum'].Text;
end;

procedure TXMLGroupHeader40.Set_CtrlSum(Value: UnicodeString);
begin
  ChildNodes['CtrlSum'].NodeValue := Value;
end;

function TXMLGroupHeader40.Get_GrpRvsl: Boolean;
begin
  Result := ChildNodes['GrpRvsl'].NodeValue;
end;

procedure TXMLGroupHeader40.Set_GrpRvsl(Value: Boolean);
begin
  ChildNodes['GrpRvsl'].NodeValue := Value;
end;

function TXMLGroupHeader40.Get_InitgPty: IXMLPartyIdentification32;
begin
  Result := ChildNodes['InitgPty'] as IXMLPartyIdentification32;
end;

function TXMLGroupHeader40.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

{ TXMLPartyIdentification32 }

procedure TXMLPartyIdentification32.AfterConstruction;
begin
  RegisterChildNode('PstlAdr', TXMLPostalAddress6);
  RegisterChildNode('Id', TXMLParty6Choice);
  inherited;
end;

function TXMLPartyIdentification32.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentification32.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentification32.Get_PstlAdr: IXMLPostalAddress6;
begin
  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6;
end;

function TXMLPartyIdentification32.Get_Id: IXMLParty6Choice;
begin
  Result := ChildNodes['Id'] as IXMLParty6Choice;
end;

{ TXMLPostalAddress6 }

procedure TXMLPostalAddress6.AfterConstruction;
begin
  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
  inherited;
end;

function TXMLPostalAddress6.Get_Ctry: UnicodeString;
begin
  Result := ChildNodes['Ctry'].Text;
end;

procedure TXMLPostalAddress6.Set_Ctry(Value: UnicodeString);
begin
  ChildNodes['Ctry'].NodeValue := Value;
end;

function TXMLPostalAddress6.Get_AdrLine: IXMLMax70TextList;
begin
  Result := FAdrLine;
end;

{ TXMLParty6Choice }

procedure TXMLParty6Choice.AfterConstruction;
begin
  RegisterChildNode('OrgId', TXMLOrganisationIdentification4);
  RegisterChildNode('PrvtId', TXMLPersonIdentification5);
  inherited;
end;

function TXMLParty6Choice.Get_OrgId: IXMLOrganisationIdentification4;
begin
  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentification4;
end;

function TXMLParty6Choice.Get_PrvtId: IXMLPersonIdentification5;
begin
  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5;
end;

{ TXMLOrganisationIdentification4 }

procedure TXMLOrganisationIdentification4.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
  inherited;
end;

function TXMLOrganisationIdentification4.Get_BICOrBEI: UnicodeString;
begin
  Result := ChildNodes['BICOrBEI'].Text;
end;

procedure TXMLOrganisationIdentification4.Set_BICOrBEI(Value: UnicodeString);
begin
  ChildNodes['BICOrBEI'].NodeValue := Value;
end;

function TXMLOrganisationIdentification4.Get_Othr: IXMLGenericOrganisationIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericOrganisationIdentification1;
end;

//{ TXMLGenericOrganisationIdentification1 }
//
//procedure TXMLGenericOrganisationIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLOrganisationIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLOrganisationIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLOrganisationIdentificationSchemeName1Choice }
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
{ TXMLPersonIdentification5 }

procedure TXMLPersonIdentification5.AfterConstruction;
begin
  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
  inherited;
end;

function TXMLPersonIdentification5.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
begin
  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
end;

function TXMLPersonIdentification5.Get_Othr: IXMLGenericPersonIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1;
end;

//{ TXMLDateAndPlaceOfBirth }
//
//function TXMLDateAndPlaceOfBirth.Get_BirthDt: UnicodeString;
//begin
//  Result := ChildNodes['BirthDt'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_BirthDt(Value: UnicodeString);
//begin
//  ChildNodes['BirthDt'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_PrvcOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['PrvcOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_PrvcOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['PrvcOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CityOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CityOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CityOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CityOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CtryOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CtryOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CtryOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CtryOfBirth'].NodeValue := Value;
//end;
//
//{ TXMLGenericPersonIdentification1 }
//
//procedure TXMLGenericPersonIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericPersonIdentification1.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLPersonIdentificationSchemeName1Choice }
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
{ TXMLBranchAndFinancialInstitutionIdentification4 }

procedure TXMLBranchAndFinancialInstitutionIdentification4.AfterConstruction;
begin
  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentification7);
  inherited;
end;

function TXMLBranchAndFinancialInstitutionIdentification4.Get_FinInstnId: IXMLFinancialInstitutionIdentification7;
begin
  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentification7;
end;

{ TXMLFinancialInstitutionIdentification7 }

procedure TXMLFinancialInstitutionIdentification7.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericFinancialIdentification1);
  inherited;
end;

function TXMLFinancialInstitutionIdentification7.Get_BIC: UnicodeString;
begin
  Result := ChildNodes['BIC'].Text;
end;

procedure TXMLFinancialInstitutionIdentification7.Set_BIC(Value: UnicodeString);
begin
  ChildNodes['BIC'].NodeValue := Value;
end;

function TXMLFinancialInstitutionIdentification7.Get_Othr: IXMLGenericFinancialIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericFinancialIdentification1;
end;

{ TXMLGenericFinancialIdentification1 }

function TXMLGenericFinancialIdentification1.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericFinancialIdentification1.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

{ TXMLOriginalGroupInformation22 }

procedure TXMLOriginalGroupInformation22.AfterConstruction;
begin
  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6);
  inherited;
end;

function TXMLOriginalGroupInformation22.Get_OrgnlMsgId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMsgId'].Text;
end;

procedure TXMLOriginalGroupInformation22.Set_OrgnlMsgId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMsgId'].NodeValue := Value;
end;

function TXMLOriginalGroupInformation22.Get_OrgnlMsgNmId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMsgNmId'].Text;
end;

procedure TXMLOriginalGroupInformation22.Set_OrgnlMsgNmId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMsgNmId'].NodeValue := Value;
end;

function TXMLOriginalGroupInformation22.Get_RvslRsnInf: IXMLReversalReasonInformation6;
begin
  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6;
end;

{ TXMLReversalReasonInformation6 }

procedure TXMLReversalReasonInformation6.AfterConstruction;
begin
  RegisterChildNode('Rsn', TXMLReversalReason4Choice);
  inherited;
end;

function TXMLReversalReasonInformation6.Get_Rsn: IXMLReversalReason4Choice;
begin
  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice;
end;

{ TXMLReversalReason4Choice }

function TXMLReversalReason4Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLReversalReason4Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLOriginalPaymentInformation2 }

procedure TXMLOriginalPaymentInformation2.AfterConstruction;
begin
  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6);
  RegisterChildNode('TxInf', TXMLPaymentTransactionInformation28);
  FTxInf := CreateCollection(TXMLPaymentTransactionInformation28List, IXMLPaymentTransactionInformation28, 'TxInf') as IXMLPaymentTransactionInformation28List;
  inherited;
end;

function TXMLOriginalPaymentInformation2.Get_RvslPmtInfId: UnicodeString;
begin
  Result := ChildNodes['RvslPmtInfId'].Text;
end;

procedure TXMLOriginalPaymentInformation2.Set_RvslPmtInfId(Value: UnicodeString);
begin
  ChildNodes['RvslPmtInfId'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2.Get_OrgnlPmtInfId: UnicodeString;
begin
  Result := ChildNodes['OrgnlPmtInfId'].Text;
end;

procedure TXMLOriginalPaymentInformation2.Set_OrgnlPmtInfId(Value: UnicodeString);
begin
  ChildNodes['OrgnlPmtInfId'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2.Get_OrgnlNbOfTxs: UnicodeString;
begin
  Result := ChildNodes['OrgnlNbOfTxs'].Text;
end;

procedure TXMLOriginalPaymentInformation2.Set_OrgnlNbOfTxs(Value: UnicodeString);
begin
  ChildNodes['OrgnlNbOfTxs'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2.Get_OrgnlCtrlSum: UnicodeString;
begin
  Result := ChildNodes['OrgnlCtrlSum'].Text;
end;

procedure TXMLOriginalPaymentInformation2.Set_OrgnlCtrlSum(Value: UnicodeString);
begin
  ChildNodes['OrgnlCtrlSum'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2.Get_BtchBookg: Boolean;
begin
  Result := ChildNodes['BtchBookg'].NodeValue;
end;

procedure TXMLOriginalPaymentInformation2.Set_BtchBookg(Value: Boolean);
begin
  ChildNodes['BtchBookg'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2.Get_PmtInfRvsl: Boolean;
begin
  Result := ChildNodes['PmtInfRvsl'].NodeValue;
end;

procedure TXMLOriginalPaymentInformation2.Set_PmtInfRvsl(Value: Boolean);
begin
  ChildNodes['PmtInfRvsl'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2.Get_RvslRsnInf: IXMLReversalReasonInformation6;
begin
  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6;
end;

function TXMLOriginalPaymentInformation2.Get_TxInf: IXMLPaymentTransactionInformation28List;
begin
  Result := FTxInf;
end;

{ TXMLOriginalPaymentInformation2List }

function TXMLOriginalPaymentInformation2List.Add: IXMLOriginalPaymentInformation2;
begin
  Result := AddItem(-1) as IXMLOriginalPaymentInformation2;
end;

function TXMLOriginalPaymentInformation2List.Insert(const Index: Integer): IXMLOriginalPaymentInformation2;
begin
  Result := AddItem(Index) as IXMLOriginalPaymentInformation2;
end;

function TXMLOriginalPaymentInformation2List.Get_Item(Index: Integer): IXMLOriginalPaymentInformation2;
begin
  Result := List[Index] as IXMLOriginalPaymentInformation2;
end;

{ TXMLPaymentTransactionInformation28 }

procedure TXMLPaymentTransactionInformation28.AfterConstruction;
begin
  RegisterChildNode('OrgnlInstdAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('RvsdInstdAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6);
  RegisterChildNode('OrgnlTxRef', TXMLOriginalTransactionReference13);
  inherited;
end;

function TXMLPaymentTransactionInformation28.Get_RvslId: UnicodeString;
begin
  Result := ChildNodes['RvslId'].Text;
end;

procedure TXMLPaymentTransactionInformation28.Set_RvslId(Value: UnicodeString);
begin
  ChildNodes['RvslId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28.Get_OrgnlInstrId: UnicodeString;
begin
  Result := ChildNodes['OrgnlInstrId'].Text;
end;

procedure TXMLPaymentTransactionInformation28.Set_OrgnlInstrId(Value: UnicodeString);
begin
  ChildNodes['OrgnlInstrId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28.Get_OrgnlEndToEndId: UnicodeString;
begin
  Result := ChildNodes['OrgnlEndToEndId'].Text;
end;

procedure TXMLPaymentTransactionInformation28.Set_OrgnlEndToEndId(Value: UnicodeString);
begin
  ChildNodes['OrgnlEndToEndId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28.Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['OrgnlInstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLPaymentTransactionInformation28.Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['RvsdInstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLPaymentTransactionInformation28.Get_ChrgBr: UnicodeString;
begin
  Result := ChildNodes['ChrgBr'].Text;
end;

procedure TXMLPaymentTransactionInformation28.Set_ChrgBr(Value: UnicodeString);
begin
  ChildNodes['ChrgBr'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28.Get_RvslRsnInf: IXMLReversalReasonInformation6;
begin
  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6;
end;

function TXMLPaymentTransactionInformation28.Get_OrgnlTxRef: IXMLOriginalTransactionReference13;
begin
  Result := ChildNodes['OrgnlTxRef'] as IXMLOriginalTransactionReference13;
end;

{ TXMLPaymentTransactionInformation28List }

function TXMLPaymentTransactionInformation28List.Add: IXMLPaymentTransactionInformation28;
begin
  Result := AddItem(-1) as IXMLPaymentTransactionInformation28;
end;

function TXMLPaymentTransactionInformation28List.Insert(const Index: Integer): IXMLPaymentTransactionInformation28;
begin
  Result := AddItem(Index) as IXMLPaymentTransactionInformation28;
end;

function TXMLPaymentTransactionInformation28List.Get_Item(Index: Integer): IXMLPaymentTransactionInformation28;
begin
  Result := List[Index] as IXMLPaymentTransactionInformation28;
end;

{ TXMLActiveOrHistoricCurrencyAndAmount }

function TXMLActiveOrHistoricCurrencyAndAmount.Get_Ccy: UnicodeString;
begin
  Result := AttributeNodes['Ccy'].Text;
end;

procedure TXMLActiveOrHistoricCurrencyAndAmount.Set_Ccy(Value: UnicodeString);
begin
  SetAttribute('Ccy', Value);
end;

{ TXMLOriginalTransactionReference13 }

procedure TXMLOriginalTransactionReference13.AfterConstruction;
begin
  RegisterChildNode('CdtrSchmeId', TXMLPartyIdentification32);
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformation22);
  RegisterChildNode('MndtRltdInf', TXMLMandateRelatedInformation6);
  RegisterChildNode('RmtInf', TXMLRemittanceInformation5);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentification32);
  RegisterChildNode('Dbtr', TXMLPartyIdentification32);
  RegisterChildNode('DbtrAcct', TXMLCashAccount16);
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('Cdtr', TXMLPartyIdentification32);
  RegisterChildNode('CdtrAcct', TXMLCashAccount16);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentification32);
  inherited;
end;

function TXMLOriginalTransactionReference13.Get_ReqdColltnDt: UnicodeString;
begin
  Result := ChildNodes['ReqdColltnDt'].Text;
end;

procedure TXMLOriginalTransactionReference13.Set_ReqdColltnDt(Value: UnicodeString);
begin
  ChildNodes['ReqdColltnDt'].NodeValue := Value;
end;

function TXMLOriginalTransactionReference13.Get_CdtrSchmeId: IXMLPartyIdentification32;
begin
  Result := ChildNodes['CdtrSchmeId'] as IXMLPartyIdentification32;
end;

function TXMLOriginalTransactionReference13.Get_PmtTpInf: IXMLPaymentTypeInformation22;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformation22;
end;

function TXMLOriginalTransactionReference13.Get_MndtRltdInf: IXMLMandateRelatedInformation6;
begin
  Result := ChildNodes['MndtRltdInf'] as IXMLMandateRelatedInformation6;
end;

function TXMLOriginalTransactionReference13.Get_RmtInf: IXMLRemittanceInformation5;
begin
  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformation5;
end;

function TXMLOriginalTransactionReference13.Get_UltmtDbtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentification32;
end;

function TXMLOriginalTransactionReference13.Get_Dbtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Dbtr'] as IXMLPartyIdentification32;
end;

function TXMLOriginalTransactionReference13.Get_DbtrAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['DbtrAcct'] as IXMLCashAccount16;
end;

function TXMLOriginalTransactionReference13.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLOriginalTransactionReference13.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLOriginalTransactionReference13.Get_Cdtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Cdtr'] as IXMLPartyIdentification32;
end;

function TXMLOriginalTransactionReference13.Get_CdtrAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['CdtrAcct'] as IXMLCashAccount16;
end;

function TXMLOriginalTransactionReference13.Get_UltmtCdtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentification32;
end;

{ TXMLPaymentTypeInformation22 }

procedure TXMLPaymentTypeInformation22.AfterConstruction;
begin
  RegisterChildNode('SvcLvl', TXMLServiceLevel8Choice);
  RegisterChildNode('LclInstrm', TXMLLocalInstrument2Choice);
  RegisterChildNode('CtgyPurp', TXMLCategoryPurpose1Choice);
  inherited;
end;

function TXMLPaymentTypeInformation22.Get_SvcLvl: IXMLServiceLevel8Choice;
begin
  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel8Choice;
end;

function TXMLPaymentTypeInformation22.Get_LclInstrm: IXMLLocalInstrument2Choice;
begin
  Result := ChildNodes['LclInstrm'] as IXMLLocalInstrument2Choice;
end;

function TXMLPaymentTypeInformation22.Get_SeqTp: UnicodeString;
begin
  Result := ChildNodes['SeqTp'].Text;
end;

procedure TXMLPaymentTypeInformation22.Set_SeqTp(Value: UnicodeString);
begin
  ChildNodes['SeqTp'].NodeValue := Value;
end;

function TXMLPaymentTypeInformation22.Get_CtgyPurp: IXMLCategoryPurpose1Choice;
begin
  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurpose1Choice;
end;

{ TXMLServiceLevel8Choice }

function TXMLServiceLevel8Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLServiceLevel8Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLLocalInstrument2Choice }

function TXMLLocalInstrument2Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLLocalInstrument2Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLCategoryPurpose1Choice }

function TXMLCategoryPurpose1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLCategoryPurpose1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLCategoryPurpose1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLCategoryPurpose1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLMandateRelatedInformation6 }

procedure TXMLMandateRelatedInformation6.AfterConstruction;
begin
  RegisterChildNode('AmdmntInfDtls', TXMLAmendmentInformationDetails6);
  inherited;
end;

function TXMLMandateRelatedInformation6.Get_MndtId: UnicodeString;
begin
  Result := ChildNodes['MndtId'].Text;
end;

procedure TXMLMandateRelatedInformation6.Set_MndtId(Value: UnicodeString);
begin
  ChildNodes['MndtId'].NodeValue := Value;
end;

function TXMLMandateRelatedInformation6.Get_DtOfSgntr: UnicodeString;
begin
  Result := ChildNodes['DtOfSgntr'].Text;
end;

procedure TXMLMandateRelatedInformation6.Set_DtOfSgntr(Value: UnicodeString);
begin
  ChildNodes['DtOfSgntr'].NodeValue := Value;
end;

function TXMLMandateRelatedInformation6.Get_AmdmntInd: Boolean;
begin
  Result := ChildNodes['AmdmntInd'].NodeValue;
end;

procedure TXMLMandateRelatedInformation6.Set_AmdmntInd(Value: Boolean);
begin
  ChildNodes['AmdmntInd'].NodeValue := Value;
end;

function TXMLMandateRelatedInformation6.Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6;
begin
  Result := ChildNodes['AmdmntInfDtls'] as IXMLAmendmentInformationDetails6;
end;

function TXMLMandateRelatedInformation6.Get_ElctrncSgntr: UnicodeString;
begin
  Result := ChildNodes['ElctrncSgntr'].Text;
end;

procedure TXMLMandateRelatedInformation6.Set_ElctrncSgntr(Value: UnicodeString);
begin
  ChildNodes['ElctrncSgntr'].NodeValue := Value;
end;

{ TXMLAmendmentInformationDetails6 }

procedure TXMLAmendmentInformationDetails6.AfterConstruction;
begin
  RegisterChildNode('OrgnlCdtrSchmeId', TXMLPartyIdentification32);
  RegisterChildNode('OrgnlDbtrAcct', TXMLCashAccount16);
  RegisterChildNode('OrgnlDbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  inherited;
end;

function TXMLAmendmentInformationDetails6.Get_OrgnlMndtId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMndtId'].Text;
end;

procedure TXMLAmendmentInformationDetails6.Set_OrgnlMndtId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMndtId'].NodeValue := Value;
end;

function TXMLAmendmentInformationDetails6.Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32;
begin
  Result := ChildNodes['OrgnlCdtrSchmeId'] as IXMLPartyIdentification32;
end;

function TXMLAmendmentInformationDetails6.Get_OrgnlDbtrAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['OrgnlDbtrAcct'] as IXMLCashAccount16;
end;

function TXMLAmendmentInformationDetails6.Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['OrgnlDbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

{ TXMLCashAccount16 }

procedure TXMLCashAccount16.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentification4Choice);
  inherited;
end;

function TXMLCashAccount16.Get_Id: IXMLAccountIdentification4Choice;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice;
end;

function TXMLCashAccount16.Get_Ccy: UnicodeString;
begin
  Result := ChildNodes['Ccy'].Text;
end;

procedure TXMLCashAccount16.Set_Ccy(Value: UnicodeString);
begin
  ChildNodes['Ccy'].NodeValue := Value;
end;

{ TXMLAccountIdentification4Choice }

procedure TXMLAccountIdentification4Choice.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericAccountIdentification1);
  inherited;
end;

function TXMLAccountIdentification4Choice.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLAccountIdentification4Choice.Set_IBAN(Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

function TXMLAccountIdentification4Choice.Get_Othr: IXMLGenericAccountIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericAccountIdentification1;
end;

{ TXMLGenericAccountIdentification1 }

function TXMLGenericAccountIdentification1.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericAccountIdentification1.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

{ TXMLRemittanceInformation5 }

procedure TXMLRemittanceInformation5.AfterConstruction;
begin
  RegisterChildNode('Strd', TXMLStructuredRemittanceInformation7);
  inherited;
end;

function TXMLRemittanceInformation5.Get_Ustrd: UnicodeString;
begin
  Result := ChildNodes['Ustrd'].Text;
end;

procedure TXMLRemittanceInformation5.Set_Ustrd(Value: UnicodeString);
begin
  ChildNodes['Ustrd'].NodeValue := Value;
end;

function TXMLRemittanceInformation5.Get_Strd: IXMLStructuredRemittanceInformation7;
begin
  Result := ChildNodes['Strd'] as IXMLStructuredRemittanceInformation7;
end;

{ TXMLStructuredRemittanceInformation7 }

procedure TXMLStructuredRemittanceInformation7.AfterConstruction;
begin
  RegisterChildNode('CdtrRefInf', TXMLCreditorReferenceInformation2);
  inherited;
end;

function TXMLStructuredRemittanceInformation7.Get_CdtrRefInf: IXMLCreditorReferenceInformation2;
begin
  Result := ChildNodes['CdtrRefInf'] as IXMLCreditorReferenceInformation2;
end;

{ TXMLCreditorReferenceInformation2 }

procedure TXMLCreditorReferenceInformation2.AfterConstruction;
begin
  RegisterChildNode('Tp', TXMLCreditorReferenceType2);
  inherited;
end;

function TXMLCreditorReferenceInformation2.Get_Tp: IXMLCreditorReferenceType2;
begin
  Result := ChildNodes['Tp'] as IXMLCreditorReferenceType2;
end;

function TXMLCreditorReferenceInformation2.Get_Ref: UnicodeString;
begin
  Result := ChildNodes['Ref'].Text;
end;

procedure TXMLCreditorReferenceInformation2.Set_Ref(Value: UnicodeString);
begin
  ChildNodes['Ref'].NodeValue := Value;
end;

{ TXMLCreditorReferenceType2 }

procedure TXMLCreditorReferenceType2.AfterConstruction;
begin
  RegisterChildNode('CdOrPrtry', TXMLCreditorReferenceType1Choice);
  inherited;
end;

function TXMLCreditorReferenceType2.Get_CdOrPrtry: IXMLCreditorReferenceType1Choice;
begin
  Result := ChildNodes['CdOrPrtry'] as IXMLCreditorReferenceType1Choice;
end;

function TXMLCreditorReferenceType2.Get_Issr: UnicodeString;
begin
  Result := ChildNodes['Issr'].Text;
end;

procedure TXMLCreditorReferenceType2.Set_Issr(Value: UnicodeString);
begin
  ChildNodes['Issr'].NodeValue := Value;
end;

{ TXMLCreditorReferenceType1Choice }

function TXMLCreditorReferenceType1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLCreditorReferenceType1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

//{ TXMLDocument_GBIC }
//
//procedure TXMLDocument_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('CstmrPmtRvsl', TXMLCustomerPaymentReversalV02_GBIC);
//  inherited;
//end;
//
//function TXMLDocument_GBIC.Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02_GBIC;
//begin
//  Result := ChildNodes['CstmrPmtRvsl'] as IXMLCustomerPaymentReversalV02_GBIC;
//end;
//
//{ TXMLCustomerPaymentReversalV02_GBIC }
//
//procedure TXMLCustomerPaymentReversalV02_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('GrpHdr', TXMLGroupHeader40_GBIC);
//  RegisterChildNode('OrgnlGrpInf', TXMLOriginalGroupInformation22_GBIC);
//  RegisterChildNode('OrgnlPmtInfAndRvsl', TXMLOriginalPaymentInformation2_GBIC);
//  FOrgnlPmtInfAndRvsl := CreateCollection(TXMLOriginalPaymentInformation2_GBICList, IXMLOriginalPaymentInformation2_GBIC, 'OrgnlPmtInfAndRvsl') as IXMLOriginalPaymentInformation2_GBICList;
//  inherited;
//end;
//
//function TXMLCustomerPaymentReversalV02_GBIC.Get_GrpHdr: IXMLGroupHeader40_GBIC;
//begin
//  Result := ChildNodes['GrpHdr'] as IXMLGroupHeader40_GBIC;
//end;
//
//function TXMLCustomerPaymentReversalV02_GBIC.Get_OrgnlGrpInf: IXMLOriginalGroupInformation22_GBIC;
//begin
//  Result := ChildNodes['OrgnlGrpInf'] as IXMLOriginalGroupInformation22_GBIC;
//end;
//
//function TXMLCustomerPaymentReversalV02_GBIC.Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2_GBICList;
//begin
//  Result := FOrgnlPmtInfAndRvsl;
//end;
//
//{ TXMLGroupHeader40_GBIC }
//
//procedure TXMLGroupHeader40_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('InitgPty', TXMLPartyIdentification32_GBIC);
//  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4_GBIC);
//  inherited;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_MsgId: UnicodeString;
//begin
//  Result := ChildNodes['MsgId'].Text;
//end;
//
//procedure TXMLGroupHeader40_GBIC.Set_MsgId(Value: UnicodeString);
//begin
//  ChildNodes['MsgId'].NodeValue := Value;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_CreDtTm: UnicodeString;
//begin
//  Result := ChildNodes['CreDtTm'].Text;
//end;
//
//procedure TXMLGroupHeader40_GBIC.Set_CreDtTm(Value: UnicodeString);
//begin
//  ChildNodes['CreDtTm'].NodeValue := Value;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_NbOfTxs: UnicodeString;
//begin
//  Result := ChildNodes['NbOfTxs'].Text;
//end;
//
//procedure TXMLGroupHeader40_GBIC.Set_NbOfTxs(Value: UnicodeString);
//begin
//  ChildNodes['NbOfTxs'].NodeValue := Value;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_CtrlSum: UnicodeString;
//begin
//  Result := ChildNodes['CtrlSum'].Text;
//end;
//
//procedure TXMLGroupHeader40_GBIC.Set_CtrlSum(Value: UnicodeString);
//begin
//  ChildNodes['CtrlSum'].NodeValue := Value;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_GrpRvsl: Boolean;
//begin
//  Result := ChildNodes['GrpRvsl'].NodeValue;
//end;
//
//procedure TXMLGroupHeader40_GBIC.Set_GrpRvsl(Value: Boolean);
//begin
//  ChildNodes['GrpRvsl'].NodeValue := Value;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_InitgPty: IXMLPartyIdentification32_GBIC;
//begin
//  Result := ChildNodes['InitgPty'] as IXMLPartyIdentification32_GBIC;
//end;
//
//function TXMLGroupHeader40_GBIC.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
//begin
//  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
//end;
//
//{ TXMLPartyIdentification32_GBIC }
//
//procedure TXMLPartyIdentification32_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLParty6Choice_GBIC);
//  inherited;
//end;
//
//function TXMLPartyIdentification32_GBIC.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentification32_GBIC.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32_GBIC.Get_Id: IXMLParty6Choice_GBIC;
//begin
//  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC;
//end;
//
//{ TXMLParty6Choice_GBIC }
//
//procedure TXMLParty6Choice_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('OrgId', TXMLOrganisationIdentification4_GBIC);
//  RegisterChildNode('PrvtId', TXMLPersonIdentification5_GBIC);
//  inherited;
//end;
//
//function TXMLParty6Choice_GBIC.Get_OrgId: IXMLOrganisationIdentification4_GBIC;
//begin
//  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentification4_GBIC;
//end;
//
//function TXMLParty6Choice_GBIC.Get_PrvtId: IXMLPersonIdentification5_GBIC;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5_GBIC;
//end;
//
//{ TXMLOrganisationIdentification4_GBIC }
//
//procedure TXMLOrganisationIdentification4_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
//  inherited;
//end;
//
//function TXMLOrganisationIdentification4_GBIC.Get_BICOrBEI: UnicodeString;
//begin
//  Result := ChildNodes['BICOrBEI'].Text;
//end;
//
//procedure TXMLOrganisationIdentification4_GBIC.Set_BICOrBEI(Value: UnicodeString);
//begin
//  ChildNodes['BICOrBEI'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentification4_GBIC.Get_Othr: IXMLGenericOrganisationIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericOrganisationIdentification1;
//end;
//
//{ TXMLPersonIdentification5_GBIC }
//
//procedure TXMLPersonIdentification5_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
//  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
//  inherited;
//end;
//
//function TXMLPersonIdentification5_GBIC.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
//begin
//  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
//end;
//
//function TXMLPersonIdentification5_GBIC.Get_Othr: IXMLGenericPersonIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1;
//end;
//
//{ TXMLBranchAndFinancialInstitutionIdentification4_GBIC }
//
//procedure TXMLBranchAndFinancialInstitutionIdentification4_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentification7_GBIC);
//  inherited;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentification4_GBIC.Get_FinInstnId: IXMLFinancialInstitutionIdentification7_GBIC;
//begin
//  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentification7_GBIC;
//end;
//
//{ TXMLFinancialInstitutionIdentification7_GBIC }
//
//function TXMLFinancialInstitutionIdentification7_GBIC.Get_BIC: UnicodeString;
//begin
//  Result := ChildNodes['BIC'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentification7_GBIC.Set_BIC(Value: UnicodeString);
//begin
//  ChildNodes['BIC'].NodeValue := Value;
//end;
//
//{ TXMLOriginalGroupInformation22_GBIC }
//
//procedure TXMLOriginalGroupInformation22_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6_GBIC);
//  inherited;
//end;
//
//function TXMLOriginalGroupInformation22_GBIC.Get_OrgnlMsgId: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlMsgId'].Text;
//end;
//
//procedure TXMLOriginalGroupInformation22_GBIC.Set_OrgnlMsgId(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlMsgId'].NodeValue := Value;
//end;
//
//function TXMLOriginalGroupInformation22_GBIC.Get_OrgnlMsgNmId: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlMsgNmId'].Text;
//end;
//
//procedure TXMLOriginalGroupInformation22_GBIC.Set_OrgnlMsgNmId(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlMsgNmId'].NodeValue := Value;
//end;
//
//function TXMLOriginalGroupInformation22_GBIC.Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC;
//begin
//  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6_GBIC;
//end;
//
//{ TXMLReversalReasonInformation6_GBIC }
//
//procedure TXMLReversalReasonInformation6_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('Rsn', TXMLReversalReason4Choice_GBIC);
//  inherited;
//end;
//
//function TXMLReversalReasonInformation6_GBIC.Get_Rsn: IXMLReversalReason4Choice_GBIC;
//begin
//  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice_GBIC;
//end;
//
//{ TXMLReversalReason4Choice_GBIC }
//
//function TXMLReversalReason4Choice_GBIC.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLReversalReason4Choice_GBIC.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLOriginalPaymentInformation2_GBIC }
//
//procedure TXMLOriginalPaymentInformation2_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6_GBIC_2);
//  RegisterChildNode('TxInf', TXMLPaymentTransactionInformation28_GBIC);
//  FTxInf := CreateCollection(TXMLPaymentTransactionInformation28_GBICList, IXMLPaymentTransactionInformation28_GBIC, 'TxInf') as IXMLPaymentTransactionInformation28_GBICList;
//  inherited;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_RvslPmtInfId: UnicodeString;
//begin
//  Result := ChildNodes['RvslPmtInfId'].Text;
//end;
//
//procedure TXMLOriginalPaymentInformation2_GBIC.Set_RvslPmtInfId(Value: UnicodeString);
//begin
//  ChildNodes['RvslPmtInfId'].NodeValue := Value;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_OrgnlPmtInfId: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlPmtInfId'].Text;
//end;
//
//procedure TXMLOriginalPaymentInformation2_GBIC.Set_OrgnlPmtInfId(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlPmtInfId'].NodeValue := Value;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_OrgnlNbOfTxs: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlNbOfTxs'].Text;
//end;
//
//procedure TXMLOriginalPaymentInformation2_GBIC.Set_OrgnlNbOfTxs(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlNbOfTxs'].NodeValue := Value;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_OrgnlCtrlSum: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlCtrlSum'].Text;
//end;
//
//procedure TXMLOriginalPaymentInformation2_GBIC.Set_OrgnlCtrlSum(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlCtrlSum'].NodeValue := Value;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_BtchBookg: Boolean;
//begin
//  Result := ChildNodes['BtchBookg'].NodeValue;
//end;
//
//procedure TXMLOriginalPaymentInformation2_GBIC.Set_BtchBookg(Value: Boolean);
//begin
//  ChildNodes['BtchBookg'].NodeValue := Value;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_PmtInfRvsl: Boolean;
//begin
//  Result := ChildNodes['PmtInfRvsl'].NodeValue;
//end;
//
//procedure TXMLOriginalPaymentInformation2_GBIC.Set_PmtInfRvsl(Value: Boolean);
//begin
//  ChildNodes['PmtInfRvsl'].NodeValue := Value;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_2;
//begin
//  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6_GBIC_2;
//end;
//
//function TXMLOriginalPaymentInformation2_GBIC.Get_TxInf: IXMLPaymentTransactionInformation28_GBICList;
//begin
//  Result := FTxInf;
//end;
//
//{ TXMLOriginalPaymentInformation2_GBICList }
//
//function TXMLOriginalPaymentInformation2_GBICList.Add: IXMLOriginalPaymentInformation2_GBIC;
//begin
//  Result := AddItem(-1) as IXMLOriginalPaymentInformation2_GBIC;
//end;
//
//function TXMLOriginalPaymentInformation2_GBICList.Insert(const Index: Integer): IXMLOriginalPaymentInformation2_GBIC;
//begin
//  Result := AddItem(Index) as IXMLOriginalPaymentInformation2_GBIC;
//end;
//
//function TXMLOriginalPaymentInformation2_GBICList.Get_Item(Index: Integer): IXMLOriginalPaymentInformation2_GBIC;
//begin
//  Result := List[Index] as IXMLOriginalPaymentInformation2_GBIC;
//end;
//
//{ TXMLReversalReasonInformation6_GBIC_2 }
//
//procedure TXMLReversalReasonInformation6_GBIC_2.AfterConstruction;
//begin
//  RegisterChildNode('Rsn', TXMLReversalReason4Choice_GBIC_2);
//  inherited;
//end;
//
//function TXMLReversalReasonInformation6_GBIC_2.Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
//begin
//  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice_GBIC_2;
//end;
//
//{ TXMLReversalReason4Choice_GBIC_2 }
//
//function TXMLReversalReason4Choice_GBIC_2.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLReversalReason4Choice_GBIC_2.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLPaymentTransactionInformation28_GBIC }
//
//procedure TXMLPaymentTransactionInformation28_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('OrgnlInstdAmt', TXMLActiveOrHistoricCurrencyAndAmount_GBIC);
//  RegisterChildNode('RvsdInstdAmt', TXMLActiveOrHistoricCurrencyAndAmount_GBIC);
//  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6_GBIC_3);
//  RegisterChildNode('OrgnlTxRef', TXMLOriginalTransactionReference13_GBIC);
//  inherited;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_RvslId: UnicodeString;
//begin
//  Result := ChildNodes['RvslId'].Text;
//end;
//
//procedure TXMLPaymentTransactionInformation28_GBIC.Set_RvslId(Value: UnicodeString);
//begin
//  ChildNodes['RvslId'].NodeValue := Value;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlInstrId: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlInstrId'].Text;
//end;
//
//procedure TXMLPaymentTransactionInformation28_GBIC.Set_OrgnlInstrId(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlInstrId'].NodeValue := Value;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlEndToEndId: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlEndToEndId'].Text;
//end;
//
//procedure TXMLPaymentTransactionInformation28_GBIC.Set_OrgnlEndToEndId(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlEndToEndId'].NodeValue := Value;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
//begin
//  Result := ChildNodes['OrgnlInstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
//begin
//  Result := ChildNodes['RvsdInstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_ChrgBr: UnicodeString;
//begin
//  Result := ChildNodes['ChrgBr'].Text;
//end;
//
//procedure TXMLPaymentTransactionInformation28_GBIC.Set_ChrgBr(Value: UnicodeString);
//begin
//  ChildNodes['ChrgBr'].NodeValue := Value;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_3;
//begin
//  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6_GBIC_3;
//end;
//
//function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlTxRef: IXMLOriginalTransactionReference13_GBIC;
//begin
//  Result := ChildNodes['OrgnlTxRef'] as IXMLOriginalTransactionReference13_GBIC;
//end;
//
//{ TXMLPaymentTransactionInformation28_GBICList }
//
//function TXMLPaymentTransactionInformation28_GBICList.Add: IXMLPaymentTransactionInformation28_GBIC;
//begin
//  Result := AddItem(-1) as IXMLPaymentTransactionInformation28_GBIC;
//end;
//
//function TXMLPaymentTransactionInformation28_GBICList.Insert(const Index: Integer): IXMLPaymentTransactionInformation28_GBIC;
//begin
//  Result := AddItem(Index) as IXMLPaymentTransactionInformation28_GBIC;
//end;
//
//function TXMLPaymentTransactionInformation28_GBICList.Get_Item(Index: Integer): IXMLPaymentTransactionInformation28_GBIC;
//begin
//  Result := List[Index] as IXMLPaymentTransactionInformation28_GBIC;
//end;
//
//{ TXMLActiveOrHistoricCurrencyAndAmount_GBIC }
//
//function TXMLActiveOrHistoricCurrencyAndAmount_GBIC.Get_Ccy: UnicodeString;
//begin
//  Result := AttributeNodes['Ccy'].Text;
//end;
//
//procedure TXMLActiveOrHistoricCurrencyAndAmount_GBIC.Set_Ccy(Value: UnicodeString);
//begin
//  SetAttribute('Ccy', Value);
//end;
//
//{ TXMLReversalReasonInformation6_GBIC_3 }
//
//procedure TXMLReversalReasonInformation6_GBIC_3.AfterConstruction;
//begin
//  RegisterChildNode('Rsn', TXMLReversalReason4Choice_GBIC_2);
//  inherited;
//end;
//
//function TXMLReversalReasonInformation6_GBIC_3.Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
//begin
//  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice_GBIC_2;
//end;
//
//{ TXMLOriginalTransactionReference13_GBIC }
//
//procedure TXMLOriginalTransactionReference13_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('CdtrSchmeId', TXMLPartyIdentification32_GBIC_2);
//  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformation22_GBIC);
//  RegisterChildNode('MndtRltdInf', TXMLMandateRelatedInformation6_GBIC);
//  RegisterChildNode('RmtInf', TXMLRemittanceInformation5_GBIC);
//  RegisterChildNode('UltmtDbtr', TXMLPartyIdentification32_GBIC_4);
//  RegisterChildNode('Dbtr', TXMLPartyIdentification32_GBIC_5);
//  RegisterChildNode('DbtrAcct', TXMLCashAccount16_GBIC_2);
//  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
//  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
//  RegisterChildNode('Cdtr', TXMLPartyIdentification32_GBIC_6);
//  RegisterChildNode('CdtrAcct', TXMLCashAccount16_GBIC_3);
//  RegisterChildNode('UltmtCdtr', TXMLPartyIdentification32_GBIC_4);
//  inherited;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_ReqdColltnDt: UnicodeString;
//begin
//  Result := ChildNodes['ReqdColltnDt'].Text;
//end;
//
//procedure TXMLOriginalTransactionReference13_GBIC.Set_ReqdColltnDt(Value: UnicodeString);
//begin
//  ChildNodes['ReqdColltnDt'].NodeValue := Value;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_CdtrSchmeId: IXMLPartyIdentification32_GBIC_2;
//begin
//  Result := ChildNodes['CdtrSchmeId'] as IXMLPartyIdentification32_GBIC_2;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_PmtTpInf: IXMLPaymentTypeInformation22_GBIC;
//begin
//  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformation22_GBIC;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_MndtRltdInf: IXMLMandateRelatedInformation6_GBIC;
//begin
//  Result := ChildNodes['MndtRltdInf'] as IXMLMandateRelatedInformation6_GBIC;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_RmtInf: IXMLRemittanceInformation5_GBIC;
//begin
//  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformation5_GBIC;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_UltmtDbtr: IXMLPartyIdentification32_GBIC_4;
//begin
//  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentification32_GBIC_4;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_Dbtr: IXMLPartyIdentification32_GBIC_5;
//begin
//  Result := ChildNodes['Dbtr'] as IXMLPartyIdentification32_GBIC_5;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_DbtrAcct: IXMLCashAccount16_GBIC_2;
//begin
//  Result := ChildNodes['DbtrAcct'] as IXMLCashAccount16_GBIC_2;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
//begin
//  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
//begin
//  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_Cdtr: IXMLPartyIdentification32_GBIC_6;
//begin
//  Result := ChildNodes['Cdtr'] as IXMLPartyIdentification32_GBIC_6;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_CdtrAcct: IXMLCashAccount16_GBIC_3;
//begin
//  Result := ChildNodes['CdtrAcct'] as IXMLCashAccount16_GBIC_3;
//end;
//
//function TXMLOriginalTransactionReference13_GBIC.Get_UltmtCdtr: IXMLPartyIdentification32_GBIC_4;
//begin
//  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentification32_GBIC_4;
//end;
//
//{ TXMLPartyIdentification32_GBIC_2 }
//
//procedure TXMLPartyIdentification32_GBIC_2.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLParty6Choice_GBIC_2);
//  inherited;
//end;
//
//function TXMLPartyIdentification32_GBIC_2.Get_Id: IXMLParty6Choice_GBIC_2;
//begin
//  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_2;
//end;
//
//{ TXMLParty6Choice_GBIC_2 }
//
//procedure TXMLParty6Choice_GBIC_2.AfterConstruction;
//begin
//  RegisterChildNode('PrvtId', TXMLPersonIdentification5_GBIC_2);
//  inherited;
//end;
//
//function TXMLParty6Choice_GBIC_2.Get_PrvtId: IXMLPersonIdentification5_GBIC_2;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5_GBIC_2;
//end;
//
//{ TXMLPersonIdentification5_GBIC_2 }
//
//procedure TXMLPersonIdentification5_GBIC_2.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericPersonIdentification1_GBIC);
//  inherited;
//end;
//
//function TXMLPersonIdentification5_GBIC_2.Get_Othr: IXMLGenericPersonIdentification1_GBIC;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1_GBIC;
//end;
//
//{ TXMLGenericPersonIdentification1_GBIC }
//
//procedure TXMLGenericPersonIdentification1_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice_GBIC);
//  inherited;
//end;
//
//function TXMLGenericPersonIdentification1_GBIC.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1_GBIC.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericPersonIdentification1_GBIC.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice_GBIC;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice_GBIC;
//end;
//
//{ TXMLPersonIdentificationSchemeName1Choice_GBIC }
//
//function TXMLPersonIdentificationSchemeName1Choice_GBIC.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice_GBIC.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLPaymentTypeInformation22_GBIC }
//
//procedure TXMLPaymentTypeInformation22_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('SvcLvl', TXMLServiceLevel8Choice_GBIC);
//  RegisterChildNode('LclInstrm', TXMLLocalInstrument2Choice_GBIC);
//  RegisterChildNode('CtgyPurp', TXMLCategoryPurpose1Choice);
//  inherited;
//end;
//
//function TXMLPaymentTypeInformation22_GBIC.Get_SvcLvl: IXMLServiceLevel8Choice_GBIC;
//begin
//  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel8Choice_GBIC;
//end;
//
//function TXMLPaymentTypeInformation22_GBIC.Get_LclInstrm: IXMLLocalInstrument2Choice_GBIC;
//begin
//  Result := ChildNodes['LclInstrm'] as IXMLLocalInstrument2Choice_GBIC;
//end;
//
//function TXMLPaymentTypeInformation22_GBIC.Get_SeqTp: UnicodeString;
//begin
//  Result := ChildNodes['SeqTp'].Text;
//end;
//
//procedure TXMLPaymentTypeInformation22_GBIC.Set_SeqTp(Value: UnicodeString);
//begin
//  ChildNodes['SeqTp'].NodeValue := Value;
//end;
//
//function TXMLPaymentTypeInformation22_GBIC.Get_CtgyPurp: IXMLCategoryPurpose1Choice;
//begin
//  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurpose1Choice;
//end;
//
//{ TXMLServiceLevel8Choice_GBIC }
//
//function TXMLServiceLevel8Choice_GBIC.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLServiceLevel8Choice_GBIC.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLLocalInstrument2Choice_GBIC }
//
//function TXMLLocalInstrument2Choice_GBIC.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLLocalInstrument2Choice_GBIC.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLMandateRelatedInformation6_GBIC }
//
//procedure TXMLMandateRelatedInformation6_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('AmdmntInfDtls', TXMLAmendmentInformationDetails6_GBIC);
//  inherited;
//end;
//
//function TXMLMandateRelatedInformation6_GBIC.Get_MndtId: UnicodeString;
//begin
//  Result := ChildNodes['MndtId'].Text;
//end;
//
//procedure TXMLMandateRelatedInformation6_GBIC.Set_MndtId(Value: UnicodeString);
//begin
//  ChildNodes['MndtId'].NodeValue := Value;
//end;
//
//function TXMLMandateRelatedInformation6_GBIC.Get_DtOfSgntr: UnicodeString;
//begin
//  Result := ChildNodes['DtOfSgntr'].Text;
//end;
//
//procedure TXMLMandateRelatedInformation6_GBIC.Set_DtOfSgntr(Value: UnicodeString);
//begin
//  ChildNodes['DtOfSgntr'].NodeValue := Value;
//end;
//
//function TXMLMandateRelatedInformation6_GBIC.Get_AmdmntInd: Boolean;
//begin
//  Result := ChildNodes['AmdmntInd'].NodeValue;
//end;
//
//procedure TXMLMandateRelatedInformation6_GBIC.Set_AmdmntInd(Value: Boolean);
//begin
//  ChildNodes['AmdmntInd'].NodeValue := Value;
//end;
//
//function TXMLMandateRelatedInformation6_GBIC.Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6_GBIC;
//begin
//  Result := ChildNodes['AmdmntInfDtls'] as IXMLAmendmentInformationDetails6_GBIC;
//end;
//
//function TXMLMandateRelatedInformation6_GBIC.Get_ElctrncSgntr: UnicodeString;
//begin
//  Result := ChildNodes['ElctrncSgntr'].Text;
//end;
//
//procedure TXMLMandateRelatedInformation6_GBIC.Set_ElctrncSgntr(Value: UnicodeString);
//begin
//  ChildNodes['ElctrncSgntr'].NodeValue := Value;
//end;
//
//{ TXMLAmendmentInformationDetails6_GBIC }
//
//procedure TXMLAmendmentInformationDetails6_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('OrgnlCdtrSchmeId', TXMLPartyIdentification32_GBIC_3);
//  RegisterChildNode('OrgnlDbtrAcct', TXMLCashAccount16_GBIC);
//  RegisterChildNode('OrgnlDbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4_GBIC);
//  inherited;
//end;
//
//function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlMndtId: UnicodeString;
//begin
//  Result := ChildNodes['OrgnlMndtId'].Text;
//end;
//
//procedure TXMLAmendmentInformationDetails6_GBIC.Set_OrgnlMndtId(Value: UnicodeString);
//begin
//  ChildNodes['OrgnlMndtId'].NodeValue := Value;
//end;
//
//function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32_GBIC_3;
//begin
//  Result := ChildNodes['OrgnlCdtrSchmeId'] as IXMLPartyIdentification32_GBIC_3;
//end;
//
//function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlDbtrAcct: IXMLCashAccount16_GBIC;
//begin
//  Result := ChildNodes['OrgnlDbtrAcct'] as IXMLCashAccount16_GBIC;
//end;
//
//function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
//begin
//  Result := ChildNodes['OrgnlDbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
//end;
//
//{ TXMLPartyIdentification32_GBIC_3 }
//
//procedure TXMLPartyIdentification32_GBIC_3.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLParty6Choice_GBIC_2);
//  inherited;
//end;
//
//function TXMLPartyIdentification32_GBIC_3.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentification32_GBIC_3.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32_GBIC_3.Get_Id: IXMLParty6Choice_GBIC_2;
//begin
//  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_2;
//end;
//
//{ TXMLCashAccount16_GBIC }
//
//procedure TXMLCashAccount16_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentification4Choice);
//  inherited;
//end;
//
//function TXMLCashAccount16_GBIC.Get_Id: IXMLAccountIdentification4Choice;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice;
//end;
//
//{ TXMLRemittanceInformation5_GBIC }
//
//procedure TXMLRemittanceInformation5_GBIC.AfterConstruction;
//begin
//  RegisterChildNode('Strd', TXMLStructuredRemittanceInformation7);
//  inherited;
//end;
//
//function TXMLRemittanceInformation5_GBIC.Get_Ustrd: UnicodeString;
//begin
//  Result := ChildNodes['Ustrd'].Text;
//end;
//
//procedure TXMLRemittanceInformation5_GBIC.Set_Ustrd(Value: UnicodeString);
//begin
//  ChildNodes['Ustrd'].NodeValue := Value;
//end;
//
//function TXMLRemittanceInformation5_GBIC.Get_Strd: IXMLStructuredRemittanceInformation7;
//begin
//  Result := ChildNodes['Strd'] as IXMLStructuredRemittanceInformation7;
//end;
//
//{ TXMLPartyIdentification32_GBIC_4 }
//
//procedure TXMLPartyIdentification32_GBIC_4.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLParty6Choice_GBIC_3);
//  inherited;
//end;
//
//function TXMLPartyIdentification32_GBIC_4.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentification32_GBIC_4.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32_GBIC_4.Get_Id: IXMLParty6Choice_GBIC_3;
//begin
//  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_3;
//end;
//
//{ TXMLParty6Choice_GBIC_3 }
//
//procedure TXMLParty6Choice_GBIC_3.AfterConstruction;
//begin
//  RegisterChildNode('OrgId', TXMLOrganisationIdentification4_GBIC);
//  RegisterChildNode('PrvtId', TXMLPersonIdentification5_GBIC);
//  inherited;
//end;
//
//function TXMLParty6Choice_GBIC_3.Get_OrgId: IXMLOrganisationIdentification4_GBIC;
//begin
//  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentification4_GBIC;
//end;
//
//function TXMLParty6Choice_GBIC_3.Get_PrvtId: IXMLPersonIdentification5_GBIC;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5_GBIC;
//end;
//
//{ TXMLPartyIdentification32_GBIC_5 }
//
//procedure TXMLPartyIdentification32_GBIC_5.AfterConstruction;
//begin
//  RegisterChildNode('PstlAdr', TXMLPostalAddress6_GBIC);
//  RegisterChildNode('Id', TXMLParty6Choice_GBIC_3);
//  inherited;
//end;
//
//function TXMLPartyIdentification32_GBIC_5.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentification32_GBIC_5.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32_GBIC_5.Get_PstlAdr: IXMLPostalAddress6_GBIC;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6_GBIC;
//end;
//
//function TXMLPartyIdentification32_GBIC_5.Get_Id: IXMLParty6Choice_GBIC_3;
//begin
//  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_3;
//end;
//
//{ TXMLPostalAddress6_GBIC }
//
//procedure TXMLPostalAddress6_GBIC.AfterConstruction;
//begin
//  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
//  inherited;
//end;
//
//function TXMLPostalAddress6_GBIC.Get_Ctry: UnicodeString;
//begin
//  Result := ChildNodes['Ctry'].Text;
//end;
//
//procedure TXMLPostalAddress6_GBIC.Set_Ctry(Value: UnicodeString);
//begin
//  ChildNodes['Ctry'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6_GBIC.Get_AdrLine: IXMLMax70TextList;
//begin
//  Result := FAdrLine;
//end;
//
//{ TXMLCashAccount16_GBIC_2 }
//
//procedure TXMLCashAccount16_GBIC_2.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentification4Choice_GBIC);
//  inherited;
//end;
//
//function TXMLCashAccount16_GBIC_2.Get_Id: IXMLAccountIdentification4Choice_GBIC;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice_GBIC;
//end;
//
//{ TXMLAccountIdentification4Choice_GBIC }
//
//function TXMLAccountIdentification4Choice_GBIC.Get_IBAN: UnicodeString;
//begin
//  Result := ChildNodes['IBAN'].Text;
//end;
//
//procedure TXMLAccountIdentification4Choice_GBIC.Set_IBAN(Value: UnicodeString);
//begin
//  ChildNodes['IBAN'].NodeValue := Value;
//end;
//
//{ TXMLPartyIdentification32_GBIC_6 }
//
//procedure TXMLPartyIdentification32_GBIC_6.AfterConstruction;
//begin
//  RegisterChildNode('PstlAdr', TXMLPostalAddress6_GBIC);
//  inherited;
//end;
//
//function TXMLPartyIdentification32_GBIC_6.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentification32_GBIC_6.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32_GBIC_6.Get_PstlAdr: IXMLPostalAddress6_GBIC;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6_GBIC;
//end;
//
//{ TXMLCashAccount16_GBIC_3 }
//
//procedure TXMLCashAccount16_GBIC_3.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentification4Choice_GBIC);
//  inherited;
//end;
//
//function TXMLCashAccount16_GBIC_3.Get_Id: IXMLAccountIdentification4Choice_GBIC;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice_GBIC;
//end;
//
//function TXMLCashAccount16_GBIC_3.Get_Ccy: UnicodeString;
//begin
//  Result := ChildNodes['Ccy'].Text;
//end;
//
//procedure TXMLCashAccount16_GBIC_3.Set_Ccy(Value: UnicodeString);
//begin
//  ChildNodes['Ccy'].NodeValue := Value;
//end;
//
//{ TXMLMax70TextList }
//
//function TXMLMax70TextList.Add(const Value: UnicodeString): IXMLNode;
//begin
//  Result := AddItem(-1);
//  Result.NodeValue := Value;
//end;
//
//function TXMLMax70TextList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
//begin
//  Result := AddItem(Index);
//  Result.NodeValue := Value;
//end;
//
//function TXMLMax70TextList.Get_Item(Index: Integer): UnicodeString;
//begin
//  Result := List[Index].NodeValue;
//end;

//************************ pain.008.001.02_GBIC_2.xsd **************************

{ TXMLDocument00800102 }

procedure TXMLDocument00800102.AfterConstruction;
begin
  RegisterChildNode('CstmrDrctDbtInitn', TXMLCustomerDirectDebitInitiationV02);
  inherited;
end;

function TXMLDocument00800102.Get_CstmrDrctDbtInitn: IXMLCustomerDirectDebitInitiationV02;
begin
  Result := ChildNodes['CstmrDrctDbtInitn'] as IXMLCustomerDirectDebitInitiationV02;
end;

{ TXMLCustomerDirectDebitInitiationV02 }

procedure TXMLCustomerDirectDebitInitiationV02.AfterConstruction;
begin
  RegisterChildNode('GrpHdr', TXMLGroupHeaderSDD);
  RegisterChildNode('PmtInf', TXMLPaymentInstructionInformationSDD);
  FPmtInf := CreateCollection(TXMLPaymentInstructionInformationSDDList, IXMLPaymentInstructionInformationSDD, 'PmtInf') as IXMLPaymentInstructionInformationSDDList;
  inherited;
end;

function TXMLCustomerDirectDebitInitiationV02.Get_GrpHdr: IXMLGroupHeaderSDD;
begin
  Result := ChildNodes['GrpHdr'] as IXMLGroupHeaderSDD;
end;

function TXMLCustomerDirectDebitInitiationV02.Get_PmtInf: IXMLPaymentInstructionInformationSDDList;
begin
  Result := FPmtInf;
end;

{ TXMLGroupHeaderSDD }

procedure TXMLGroupHeaderSDD.AfterConstruction;
begin
  RegisterChildNode('InitgPty', TXMLPartyIdentificationSEPA1);
  inherited;
end;

function TXMLGroupHeaderSDD.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLGroupHeaderSDD.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLGroupHeaderSDD.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLGroupHeaderSDD.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLGroupHeaderSDD.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLGroupHeaderSDD.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLGroupHeaderSDD.Get_CtrlSum: UnicodeString;
begin
  Result := ChildNodes['CtrlSum'].Text;
end;

procedure TXMLGroupHeaderSDD.Set_CtrlSum(Value: UnicodeString);
begin
  ChildNodes['CtrlSum'].NodeValue := Value;
end;

function TXMLGroupHeaderSDD.Get_InitgPty: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['InitgPty'] as IXMLPartyIdentificationSEPA1;
end;

//{ TXMLPartyIdentificationSEPA1 }
//
//procedure TXMLPartyIdentificationSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLPartySEPAChoice);
//  inherited;
//end;
//
//function TXMLPartyIdentificationSEPA1.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentificationSEPA1.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentificationSEPA1.Get_Id: IXMLPartySEPAChoice;
//begin
//  Result := ChildNodes['Id'] as IXMLPartySEPAChoice;
//end;
//
//{ TXMLPartySEPAChoice }
//
//procedure TXMLPartySEPAChoice.AfterConstruction;
//begin
//  RegisterChildNode('OrgId', TXMLOrganisationIdentificationSEPAChoice);
//  RegisterChildNode('PrvtId', TXMLPersonIdentificationSEPA1Choice);
//  inherited;
//end;
//
//function TXMLPartySEPAChoice.Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
//begin
//  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentificationSEPAChoice;
//end;
//
//function TXMLPartySEPAChoice.Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentificationSEPA1Choice;
//end;
//
//{ TXMLOrganisationIdentificationSEPAChoice }
//
//procedure TXMLOrganisationIdentificationSEPAChoice.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
//  inherited;
//end;
//
//function TXMLOrganisationIdentificationSEPAChoice.Get_BICOrBEI: UnicodeString;
//begin
//  Result := ChildNodes['BICOrBEI'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSEPAChoice.Set_BICOrBEI(Value: UnicodeString);
//begin
//  ChildNodes['BICOrBEI'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentificationSEPAChoice.Get_Othr: IXMLGenericOrganisationIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericOrganisationIdentification1;
//end;
//
//{ TXMLGenericOrganisationIdentification1 }
//
//procedure TXMLGenericOrganisationIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLOrganisationIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLOrganisationIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLOrganisationIdentificationSchemeName1Choice }
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLPersonIdentificationSEPA1Choice }
//
//procedure TXMLPersonIdentificationSEPA1Choice.AfterConstruction;
//begin
//  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
//  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
//  inherited;
//end;
//
//function TXMLPersonIdentificationSEPA1Choice.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
//begin
//  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
//end;
//
//function TXMLPersonIdentificationSEPA1Choice.Get_Othr: IXMLGenericPersonIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1;
//end;
//
//{ TXMLDateAndPlaceOfBirth }
//
//function TXMLDateAndPlaceOfBirth.Get_BirthDt: UnicodeString;
//begin
//  Result := ChildNodes['BirthDt'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_BirthDt(Value: UnicodeString);
//begin
//  ChildNodes['BirthDt'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_PrvcOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['PrvcOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_PrvcOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['PrvcOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CityOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CityOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CityOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CityOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CtryOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CtryOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CtryOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CtryOfBirth'].NodeValue := Value;
//end;
//
//{ TXMLGenericPersonIdentification1 }
//
//procedure TXMLGenericPersonIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericPersonIdentification1.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLPersonIdentificationSchemeName1Choice }
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
{ TXMLPaymentInstructionInformationSDD }

procedure TXMLPaymentInstructionInformationSDD.AfterConstruction;
begin
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformationSDD);
  RegisterChildNode('Cdtr', TXMLPartyIdentificationSEPA5);
  RegisterChildNode('CdtrAcct', TXMLCashAccountSEPA1);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA3);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('CdtrSchmeId', TXMLPartyIdentificationSEPA3);
  RegisterChildNode('DrctDbtTxInf', TXMLDirectDebitTransactionInformationSDD);
  FDrctDbtTxInf := CreateCollection(TXMLDirectDebitTransactionInformationSDDList, IXMLDirectDebitTransactionInformationSDD, 'DrctDbtTxInf') as IXMLDirectDebitTransactionInformationSDDList;
  inherited;
end;

function TXMLPaymentInstructionInformationSDD.Get_PmtInfId: UnicodeString;
begin
  Result := ChildNodes['PmtInfId'].Text;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_PmtInfId(Value: UnicodeString);
begin
  ChildNodes['PmtInfId'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_PmtMtd: UnicodeString;
begin
  Result := ChildNodes['PmtMtd'].Text;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_PmtMtd(Value: UnicodeString);
begin
  ChildNodes['PmtMtd'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_BtchBookg: Boolean;
begin
  Result := ChildNodes['BtchBookg'].NodeValue;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_BtchBookg(Value: Boolean);
begin
  ChildNodes['BtchBookg'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_CtrlSum: UnicodeString;
begin
  Result := ChildNodes['CtrlSum'].Text;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_CtrlSum(Value: UnicodeString);
begin
  ChildNodes['CtrlSum'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_PmtTpInf: IXMLPaymentTypeInformationSDD;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformationSDD;
end;

function TXMLPaymentInstructionInformationSDD.Get_ReqdColltnDt: UnicodeString;
begin
  Result := ChildNodes['ReqdColltnDt'].Text;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_ReqdColltnDt(Value: UnicodeString);
begin
  ChildNodes['ReqdColltnDt'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_Cdtr: IXMLPartyIdentificationSEPA5;
begin
  Result := ChildNodes['Cdtr'] as IXMLPartyIdentificationSEPA5;
end;

function TXMLPaymentInstructionInformationSDD.Get_CdtrAcct: IXMLCashAccountSEPA1;
begin
  Result := ChildNodes['CdtrAcct'] as IXMLCashAccountSEPA1;
end;

function TXMLPaymentInstructionInformationSDD.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
end;

function TXMLPaymentInstructionInformationSDD.Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLPaymentInstructionInformationSDD.Get_ChrgBr: UnicodeString;
begin
  Result := ChildNodes['ChrgBr'].Text;
end;

procedure TXMLPaymentInstructionInformationSDD.Set_ChrgBr(Value: UnicodeString);
begin
  ChildNodes['ChrgBr'].NodeValue := Value;
end;

function TXMLPaymentInstructionInformationSDD.Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
begin
  Result := ChildNodes['CdtrSchmeId'] as IXMLPartyIdentificationSEPA3;
end;

function TXMLPaymentInstructionInformationSDD.Get_DrctDbtTxInf: IXMLDirectDebitTransactionInformationSDDList;
begin
  Result := FDrctDbtTxInf;
end;

{ TXMLPaymentInstructionInformationSDDList }

function TXMLPaymentInstructionInformationSDDList.Add: IXMLPaymentInstructionInformationSDD;
begin
  Result := AddItem(-1) as IXMLPaymentInstructionInformationSDD;
end;

function TXMLPaymentInstructionInformationSDDList.Insert(const Index: Integer): IXMLPaymentInstructionInformationSDD;
begin
  Result := AddItem(Index) as IXMLPaymentInstructionInformationSDD;
end;

function TXMLPaymentInstructionInformationSDDList.Get_Item(Index: Integer): IXMLPaymentInstructionInformationSDD;
begin
  Result := List[Index] as IXMLPaymentInstructionInformationSDD;
end;

{ TXMLPaymentTypeInformationSDD }

procedure TXMLPaymentTypeInformationSDD.AfterConstruction;
begin
  RegisterChildNode('SvcLvl', TXMLServiceLevel);
  RegisterChildNode('LclInstrm', TXMLLocalInstrumentSEPA);
  RegisterChildNode('CtgyPurp', TXMLCategoryPurposeSEPA);
  inherited;
end;

function TXMLPaymentTypeInformationSDD.Get_SvcLvl: IXMLServiceLevel;
begin
  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel;
end;

function TXMLPaymentTypeInformationSDD.Get_LclInstrm: IXMLLocalInstrumentSEPA;
begin
  Result := ChildNodes['LclInstrm'] as IXMLLocalInstrumentSEPA;
end;

function TXMLPaymentTypeInformationSDD.Get_SeqTp: UnicodeString;
begin
  Result := ChildNodes['SeqTp'].Text;
end;

procedure TXMLPaymentTypeInformationSDD.Set_SeqTp(Value: UnicodeString);
begin
  ChildNodes['SeqTp'].NodeValue := Value;
end;

function TXMLPaymentTypeInformationSDD.Get_CtgyPurp: IXMLCategoryPurposeSEPA;
begin
  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurposeSEPA;
end;

//{ TXMLServiceLevel }
//
//function TXMLServiceLevel.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLServiceLevel.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
{ TXMLLocalInstrumentSEPA }

function TXMLLocalInstrumentSEPA.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLLocalInstrumentSEPA.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

//{ TXMLCategoryPurposeSEPA }
//
//function TXMLCategoryPurposeSEPA.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLCategoryPurposeSEPA.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
{ TXMLPartyIdentificationSEPA5 }

procedure TXMLPartyIdentificationSEPA5.AfterConstruction;
begin
  RegisterChildNode('PstlAdr', TXMLPostalAddressSEPA);
  inherited;
end;

function TXMLPartyIdentificationSEPA5.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentificationSEPA5.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentificationSEPA5.Get_PstlAdr: IXMLPostalAddressSEPA;
begin
  Result := ChildNodes['PstlAdr'] as IXMLPostalAddressSEPA;
end;

//{ TXMLPostalAddressSEPA }
//
//procedure TXMLPostalAddressSEPA.AfterConstruction;
//begin
//  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
//  inherited;
//end;
//
//function TXMLPostalAddressSEPA.Get_Ctry: UnicodeString;
//begin
//  Result := ChildNodes['Ctry'].Text;
//end;
//
//procedure TXMLPostalAddressSEPA.Set_Ctry(Value: UnicodeString);
//begin
//  ChildNodes['Ctry'].NodeValue := Value;
//end;
//
//function TXMLPostalAddressSEPA.Get_AdrLine: IXMLMax70TextList;
//begin
//  Result := FAdrLine;
//end;
//
//{ TXMLCashAccountSEPA1 }
//
//procedure TXMLCashAccountSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentificationSEPA);
//  inherited;
//end;
//
//function TXMLCashAccountSEPA1.Get_Id: IXMLAccountIdentificationSEPA;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPA;
//end;
//
//function TXMLCashAccountSEPA1.Get_Ccy: UnicodeString;
//begin
//  Result := ChildNodes['Ccy'].Text;
//end;
//
//procedure TXMLCashAccountSEPA1.Set_Ccy(Value: UnicodeString);
//begin
//  ChildNodes['Ccy'].NodeValue := Value;
//end;
//
//{ TXMLAccountIdentificationSEPA }
//
//function TXMLAccountIdentificationSEPA.Get_IBAN: UnicodeString;
//begin
//  Result := ChildNodes['IBAN'].Text;
//end;
//
//procedure TXMLAccountIdentificationSEPA.Set_IBAN(Value: UnicodeString);
//begin
//  ChildNodes['IBAN'].NodeValue := Value;
//end;
//
//{ TXMLBranchAndFinancialInstitutionIdentificationSEPA3 }
//
//procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA3.AfterConstruction;
//begin
//  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA3);
//  inherited;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentificationSEPA3.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
//begin
//  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA3;
//end;
//
//{ TXMLFinancialInstitutionIdentificationSEPA3 }
//
//procedure TXMLFinancialInstitutionIdentificationSEPA3.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLOthrIdentification);
//  inherited;
//end;
//
//function TXMLFinancialInstitutionIdentificationSEPA3.Get_BIC: UnicodeString;
//begin
//  Result := ChildNodes['BIC'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentificationSEPA3.Set_BIC(Value: UnicodeString);
//begin
//  ChildNodes['BIC'].NodeValue := Value;
//end;
//
//function TXMLFinancialInstitutionIdentificationSEPA3.Get_Othr: IXMLOthrIdentification;
//begin
//  Result := ChildNodes['Othr'] as IXMLOthrIdentification;
//end;
//
//{ TXMLOthrIdentification }
//
//function TXMLOthrIdentification.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLOthrIdentification.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
{ TXMLPartyIdentificationSEPA3 }

procedure TXMLPartyIdentificationSEPA3.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLPartySEPA2);
  inherited;
end;

function TXMLPartyIdentificationSEPA3.Get_Id: IXMLPartySEPA2;
begin
  Result := ChildNodes['Id'] as IXMLPartySEPA2;
end;

{ TXMLPartySEPA2 }

procedure TXMLPartySEPA2.AfterConstruction;
begin
  RegisterChildNode('PrvtId', TXMLPersonIdentificationSEPA2);
  inherited;
end;

function TXMLPartySEPA2.Get_PrvtId: IXMLPersonIdentificationSEPA2;
begin
  Result := ChildNodes['PrvtId'] as IXMLPersonIdentificationSEPA2;
end;

{ TXMLPersonIdentificationSEPA2 }

procedure TXMLPersonIdentificationSEPA2.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLRestrictedPersonIdentificationSEPA);
  inherited;
end;

function TXMLPersonIdentificationSEPA2.Get_Othr: IXMLRestrictedPersonIdentificationSEPA;
begin
  Result := ChildNodes['Othr'] as IXMLRestrictedPersonIdentificationSEPA;
end;

{ TXMLRestrictedPersonIdentificationSEPA }

procedure TXMLRestrictedPersonIdentificationSEPA.AfterConstruction;
begin
  RegisterChildNode('SchmeNm', TXMLRestrictedPersonIdentificationSchemeNameSEPA);
  inherited;
end;

function TXMLRestrictedPersonIdentificationSEPA.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLRestrictedPersonIdentificationSEPA.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLRestrictedPersonIdentificationSEPA.Get_SchmeNm: IXMLRestrictedPersonIdentificationSchemeNameSEPA;
begin
  Result := ChildNodes['SchmeNm'] as IXMLRestrictedPersonIdentificationSchemeNameSEPA;
end;

{ TXMLRestrictedPersonIdentificationSchemeNameSEPA }

function TXMLRestrictedPersonIdentificationSchemeNameSEPA.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLRestrictedPersonIdentificationSchemeNameSEPA.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLDirectDebitTransactionInformationSDD }

procedure TXMLDirectDebitTransactionInformationSDD.AfterConstruction;
begin
  RegisterChildNode('PmtId', TXMLPaymentIdentificationSEPA);
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformationSDD);
  RegisterChildNode('InstdAmt', TXMLActiveOrHistoricCurrencyAndAmountSEPA);
  RegisterChildNode('DrctDbtTx', TXMLDirectDebitTransactionSDD);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA3);
  RegisterChildNode('Dbtr', TXMLPartyIdentificationSEPA2);
  RegisterChildNode('DbtrAcct', TXMLCashAccountSEPA2);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentificationSEPA1);
  RegisterChildNode('Purp', TXMLPurposeSEPA);
  RegisterChildNode('RmtInf', TXMLRemittanceInformationSEPA1Choice);
  inherited;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_PmtId: IXMLPaymentIdentificationSEPA;
begin
  Result := ChildNodes['PmtId'] as IXMLPaymentIdentificationSEPA;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_PmtTpInf: IXMLPaymentTypeInformationSDD;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformationSDD;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
begin
  Result := ChildNodes['InstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmountSEPA;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_ChrgBr: UnicodeString;
begin
  Result := ChildNodes['ChrgBr'].Text;
end;

procedure TXMLDirectDebitTransactionInformationSDD.Set_ChrgBr(Value: UnicodeString);
begin
  ChildNodes['ChrgBr'].NodeValue := Value;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_DrctDbtTx: IXMLDirectDebitTransactionSDD;
begin
  Result := ChildNodes['DrctDbtTx'] as IXMLDirectDebitTransactionSDD;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_UltmtCdtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA3;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_Dbtr: IXMLPartyIdentificationSEPA2;
begin
  Result := ChildNodes['Dbtr'] as IXMLPartyIdentificationSEPA2;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_DbtrAcct: IXMLCashAccountSEPA2;
begin
  Result := ChildNodes['DbtrAcct'] as IXMLCashAccountSEPA2;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_UltmtDbtr: IXMLPartyIdentificationSEPA1;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentificationSEPA1;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_Purp: IXMLPurposeSEPA;
begin
  Result := ChildNodes['Purp'] as IXMLPurposeSEPA;
end;

function TXMLDirectDebitTransactionInformationSDD.Get_RmtInf: IXMLRemittanceInformationSEPA1Choice;
begin
  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformationSEPA1Choice;
end;

{ TXMLDirectDebitTransactionInformationSDDList }

function TXMLDirectDebitTransactionInformationSDDList.Add: IXMLDirectDebitTransactionInformationSDD;
begin
  Result := AddItem(-1) as IXMLDirectDebitTransactionInformationSDD;
end;

function TXMLDirectDebitTransactionInformationSDDList.Insert(const Index: Integer): IXMLDirectDebitTransactionInformationSDD;
begin
  Result := AddItem(Index) as IXMLDirectDebitTransactionInformationSDD;
end;

function TXMLDirectDebitTransactionInformationSDDList.Get_Item(Index: Integer): IXMLDirectDebitTransactionInformationSDD;
begin
  Result := List[Index] as IXMLDirectDebitTransactionInformationSDD;
end;

//{ TXMLPaymentIdentificationSEPA }
//
//function TXMLPaymentIdentificationSEPA.Get_InstrId: UnicodeString;
//begin
//  Result := ChildNodes['InstrId'].Text;
//end;
//
//procedure TXMLPaymentIdentificationSEPA.Set_InstrId(Value: UnicodeString);
//begin
//  ChildNodes['InstrId'].NodeValue := Value;
//end;
//
//function TXMLPaymentIdentificationSEPA.Get_EndToEndId: UnicodeString;
//begin
//  Result := ChildNodes['EndToEndId'].Text;
//end;
//
//procedure TXMLPaymentIdentificationSEPA.Set_EndToEndId(Value: UnicodeString);
//begin
//  ChildNodes['EndToEndId'].NodeValue := Value;
//end;
//
//{ TXMLActiveOrHistoricCurrencyAndAmountSEPA }
//
//function TXMLActiveOrHistoricCurrencyAndAmountSEPA.Get_Ccy: UnicodeString;
//begin
//  Result := AttributeNodes['Ccy'].Text;
//end;
//
//procedure TXMLActiveOrHistoricCurrencyAndAmountSEPA.Set_Ccy(Value: UnicodeString);
//begin
//  SetAttribute('Ccy', Value);
//end;
//
{ TXMLDirectDebitTransactionSDD }

procedure TXMLDirectDebitTransactionSDD.AfterConstruction;
begin
  RegisterChildNode('MndtRltdInf', TXMLMandateRelatedInformationSDD);
  RegisterChildNode('CdtrSchmeId', TXMLPartyIdentificationSEPA3);
  inherited;
end;

function TXMLDirectDebitTransactionSDD.Get_MndtRltdInf: IXMLMandateRelatedInformationSDD;
begin
  Result := ChildNodes['MndtRltdInf'] as IXMLMandateRelatedInformationSDD;
end;

function TXMLDirectDebitTransactionSDD.Get_CdtrSchmeId: IXMLPartyIdentificationSEPA3;
begin
  Result := ChildNodes['CdtrSchmeId'] as IXMLPartyIdentificationSEPA3;
end;

{ TXMLMandateRelatedInformationSDD }

procedure TXMLMandateRelatedInformationSDD.AfterConstruction;
begin
  RegisterChildNode('AmdmntInfDtls', TXMLAmendmentInformationDetailsSDD);
  inherited;
end;

function TXMLMandateRelatedInformationSDD.Get_MndtId: UnicodeString;
begin
  Result := ChildNodes['MndtId'].Text;
end;

procedure TXMLMandateRelatedInformationSDD.Set_MndtId(Value: UnicodeString);
begin
  ChildNodes['MndtId'].NodeValue := Value;
end;

function TXMLMandateRelatedInformationSDD.Get_DtOfSgntr: UnicodeString;
begin
  Result := ChildNodes['DtOfSgntr'].Text;
end;

procedure TXMLMandateRelatedInformationSDD.Set_DtOfSgntr(Value: UnicodeString);
begin
  ChildNodes['DtOfSgntr'].NodeValue := Value;
end;

function TXMLMandateRelatedInformationSDD.Get_AmdmntInd: Boolean;
begin
  Result := ChildNodes['AmdmntInd'].NodeValue;
end;

procedure TXMLMandateRelatedInformationSDD.Set_AmdmntInd(Value: Boolean);
begin
  ChildNodes['AmdmntInd'].NodeValue := Value;
end;

function TXMLMandateRelatedInformationSDD.Get_AmdmntInfDtls: IXMLAmendmentInformationDetailsSDD;
begin
  Result := ChildNodes['AmdmntInfDtls'] as IXMLAmendmentInformationDetailsSDD;
end;

function TXMLMandateRelatedInformationSDD.Get_ElctrncSgntr: UnicodeString;
begin
  Result := ChildNodes['ElctrncSgntr'].Text;
end;

procedure TXMLMandateRelatedInformationSDD.Set_ElctrncSgntr(Value: UnicodeString);
begin
  ChildNodes['ElctrncSgntr'].NodeValue := Value;
end;

{ TXMLAmendmentInformationDetailsSDD }

procedure TXMLAmendmentInformationDetailsSDD.AfterConstruction;
begin
  RegisterChildNode('OrgnlCdtrSchmeId', TXMLPartyIdentificationSEPA4);
  RegisterChildNode('OrgnlDbtrAcct', TXMLCashAccountSEPAMandate);
  RegisterChildNode('OrgnlDbtrAgt', TXMLBranchAndFinancialInstitutionIdentificationSEPA2);
  inherited;
end;

function TXMLAmendmentInformationDetailsSDD.Get_OrgnlMndtId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMndtId'].Text;
end;

procedure TXMLAmendmentInformationDetailsSDD.Set_OrgnlMndtId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMndtId'].NodeValue := Value;
end;

function TXMLAmendmentInformationDetailsSDD.Get_OrgnlCdtrSchmeId: IXMLPartyIdentificationSEPA4;
begin
  Result := ChildNodes['OrgnlCdtrSchmeId'] as IXMLPartyIdentificationSEPA4;
end;

function TXMLAmendmentInformationDetailsSDD.Get_OrgnlDbtrAcct: IXMLCashAccountSEPAMandate;
begin
  Result := ChildNodes['OrgnlDbtrAcct'] as IXMLCashAccountSEPAMandate;
end;

function TXMLAmendmentInformationDetailsSDD.Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
begin
  Result := ChildNodes['OrgnlDbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentificationSEPA2;
end;

{ TXMLPartyIdentificationSEPA4 }

procedure TXMLPartyIdentificationSEPA4.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLPartySEPA2);
  inherited;
end;

function TXMLPartyIdentificationSEPA4.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentificationSEPA4.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentificationSEPA4.Get_Id: IXMLPartySEPA2;
begin
  Result := ChildNodes['Id'] as IXMLPartySEPA2;
end;

{ TXMLCashAccountSEPAMandate }

procedure TXMLCashAccountSEPAMandate.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentificationSEPAMandate);
  inherited;
end;

function TXMLCashAccountSEPAMandate.Get_Id: IXMLAccountIdentificationSEPAMandate;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPAMandate;
end;

{ TXMLAccountIdentificationSEPAMandate }

procedure TXMLAccountIdentificationSEPAMandate.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericAccountIdentificationSEPA);
  inherited;
end;

function TXMLAccountIdentificationSEPAMandate.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLAccountIdentificationSEPAMandate.Set_IBAN(Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

function TXMLAccountIdentificationSEPAMandate.Get_Othr: IXMLGenericAccountIdentificationSEPA;
begin
  Result := ChildNodes['Othr'] as IXMLGenericAccountIdentificationSEPA;
end;

{ TXMLGenericAccountIdentificationSEPA }

function TXMLGenericAccountIdentificationSEPA.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericAccountIdentificationSEPA.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

{ TXMLBranchAndFinancialInstitutionIdentificationSEPA2 }

procedure TXMLBranchAndFinancialInstitutionIdentificationSEPA2.AfterConstruction;
begin
  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentificationSEPA2);
  inherited;
end;

function TXMLBranchAndFinancialInstitutionIdentificationSEPA2.Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2;
begin
  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentificationSEPA2;
end;

{ TXMLFinancialInstitutionIdentificationSEPA2 }

function TXMLFinancialInstitutionIdentificationSEPA2.Get_BIC: UnicodeString;
begin
  Result := ChildNodes['BIC'].Text;
end;

procedure TXMLFinancialInstitutionIdentificationSEPA2.Set_BIC(Value: UnicodeString);
begin
  ChildNodes['BIC'].NodeValue := Value;
end;

//{ TXMLPartyIdentificationSEPA2 }
//
//procedure TXMLPartyIdentificationSEPA2.AfterConstruction;
//begin
//  RegisterChildNode('PstlAdr', TXMLPostalAddressSEPA);
//  RegisterChildNode('Id', TXMLPartySEPAChoice);
//  inherited;
//end;
//
//function TXMLPartyIdentificationSEPA2.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentificationSEPA2.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentificationSEPA2.Get_PstlAdr: IXMLPostalAddressSEPA;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddressSEPA;
//end;
//
//function TXMLPartyIdentificationSEPA2.Get_Id: IXMLPartySEPAChoice;
//begin
//  Result := ChildNodes['Id'] as IXMLPartySEPAChoice;
//end;
//
//{ TXMLCashAccountSEPA2 }
//
//procedure TXMLCashAccountSEPA2.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentificationSEPA);
//  inherited;
//end;
//
//function TXMLCashAccountSEPA2.Get_Id: IXMLAccountIdentificationSEPA;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentificationSEPA;
//end;
//
//{ TXMLPurposeSEPA }
//
//function TXMLPurposeSEPA.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLPurposeSEPA.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLRemittanceInformationSEPA1Choice }
//
//procedure TXMLRemittanceInformationSEPA1Choice.AfterConstruction;
//begin
//  RegisterChildNode('Strd', TXMLStructuredRemittanceInformationSEPA1);
//  inherited;
//end;
//
//function TXMLRemittanceInformationSEPA1Choice.Get_Ustrd: UnicodeString;
//begin
//  Result := ChildNodes['Ustrd'].Text;
//end;
//
//procedure TXMLRemittanceInformationSEPA1Choice.Set_Ustrd(Value: UnicodeString);
//begin
//  ChildNodes['Ustrd'].NodeValue := Value;
//end;
//
//function TXMLRemittanceInformationSEPA1Choice.Get_Strd: IXMLStructuredRemittanceInformationSEPA1;
//begin
//  Result := ChildNodes['Strd'] as IXMLStructuredRemittanceInformationSEPA1;
//end;
//
//{ TXMLStructuredRemittanceInformationSEPA1 }
//
//procedure TXMLStructuredRemittanceInformationSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('CdtrRefInf', TXMLCreditorReferenceInformationSEPA1);
//  inherited;
//end;
//
//function TXMLStructuredRemittanceInformationSEPA1.Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA1;
//begin
//  Result := ChildNodes['CdtrRefInf'] as IXMLCreditorReferenceInformationSEPA1;
//end;
//
//{ TXMLCreditorReferenceInformationSEPA1 }
//
//procedure TXMLCreditorReferenceInformationSEPA1.AfterConstruction;
//begin
//  RegisterChildNode('Tp', TXMLCreditorReferenceTypeSEPA);
//  inherited;
//end;
//
//function TXMLCreditorReferenceInformationSEPA1.Get_Tp: IXMLCreditorReferenceTypeSEPA;
//begin
//  Result := ChildNodes['Tp'] as IXMLCreditorReferenceTypeSEPA;
//end;
//
//function TXMLCreditorReferenceInformationSEPA1.Get_Ref: UnicodeString;
//begin
//  Result := ChildNodes['Ref'].Text;
//end;
//
//procedure TXMLCreditorReferenceInformationSEPA1.Set_Ref(Value: UnicodeString);
//begin
//  ChildNodes['Ref'].NodeValue := Value;
//end;
//
//{ TXMLCreditorReferenceTypeSEPA }
//
//procedure TXMLCreditorReferenceTypeSEPA.AfterConstruction;
//begin
//  RegisterChildNode('CdOrPrtry', TXMLCreditorReferenceTypeCodeSEPA);
//  inherited;
//end;
//
//function TXMLCreditorReferenceTypeSEPA.Get_CdOrPrtry: IXMLCreditorReferenceTypeCodeSEPA;
//begin
//  Result := ChildNodes['CdOrPrtry'] as IXMLCreditorReferenceTypeCodeSEPA;
//end;
//
//function TXMLCreditorReferenceTypeSEPA.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLCreditorReferenceTypeSEPA.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLCreditorReferenceTypeCodeSEPA }
//
//function TXMLCreditorReferenceTypeCodeSEPA.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLCreditorReferenceTypeCodeSEPA.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//{ TXMLMax70TextList }
//
//function TXMLMax70TextList.Add(const Value: UnicodeString): IXMLNode;
//begin
//  Result := AddItem(-1);
//  Result.NodeValue := Value;
//end;
//
//function TXMLMax70TextList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
//begin
//  Result := AddItem(Index);
//  Result.NodeValue := Value;
//end;
//
//function TXMLMax70TextList.Get_Item(Index: Integer): UnicodeString;
//begin
//  Result := List[Index].NodeValue;
//end;

//************************ camt.052.001.02.xsd **************************

{ TXMLDocument05200102 }

procedure TXMLDocument05200102.AfterConstruction;
begin
  RegisterChildNode('BkToCstmrAcctRpt', TXMLBankToCustomerAccountReportV02);
  inherited;
end;

function TXMLDocument05200102.Get_BkToCstmrAcctRpt: IXMLBankToCustomerAccountReportV02;
begin
  Result := ChildNodes['BkToCstmrAcctRpt'] as IXMLBankToCustomerAccountReportV02;
end;

{ TXMLBankToCustomerAccountReportV02 }

procedure TXMLBankToCustomerAccountReportV02.AfterConstruction;
begin
  RegisterChildNode('GrpHdr', TXMLGroupHeader42);
  RegisterChildNode('Rpt', TXMLAccountReport11);
  FRpt := CreateCollection(TXMLAccountReport11List, IXMLAccountReport11, 'Rpt') as IXMLAccountReport11List;
  inherited;
end;

function TXMLBankToCustomerAccountReportV02.Get_GrpHdr: IXMLGroupHeader42;
begin
  Result := ChildNodes['GrpHdr'] as IXMLGroupHeader42;
end;

function TXMLBankToCustomerAccountReportV02.Get_Rpt: IXMLAccountReport11List;
begin
  Result := FRpt;
end;

{ TXMLGroupHeader42 }

procedure TXMLGroupHeader42.AfterConstruction;
begin
  RegisterChildNode('MsgRcpt', TXMLPartyIdentification32);
  RegisterChildNode('MsgPgntn', TXMLPagination);
  inherited;
end;

function TXMLGroupHeader42.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLGroupHeader42.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLGroupHeader42.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLGroupHeader42.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLGroupHeader42.Get_MsgRcpt: IXMLPartyIdentification32;
begin
  Result := ChildNodes['MsgRcpt'] as IXMLPartyIdentification32;
end;

function TXMLGroupHeader42.Get_MsgPgntn: IXMLPagination;
begin
  Result := ChildNodes['MsgPgntn'] as IXMLPagination;
end;

function TXMLGroupHeader42.Get_AddtlInf: UnicodeString;
begin
  Result := ChildNodes['AddtlInf'].Text;
end;

procedure TXMLGroupHeader42.Set_AddtlInf(Value: UnicodeString);
begin
  ChildNodes['AddtlInf'].NodeValue := Value;
end;

//{ TXMLPartyIdentification32 }
//
//procedure TXMLPartyIdentification32.AfterConstruction;
//begin
//  RegisterChildNode('PstlAdr', TXMLPostalAddress6);
//  RegisterChildNode('Id', TXMLParty6Choice);
//  RegisterChildNode('CtctDtls', TXMLContactDetails2);
//  inherited;
//end;
//
//function TXMLPartyIdentification32.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLPartyIdentification32.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32.Get_PstlAdr: IXMLPostalAddress6;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6;
//end;
//
//function TXMLPartyIdentification32.Get_Id: IXMLParty6Choice;
//begin
//  Result := ChildNodes['Id'] as IXMLParty6Choice;
//end;
//
//function TXMLPartyIdentification32.Get_CtryOfRes: UnicodeString;
//begin
//  Result := ChildNodes['CtryOfRes'].Text;
//end;
//
//procedure TXMLPartyIdentification32.Set_CtryOfRes(Value: UnicodeString);
//begin
//  ChildNodes['CtryOfRes'].NodeValue := Value;
//end;
//
//function TXMLPartyIdentification32.Get_CtctDtls: IXMLContactDetails2;
//begin
//  Result := ChildNodes['CtctDtls'] as IXMLContactDetails2;
//end;
//
//{ TXMLPostalAddress6 }
//
//procedure TXMLPostalAddress6.AfterConstruction;
//begin
//  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
//  inherited;
//end;
//
//function TXMLPostalAddress6.Get_AdrTp: UnicodeString;
//begin
//  Result := ChildNodes['AdrTp'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_AdrTp(Value: UnicodeString);
//begin
//  ChildNodes['AdrTp'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_Dept: UnicodeString;
//begin
//  Result := ChildNodes['Dept'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_Dept(Value: UnicodeString);
//begin
//  ChildNodes['Dept'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_SubDept: UnicodeString;
//begin
//  Result := ChildNodes['SubDept'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_SubDept(Value: UnicodeString);
//begin
//  ChildNodes['SubDept'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_StrtNm: UnicodeString;
//begin
//  Result := ChildNodes['StrtNm'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_StrtNm(Value: UnicodeString);
//begin
//  ChildNodes['StrtNm'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_BldgNb: UnicodeString;
//begin
//  Result := ChildNodes['BldgNb'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_BldgNb(Value: UnicodeString);
//begin
//  ChildNodes['BldgNb'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_PstCd: UnicodeString;
//begin
//  Result := ChildNodes['PstCd'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_PstCd(Value: UnicodeString);
//begin
//  ChildNodes['PstCd'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_TwnNm: UnicodeString;
//begin
//  Result := ChildNodes['TwnNm'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_TwnNm(Value: UnicodeString);
//begin
//  ChildNodes['TwnNm'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_CtrySubDvsn: UnicodeString;
//begin
//  Result := ChildNodes['CtrySubDvsn'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_CtrySubDvsn(Value: UnicodeString);
//begin
//  ChildNodes['CtrySubDvsn'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_Ctry: UnicodeString;
//begin
//  Result := ChildNodes['Ctry'].Text;
//end;
//
//procedure TXMLPostalAddress6.Set_Ctry(Value: UnicodeString);
//begin
//  ChildNodes['Ctry'].NodeValue := Value;
//end;
//
//function TXMLPostalAddress6.Get_AdrLine: IXMLMax70TextList;
//begin
//  Result := FAdrLine;
//end;
//
//{ TXMLParty6Choice }
//
//procedure TXMLParty6Choice.AfterConstruction;
//begin
//  RegisterChildNode('OrgId', TXMLOrganisationIdentification4);
//  RegisterChildNode('PrvtId', TXMLPersonIdentification5);
//  inherited;
//end;
//
//function TXMLParty6Choice.Get_OrgId: IXMLOrganisationIdentification4;
//begin
//  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentification4;
//end;
//
//function TXMLParty6Choice.Get_PrvtId: IXMLPersonIdentification5;
//begin
//  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5;
//end;
//
//{ TXMLOrganisationIdentification4 }
//
//procedure TXMLOrganisationIdentification4.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
//  FOthr := CreateCollection(TXMLGenericOrganisationIdentification1List, IXMLGenericOrganisationIdentification1, 'Othr') as IXMLGenericOrganisationIdentification1List;
//  inherited;
//end;
//
//function TXMLOrganisationIdentification4.Get_BICOrBEI: UnicodeString;
//begin
//  Result := ChildNodes['BICOrBEI'].Text;
//end;
//
//procedure TXMLOrganisationIdentification4.Set_BICOrBEI(Value: UnicodeString);
//begin
//  ChildNodes['BICOrBEI'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentification4.Get_Othr: IXMLGenericOrganisationIdentification1List;
//begin
//  Result := FOthr;
//end;
//
//{ TXMLGenericOrganisationIdentification1 }
//
//procedure TXMLGenericOrganisationIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLOrganisationIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_SchmeNm: IXMLOrganisationIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLOrganisationIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericOrganisationIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericOrganisationIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLGenericOrganisationIdentification1List }
//
//function TXMLGenericOrganisationIdentification1List.Add: IXMLGenericOrganisationIdentification1;
//begin
//  Result := AddItem(-1) as IXMLGenericOrganisationIdentification1;
//end;
//
//function TXMLGenericOrganisationIdentification1List.Insert(const Index: Integer): IXMLGenericOrganisationIdentification1;
//begin
//  Result := AddItem(Index) as IXMLGenericOrganisationIdentification1;
//end;
//
//function TXMLGenericOrganisationIdentification1List.Get_Item(Index: Integer): IXMLGenericOrganisationIdentification1;
//begin
//  Result := List[Index] as IXMLGenericOrganisationIdentification1;
//end;
//
//{ TXMLOrganisationIdentificationSchemeName1Choice }
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLOrganisationIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLOrganisationIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLPersonIdentification5 }
//
//procedure TXMLPersonIdentification5.AfterConstruction;
//begin
//  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
//  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
//  FOthr := CreateCollection(TXMLGenericPersonIdentification1List, IXMLGenericPersonIdentification1, 'Othr') as IXMLGenericPersonIdentification1List;
//  inherited;
//end;
//
//function TXMLPersonIdentification5.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
//begin
//  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
//end;
//
//function TXMLPersonIdentification5.Get_Othr: IXMLGenericPersonIdentification1List;
//begin
//  Result := FOthr;
//end;
//
//{ TXMLDateAndPlaceOfBirth }
//
//function TXMLDateAndPlaceOfBirth.Get_BirthDt: UnicodeString;
//begin
//  Result := ChildNodes['BirthDt'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_BirthDt(Value: UnicodeString);
//begin
//  ChildNodes['BirthDt'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_PrvcOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['PrvcOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_PrvcOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['PrvcOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CityOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CityOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CityOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CityOfBirth'].NodeValue := Value;
//end;
//
//function TXMLDateAndPlaceOfBirth.Get_CtryOfBirth: UnicodeString;
//begin
//  Result := ChildNodes['CtryOfBirth'].Text;
//end;
//
//procedure TXMLDateAndPlaceOfBirth.Set_CtryOfBirth(Value: UnicodeString);
//begin
//  ChildNodes['CtryOfBirth'].NodeValue := Value;
//end;
//
//{ TXMLGenericPersonIdentification1 }
//
//procedure TXMLGenericPersonIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericPersonIdentification1.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericPersonIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericPersonIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLGenericPersonIdentification1List }
//
//function TXMLGenericPersonIdentification1List.Add: IXMLGenericPersonIdentification1;
//begin
//  Result := AddItem(-1) as IXMLGenericPersonIdentification1;
//end;
//
//function TXMLGenericPersonIdentification1List.Insert(const Index: Integer): IXMLGenericPersonIdentification1;
//begin
//  Result := AddItem(Index) as IXMLGenericPersonIdentification1;
//end;
//
//function TXMLGenericPersonIdentification1List.Get_Item(Index: Integer): IXMLGenericPersonIdentification1;
//begin
//  Result := List[Index] as IXMLGenericPersonIdentification1;
//end;
//
//{ TXMLPersonIdentificationSchemeName1Choice }
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLPersonIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLPersonIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLContactDetails2 }
//
//function TXMLContactDetails2.Get_NmPrfx: UnicodeString;
//begin
//  Result := ChildNodes['NmPrfx'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_NmPrfx(Value: UnicodeString);
//begin
//  ChildNodes['NmPrfx'].NodeValue := Value;
//end;
//
//function TXMLContactDetails2.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLContactDetails2.Get_PhneNb: UnicodeString;
//begin
//  Result := ChildNodes['PhneNb'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_PhneNb(Value: UnicodeString);
//begin
//  ChildNodes['PhneNb'].NodeValue := Value;
//end;
//
//function TXMLContactDetails2.Get_MobNb: UnicodeString;
//begin
//  Result := ChildNodes['MobNb'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_MobNb(Value: UnicodeString);
//begin
//  ChildNodes['MobNb'].NodeValue := Value;
//end;
//
//function TXMLContactDetails2.Get_FaxNb: UnicodeString;
//begin
//  Result := ChildNodes['FaxNb'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_FaxNb(Value: UnicodeString);
//begin
//  ChildNodes['FaxNb'].NodeValue := Value;
//end;
//
//function TXMLContactDetails2.Get_EmailAdr: UnicodeString;
//begin
//  Result := ChildNodes['EmailAdr'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_EmailAdr(Value: UnicodeString);
//begin
//  ChildNodes['EmailAdr'].NodeValue := Value;
//end;
//
//function TXMLContactDetails2.Get_Othr: UnicodeString;
//begin
//  Result := ChildNodes['Othr'].Text;
//end;
//
//procedure TXMLContactDetails2.Set_Othr(Value: UnicodeString);
//begin
//  ChildNodes['Othr'].NodeValue := Value;
//end;
//
{ TXMLPagination }

function TXMLPagination.Get_PgNb: UnicodeString;
begin
  Result := ChildNodes['PgNb'].Text;
end;

procedure TXMLPagination.Set_PgNb(Value: UnicodeString);
begin
  ChildNodes['PgNb'].NodeValue := Value;
end;

function TXMLPagination.Get_LastPgInd: Boolean;
begin
  Result := ChildNodes['LastPgInd'].NodeValue;
end;

procedure TXMLPagination.Set_LastPgInd(Value: Boolean);
begin
  ChildNodes['LastPgInd'].NodeValue := Value;
end;

{ TXMLAccountReport11 }

procedure TXMLAccountReport11.AfterConstruction;
begin
  RegisterChildNode('FrToDt', TXMLDateTimePeriodDetails);
  RegisterChildNode('RptgSrc', TXMLReportingSource1Choice);
  RegisterChildNode('Acct', TXMLCashAccount20);
  RegisterChildNode('RltdAcct', TXMLCashAccount16);
  RegisterChildNode('Intrst', TXMLAccountInterest2);
  RegisterChildNode('Bal', TXMLCashBalance3);
  RegisterChildNode('TxsSummry', TXMLTotalTransactions2);
  RegisterChildNode('Ntry', TXMLReportEntry2);
  FIntrst := CreateCollection(TXMLAccountInterest2List, IXMLAccountInterest2, 'Intrst') as IXMLAccountInterest2List;
  FBal := CreateCollection(TXMLCashBalance3List, IXMLCashBalance3, 'Bal') as IXMLCashBalance3List;
  FNtry := CreateCollection(TXMLReportEntry2List, IXMLReportEntry2, 'Ntry') as IXMLReportEntry2List;
  inherited;
end;

function TXMLAccountReport11.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLAccountReport11.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLAccountReport11.Get_ElctrncSeqNb: UnicodeString;
begin
  Result := ChildNodes['ElctrncSeqNb'].Text;
end;

procedure TXMLAccountReport11.Set_ElctrncSeqNb(Value: UnicodeString);
begin
  ChildNodes['ElctrncSeqNb'].NodeValue := Value;
end;

function TXMLAccountReport11.Get_LglSeqNb: UnicodeString;
begin
  Result := ChildNodes['LglSeqNb'].Text;
end;

procedure TXMLAccountReport11.Set_LglSeqNb(Value: UnicodeString);
begin
  ChildNodes['LglSeqNb'].NodeValue := Value;
end;

function TXMLAccountReport11.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLAccountReport11.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLAccountReport11.Get_FrToDt: IXMLDateTimePeriodDetails;
begin
  Result := ChildNodes['FrToDt'] as IXMLDateTimePeriodDetails;
end;

function TXMLAccountReport11.Get_CpyDplctInd: UnicodeString;
begin
  Result := ChildNodes['CpyDplctInd'].Text;
end;

procedure TXMLAccountReport11.Set_CpyDplctInd(Value: UnicodeString);
begin
  ChildNodes['CpyDplctInd'].NodeValue := Value;
end;

function TXMLAccountReport11.Get_RptgSrc: IXMLReportingSource1Choice;
begin
  Result := ChildNodes['RptgSrc'] as IXMLReportingSource1Choice;
end;

function TXMLAccountReport11.Get_Acct: IXMLCashAccount20;
begin
  Result := ChildNodes['Acct'] as IXMLCashAccount20;
end;

function TXMLAccountReport11.Get_RltdAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['RltdAcct'] as IXMLCashAccount16;
end;

function TXMLAccountReport11.Get_Intrst: IXMLAccountInterest2List;
begin
  Result := FIntrst;
end;

function TXMLAccountReport11.Get_Bal: IXMLCashBalance3List;
begin
  Result := FBal;
end;

function TXMLAccountReport11.Get_TxsSummry: IXMLTotalTransactions2;
begin
  Result := ChildNodes['TxsSummry'] as IXMLTotalTransactions2;
end;

function TXMLAccountReport11.Get_Ntry: IXMLReportEntry2List;
begin
  Result := FNtry;
end;

function TXMLAccountReport11.Get_AddtlRptInf: UnicodeString;
begin
  Result := ChildNodes['AddtlRptInf'].Text;
end;

procedure TXMLAccountReport11.Set_AddtlRptInf(Value: UnicodeString);
begin
  ChildNodes['AddtlRptInf'].NodeValue := Value;
end;

{ TXMLAccountReport11List }

function TXMLAccountReport11List.Add: IXMLAccountReport11;
begin
  Result := AddItem(-1) as IXMLAccountReport11;
end;

function TXMLAccountReport11List.Insert(const Index: Integer): IXMLAccountReport11;
begin
  Result := AddItem(Index) as IXMLAccountReport11;
end;

function TXMLAccountReport11List.Get_Item(Index: Integer): IXMLAccountReport11;
begin
  Result := List[Index] as IXMLAccountReport11;
end;

{ TXMLDateTimePeriodDetails }

function TXMLDateTimePeriodDetails.Get_FrDtTm: UnicodeString;
begin
  Result := ChildNodes['FrDtTm'].Text;
end;

procedure TXMLDateTimePeriodDetails.Set_FrDtTm(Value: UnicodeString);
begin
  ChildNodes['FrDtTm'].NodeValue := Value;
end;

function TXMLDateTimePeriodDetails.Get_ToDtTm: UnicodeString;
begin
  Result := ChildNodes['ToDtTm'].Text;
end;

procedure TXMLDateTimePeriodDetails.Set_ToDtTm(Value: UnicodeString);
begin
  ChildNodes['ToDtTm'].NodeValue := Value;
end;

{ TXMLReportingSource1Choice }

function TXMLReportingSource1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLReportingSource1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLReportingSource1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLReportingSource1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLCashAccount20 }

procedure TXMLCashAccount20.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentification4Choice);
  RegisterChildNode('Tp', TXMLCashAccountType2);
  RegisterChildNode('Ownr', TXMLPartyIdentification32);
  RegisterChildNode('Svcr', TXMLBranchAndFinancialInstitutionIdentification4);
  inherited;
end;

function TXMLCashAccount20.Get_Id: IXMLAccountIdentification4Choice;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice;
end;

function TXMLCashAccount20.Get_Tp: IXMLCashAccountType2;
begin
  Result := ChildNodes['Tp'] as IXMLCashAccountType2;
end;

function TXMLCashAccount20.Get_Ccy: UnicodeString;
begin
  Result := ChildNodes['Ccy'].Text;
end;

procedure TXMLCashAccount20.Set_Ccy(Value: UnicodeString);
begin
  ChildNodes['Ccy'].NodeValue := Value;
end;

function TXMLCashAccount20.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLCashAccount20.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLCashAccount20.Get_Ownr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Ownr'] as IXMLPartyIdentification32;
end;

function TXMLCashAccount20.Get_Svcr: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['Svcr'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

//{ TXMLAccountIdentification4Choice }
//
//procedure TXMLAccountIdentification4Choice.AfterConstruction;
//begin
//  RegisterChildNode('Othr', TXMLGenericAccountIdentification1);
//  inherited;
//end;
//
//function TXMLAccountIdentification4Choice.Get_IBAN: UnicodeString;
//begin
//  Result := ChildNodes['IBAN'].Text;
//end;
//
//procedure TXMLAccountIdentification4Choice.Set_IBAN(Value: UnicodeString);
//begin
//  ChildNodes['IBAN'].NodeValue := Value;
//end;
//
//function TXMLAccountIdentification4Choice.Get_Othr: IXMLGenericAccountIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericAccountIdentification1;
//end;
//
//{ TXMLGenericAccountIdentification1 }
//
//procedure TXMLGenericAccountIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLAccountSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericAccountIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericAccountIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericAccountIdentification1.Get_SchmeNm: IXMLAccountSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLAccountSchemeName1Choice;
//end;
//
//function TXMLGenericAccountIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericAccountIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLAccountSchemeName1Choice }
//
//function TXMLAccountSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLAccountSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLAccountSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLAccountSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
{ TXMLCashAccountType2 }

function TXMLCashAccountType2.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLCashAccountType2.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLCashAccountType2.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLCashAccountType2.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

//{ TXMLBranchAndFinancialInstitutionIdentification4 }
//
//procedure TXMLBranchAndFinancialInstitutionIdentification4.AfterConstruction;
//begin
//  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentification7);
//  RegisterChildNode('BrnchId', TXMLBranchData2);
//  inherited;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentification4.Get_FinInstnId: IXMLFinancialInstitutionIdentification7;
//begin
//  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentification7;
//end;
//
//function TXMLBranchAndFinancialInstitutionIdentification4.Get_BrnchId: IXMLBranchData2;
//begin
//  Result := ChildNodes['BrnchId'] as IXMLBranchData2;
//end;
//
//{ TXMLFinancialInstitutionIdentification7 }
//
//procedure TXMLFinancialInstitutionIdentification7.AfterConstruction;
//begin
//  RegisterChildNode('ClrSysMmbId', TXMLClearingSystemMemberIdentification2);
//  RegisterChildNode('PstlAdr', TXMLPostalAddress6);
//  RegisterChildNode('Othr', TXMLGenericFinancialIdentification1);
//  inherited;
//end;
//
//function TXMLFinancialInstitutionIdentification7.Get_BIC: UnicodeString;
//begin
//  Result := ChildNodes['BIC'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentification7.Set_BIC(Value: UnicodeString);
//begin
//  ChildNodes['BIC'].NodeValue := Value;
//end;
//
//function TXMLFinancialInstitutionIdentification7.Get_ClrSysMmbId: IXMLClearingSystemMemberIdentification2;
//begin
//  Result := ChildNodes['ClrSysMmbId'] as IXMLClearingSystemMemberIdentification2;
//end;
//
//function TXMLFinancialInstitutionIdentification7.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLFinancialInstitutionIdentification7.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLFinancialInstitutionIdentification7.Get_PstlAdr: IXMLPostalAddress6;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6;
//end;
//
//function TXMLFinancialInstitutionIdentification7.Get_Othr: IXMLGenericFinancialIdentification1;
//begin
//  Result := ChildNodes['Othr'] as IXMLGenericFinancialIdentification1;
//end;
//
//{ TXMLClearingSystemMemberIdentification2 }
//
//procedure TXMLClearingSystemMemberIdentification2.AfterConstruction;
//begin
//  RegisterChildNode('ClrSysId', TXMLClearingSystemIdentification2Choice);
//  inherited;
//end;
//
//function TXMLClearingSystemMemberIdentification2.Get_ClrSysId: IXMLClearingSystemIdentification2Choice;
//begin
//  Result := ChildNodes['ClrSysId'] as IXMLClearingSystemIdentification2Choice;
//end;
//
//function TXMLClearingSystemMemberIdentification2.Get_MmbId: UnicodeString;
//begin
//  Result := ChildNodes['MmbId'].Text;
//end;
//
//procedure TXMLClearingSystemMemberIdentification2.Set_MmbId(Value: UnicodeString);
//begin
//  ChildNodes['MmbId'].NodeValue := Value;
//end;
//
//{ TXMLClearingSystemIdentification2Choice }
//
//function TXMLClearingSystemIdentification2Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLClearingSystemIdentification2Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLClearingSystemIdentification2Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLClearingSystemIdentification2Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLGenericFinancialIdentification1 }
//
//procedure TXMLGenericFinancialIdentification1.AfterConstruction;
//begin
//  RegisterChildNode('SchmeNm', TXMLFinancialIdentificationSchemeName1Choice);
//  inherited;
//end;
//
//function TXMLGenericFinancialIdentification1.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLGenericFinancialIdentification1.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLGenericFinancialIdentification1.Get_SchmeNm: IXMLFinancialIdentificationSchemeName1Choice;
//begin
//  Result := ChildNodes['SchmeNm'] as IXMLFinancialIdentificationSchemeName1Choice;
//end;
//
//function TXMLGenericFinancialIdentification1.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLGenericFinancialIdentification1.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLFinancialIdentificationSchemeName1Choice }
//
//function TXMLFinancialIdentificationSchemeName1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLFinancialIdentificationSchemeName1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLFinancialIdentificationSchemeName1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLFinancialIdentificationSchemeName1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLBranchData2 }
//
//procedure TXMLBranchData2.AfterConstruction;
//begin
//  RegisterChildNode('PstlAdr', TXMLPostalAddress6);
//  inherited;
//end;
//
//function TXMLBranchData2.Get_Id: UnicodeString;
//begin
//  Result := ChildNodes['Id'].Text;
//end;
//
//procedure TXMLBranchData2.Set_Id(Value: UnicodeString);
//begin
//  ChildNodes['Id'].NodeValue := Value;
//end;
//
//function TXMLBranchData2.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLBranchData2.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
//function TXMLBranchData2.Get_PstlAdr: IXMLPostalAddress6;
//begin
//  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6;
//end;
//
//{ TXMLCashAccount16 }
//
//procedure TXMLCashAccount16.AfterConstruction;
//begin
//  RegisterChildNode('Id', TXMLAccountIdentification4Choice);
//  RegisterChildNode('Tp', TXMLCashAccountType2);
//  inherited;
//end;
//
//function TXMLCashAccount16.Get_Id: IXMLAccountIdentification4Choice;
//begin
//  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice;
//end;
//
//function TXMLCashAccount16.Get_Tp: IXMLCashAccountType2;
//begin
//  Result := ChildNodes['Tp'] as IXMLCashAccountType2;
//end;
//
//function TXMLCashAccount16.Get_Ccy: UnicodeString;
//begin
//  Result := ChildNodes['Ccy'].Text;
//end;
//
//procedure TXMLCashAccount16.Set_Ccy(Value: UnicodeString);
//begin
//  ChildNodes['Ccy'].NodeValue := Value;
//end;
//
//function TXMLCashAccount16.Get_Nm: UnicodeString;
//begin
//  Result := ChildNodes['Nm'].Text;
//end;
//
//procedure TXMLCashAccount16.Set_Nm(Value: UnicodeString);
//begin
//  ChildNodes['Nm'].NodeValue := Value;
//end;
//
{ TXMLAccountInterest2 }

procedure TXMLAccountInterest2.AfterConstruction;
begin
  RegisterChildNode('Tp', TXMLInterestType1Choice);
  RegisterChildNode('Rate', TXMLRate3);
  RegisterChildNode('FrToDt', TXMLDateTimePeriodDetails);
  FRate := CreateCollection(TXMLRate3List, IXMLRate3, 'Rate') as IXMLRate3List;
  inherited;
end;

function TXMLAccountInterest2.Get_Tp: IXMLInterestType1Choice;
begin
  Result := ChildNodes['Tp'] as IXMLInterestType1Choice;
end;

function TXMLAccountInterest2.Get_Rate: IXMLRate3List;
begin
  Result := FRate;
end;

function TXMLAccountInterest2.Get_FrToDt: IXMLDateTimePeriodDetails;
begin
  Result := ChildNodes['FrToDt'] as IXMLDateTimePeriodDetails;
end;

function TXMLAccountInterest2.Get_Rsn: UnicodeString;
begin
  Result := ChildNodes['Rsn'].Text;
end;

procedure TXMLAccountInterest2.Set_Rsn(Value: UnicodeString);
begin
  ChildNodes['Rsn'].NodeValue := Value;
end;

{ TXMLAccountInterest2List }

function TXMLAccountInterest2List.Add: IXMLAccountInterest2;
begin
  Result := AddItem(-1) as IXMLAccountInterest2;
end;

function TXMLAccountInterest2List.Insert(const Index: Integer): IXMLAccountInterest2;
begin
  Result := AddItem(Index) as IXMLAccountInterest2;
end;

function TXMLAccountInterest2List.Get_Item(Index: Integer): IXMLAccountInterest2;
begin
  Result := List[Index] as IXMLAccountInterest2;
end;

{ TXMLInterestType1Choice }

function TXMLInterestType1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLInterestType1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLInterestType1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLInterestType1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLRate3 }

procedure TXMLRate3.AfterConstruction;
begin
  RegisterChildNode('Tp', TXMLRateType4Choice);
  RegisterChildNode('VldtyRg', TXMLCurrencyAndAmountRange2);
  inherited;
end;

function TXMLRate3.Get_Tp: IXMLRateType4Choice;
begin
  Result := ChildNodes['Tp'] as IXMLRateType4Choice;
end;

function TXMLRate3.Get_VldtyRg: IXMLCurrencyAndAmountRange2;
begin
  Result := ChildNodes['VldtyRg'] as IXMLCurrencyAndAmountRange2;
end;

{ TXMLRate3List }

function TXMLRate3List.Add: IXMLRate3;
begin
  Result := AddItem(-1) as IXMLRate3;
end;

function TXMLRate3List.Insert(const Index: Integer): IXMLRate3;
begin
  Result := AddItem(Index) as IXMLRate3;
end;

function TXMLRate3List.Get_Item(Index: Integer): IXMLRate3;
begin
  Result := List[Index] as IXMLRate3;
end;

{ TXMLRateType4Choice }

function TXMLRateType4Choice.Get_Pctg: UnicodeString;
begin
  Result := ChildNodes['Pctg'].Text;
end;

procedure TXMLRateType4Choice.Set_Pctg(Value: UnicodeString);
begin
  ChildNodes['Pctg'].NodeValue := Value;
end;

function TXMLRateType4Choice.Get_Othr: UnicodeString;
begin
  Result := ChildNodes['Othr'].Text;
end;

procedure TXMLRateType4Choice.Set_Othr(Value: UnicodeString);
begin
  ChildNodes['Othr'].NodeValue := Value;
end;

{ TXMLCurrencyAndAmountRange2 }

procedure TXMLCurrencyAndAmountRange2.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLImpliedCurrencyAmountRangeChoice);
  inherited;
end;

function TXMLCurrencyAndAmountRange2.Get_Amt: IXMLImpliedCurrencyAmountRangeChoice;
begin
  Result := ChildNodes['Amt'] as IXMLImpliedCurrencyAmountRangeChoice;
end;

function TXMLCurrencyAndAmountRange2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLCurrencyAndAmountRange2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

function TXMLCurrencyAndAmountRange2.Get_Ccy: UnicodeString;
begin
  Result := ChildNodes['Ccy'].Text;
end;

procedure TXMLCurrencyAndAmountRange2.Set_Ccy(Value: UnicodeString);
begin
  ChildNodes['Ccy'].NodeValue := Value;
end;

{ TXMLImpliedCurrencyAmountRangeChoice }

procedure TXMLImpliedCurrencyAmountRangeChoice.AfterConstruction;
begin
  RegisterChildNode('FrAmt', TXMLAmountRangeBoundary1);
  RegisterChildNode('ToAmt', TXMLAmountRangeBoundary1);
  RegisterChildNode('FrToAmt', TXMLFromToAmountRange);
  inherited;
end;

function TXMLImpliedCurrencyAmountRangeChoice.Get_FrAmt: IXMLAmountRangeBoundary1;
begin
  Result := ChildNodes['FrAmt'] as IXMLAmountRangeBoundary1;
end;

function TXMLImpliedCurrencyAmountRangeChoice.Get_ToAmt: IXMLAmountRangeBoundary1;
begin
  Result := ChildNodes['ToAmt'] as IXMLAmountRangeBoundary1;
end;

function TXMLImpliedCurrencyAmountRangeChoice.Get_FrToAmt: IXMLFromToAmountRange;
begin
  Result := ChildNodes['FrToAmt'] as IXMLFromToAmountRange;
end;

function TXMLImpliedCurrencyAmountRangeChoice.Get_EQAmt: UnicodeString;
begin
  Result := ChildNodes['EQAmt'].Text;
end;

procedure TXMLImpliedCurrencyAmountRangeChoice.Set_EQAmt(Value: UnicodeString);
begin
  ChildNodes['EQAmt'].NodeValue := Value;
end;

function TXMLImpliedCurrencyAmountRangeChoice.Get_NEQAmt: UnicodeString;
begin
  Result := ChildNodes['NEQAmt'].Text;
end;

procedure TXMLImpliedCurrencyAmountRangeChoice.Set_NEQAmt(Value: UnicodeString);
begin
  ChildNodes['NEQAmt'].NodeValue := Value;
end;

{ TXMLAmountRangeBoundary1 }

function TXMLAmountRangeBoundary1.Get_BdryAmt: UnicodeString;
begin
  Result := ChildNodes['BdryAmt'].Text;
end;

procedure TXMLAmountRangeBoundary1.Set_BdryAmt(Value: UnicodeString);
begin
  ChildNodes['BdryAmt'].NodeValue := Value;
end;

function TXMLAmountRangeBoundary1.Get_Incl: Boolean;
begin
  Result := ChildNodes['Incl'].NodeValue;
end;

procedure TXMLAmountRangeBoundary1.Set_Incl(Value: Boolean);
begin
  ChildNodes['Incl'].NodeValue := Value;
end;

{ TXMLFromToAmountRange }

procedure TXMLFromToAmountRange.AfterConstruction;
begin
  RegisterChildNode('FrAmt', TXMLAmountRangeBoundary1);
  RegisterChildNode('ToAmt', TXMLAmountRangeBoundary1);
  inherited;
end;

function TXMLFromToAmountRange.Get_FrAmt: IXMLAmountRangeBoundary1;
begin
  Result := ChildNodes['FrAmt'] as IXMLAmountRangeBoundary1;
end;

function TXMLFromToAmountRange.Get_ToAmt: IXMLAmountRangeBoundary1;
begin
  Result := ChildNodes['ToAmt'] as IXMLAmountRangeBoundary1;
end;

{ TXMLCashBalance3 }

procedure TXMLCashBalance3.AfterConstruction;
begin
  RegisterChildNode('Tp', TXMLBalanceType12);
  RegisterChildNode('CdtLine', TXMLCreditLine2);
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Dt', TXMLDateAndDateTimeChoice);
  RegisterChildNode('Avlbty', TXMLCashBalanceAvailability2);
  FAvlbty := CreateCollection(TXMLCashBalanceAvailability2List, IXMLCashBalanceAvailability2, 'Avlbty') as IXMLCashBalanceAvailability2List;
  inherited;
end;

function TXMLCashBalance3.Get_Tp: IXMLBalanceType12;
begin
  Result := ChildNodes['Tp'] as IXMLBalanceType12;
end;

function TXMLCashBalance3.Get_CdtLine: IXMLCreditLine2;
begin
  Result := ChildNodes['CdtLine'] as IXMLCreditLine2;
end;

function TXMLCashBalance3.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLCashBalance3.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLCashBalance3.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

function TXMLCashBalance3.Get_Dt: IXMLDateAndDateTimeChoice;
begin
  Result := ChildNodes['Dt'] as IXMLDateAndDateTimeChoice;
end;

function TXMLCashBalance3.Get_Avlbty: IXMLCashBalanceAvailability2List;
begin
  Result := FAvlbty;
end;

{ TXMLCashBalance3List }

function TXMLCashBalance3List.Add: IXMLCashBalance3;
begin
  Result := AddItem(-1) as IXMLCashBalance3;
end;

function TXMLCashBalance3List.Insert(const Index: Integer): IXMLCashBalance3;
begin
  Result := AddItem(Index) as IXMLCashBalance3;
end;

function TXMLCashBalance3List.Get_Item(Index: Integer): IXMLCashBalance3;
begin
  Result := List[Index] as IXMLCashBalance3;
end;

{ TXMLBalanceType12 }

procedure TXMLBalanceType12.AfterConstruction;
begin
  RegisterChildNode('CdOrPrtry', TXMLBalanceType5Choice);
  RegisterChildNode('SubTp', TXMLBalanceSubType1Choice);
  inherited;
end;

function TXMLBalanceType12.Get_CdOrPrtry: IXMLBalanceType5Choice;
begin
  Result := ChildNodes['CdOrPrtry'] as IXMLBalanceType5Choice;
end;

function TXMLBalanceType12.Get_SubTp: IXMLBalanceSubType1Choice;
begin
  Result := ChildNodes['SubTp'] as IXMLBalanceSubType1Choice;
end;

{ TXMLBalanceType5Choice }

function TXMLBalanceType5Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLBalanceType5Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLBalanceType5Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLBalanceType5Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLBalanceSubType1Choice }

function TXMLBalanceSubType1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLBalanceSubType1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLBalanceSubType1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLBalanceSubType1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLCreditLine2 }

procedure TXMLCreditLine2.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  inherited;
end;

function TXMLCreditLine2.Get_Incl: Boolean;
begin
  Result := ChildNodes['Incl'].NodeValue;
end;

procedure TXMLCreditLine2.Set_Incl(Value: Boolean);
begin
  ChildNodes['Incl'].NodeValue := Value;
end;

function TXMLCreditLine2.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

//{ TXMLActiveOrHistoricCurrencyAndAmount }
//
//function TXMLActiveOrHistoricCurrencyAndAmount.Get_Ccy: UnicodeString;
//begin
//  Result := AttributeNodes['Ccy'].Text;
//end;
//
//procedure TXMLActiveOrHistoricCurrencyAndAmount.Set_Ccy(Value: UnicodeString);
//begin
//  SetAttribute('Ccy', Value);
//end;
//
{ TXMLDateAndDateTimeChoice }

function TXMLDateAndDateTimeChoice.Get_Dt: UnicodeString;
begin
  Result := ChildNodes['Dt'].Text;
end;

procedure TXMLDateAndDateTimeChoice.Set_Dt(Value: UnicodeString);
begin
  ChildNodes['Dt'].NodeValue := Value;
end;

function TXMLDateAndDateTimeChoice.Get_DtTm: UnicodeString;
begin
  Result := ChildNodes['DtTm'].Text;
end;

procedure TXMLDateAndDateTimeChoice.Set_DtTm(Value: UnicodeString);
begin
  ChildNodes['DtTm'].NodeValue := Value;
end;

{ TXMLCashBalanceAvailability2 }

procedure TXMLCashBalanceAvailability2.AfterConstruction;
begin
  RegisterChildNode('Dt', TXMLCashBalanceAvailabilityDate1);
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  inherited;
end;

function TXMLCashBalanceAvailability2.Get_Dt: IXMLCashBalanceAvailabilityDate1;
begin
  Result := ChildNodes['Dt'] as IXMLCashBalanceAvailabilityDate1;
end;

function TXMLCashBalanceAvailability2.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLCashBalanceAvailability2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLCashBalanceAvailability2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

{ TXMLCashBalanceAvailability2List }

function TXMLCashBalanceAvailability2List.Add: IXMLCashBalanceAvailability2;
begin
  Result := AddItem(-1) as IXMLCashBalanceAvailability2;
end;

function TXMLCashBalanceAvailability2List.Insert(const Index: Integer): IXMLCashBalanceAvailability2;
begin
  Result := AddItem(Index) as IXMLCashBalanceAvailability2;
end;

function TXMLCashBalanceAvailability2List.Get_Item(Index: Integer): IXMLCashBalanceAvailability2;
begin
  Result := List[Index] as IXMLCashBalanceAvailability2;
end;

{ TXMLCashBalanceAvailabilityDate1 }

function TXMLCashBalanceAvailabilityDate1.Get_NbOfDays: UnicodeString;
begin
  Result := ChildNodes['NbOfDays'].Text;
end;

procedure TXMLCashBalanceAvailabilityDate1.Set_NbOfDays(Value: UnicodeString);
begin
  ChildNodes['NbOfDays'].NodeValue := Value;
end;

function TXMLCashBalanceAvailabilityDate1.Get_ActlDt: UnicodeString;
begin
  Result := ChildNodes['ActlDt'].Text;
end;

procedure TXMLCashBalanceAvailabilityDate1.Set_ActlDt(Value: UnicodeString);
begin
  ChildNodes['ActlDt'].NodeValue := Value;
end;

{ TXMLTotalTransactions2 }

procedure TXMLTotalTransactions2.AfterConstruction;
begin
  RegisterChildNode('TtlNtries', TXMLNumberAndSumOfTransactions2);
  RegisterChildNode('TtlCdtNtries', TXMLNumberAndSumOfTransactions1);
  RegisterChildNode('TtlDbtNtries', TXMLNumberAndSumOfTransactions1);
  RegisterChildNode('TtlNtriesPerBkTxCd', TXMLTotalsPerBankTransactionCode2);
  FTtlNtriesPerBkTxCd := CreateCollection(TXMLTotalsPerBankTransactionCode2List, IXMLTotalsPerBankTransactionCode2, 'TtlNtriesPerBkTxCd') as IXMLTotalsPerBankTransactionCode2List;
  inherited;
end;

function TXMLTotalTransactions2.Get_TtlNtries: IXMLNumberAndSumOfTransactions2;
begin
  Result := ChildNodes['TtlNtries'] as IXMLNumberAndSumOfTransactions2;
end;

function TXMLTotalTransactions2.Get_TtlCdtNtries: IXMLNumberAndSumOfTransactions1;
begin
  Result := ChildNodes['TtlCdtNtries'] as IXMLNumberAndSumOfTransactions1;
end;

function TXMLTotalTransactions2.Get_TtlDbtNtries: IXMLNumberAndSumOfTransactions1;
begin
  Result := ChildNodes['TtlDbtNtries'] as IXMLNumberAndSumOfTransactions1;
end;

function TXMLTotalTransactions2.Get_TtlNtriesPerBkTxCd: IXMLTotalsPerBankTransactionCode2List;
begin
  Result := FTtlNtriesPerBkTxCd;
end;

{ TXMLNumberAndSumOfTransactions2 }

function TXMLNumberAndSumOfTransactions2.Get_NbOfNtries: UnicodeString;
begin
  Result := ChildNodes['NbOfNtries'].Text;
end;

procedure TXMLNumberAndSumOfTransactions2.Set_NbOfNtries(Value: UnicodeString);
begin
  ChildNodes['NbOfNtries'].NodeValue := Value;
end;

function TXMLNumberAndSumOfTransactions2.Get_Sum: UnicodeString;
begin
  Result := ChildNodes['Sum'].Text;
end;

procedure TXMLNumberAndSumOfTransactions2.Set_Sum(Value: UnicodeString);
begin
  ChildNodes['Sum'].NodeValue := Value;
end;

function TXMLNumberAndSumOfTransactions2.Get_TtlNetNtryAmt: UnicodeString;
begin
  Result := ChildNodes['TtlNetNtryAmt'].Text;
end;

procedure TXMLNumberAndSumOfTransactions2.Set_TtlNetNtryAmt(Value: UnicodeString);
begin
  ChildNodes['TtlNetNtryAmt'].NodeValue := Value;
end;

function TXMLNumberAndSumOfTransactions2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLNumberAndSumOfTransactions2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

{ TXMLNumberAndSumOfTransactions1 }

function TXMLNumberAndSumOfTransactions1.Get_NbOfNtries: UnicodeString;
begin
  Result := ChildNodes['NbOfNtries'].Text;
end;

procedure TXMLNumberAndSumOfTransactions1.Set_NbOfNtries(Value: UnicodeString);
begin
  ChildNodes['NbOfNtries'].NodeValue := Value;
end;

function TXMLNumberAndSumOfTransactions1.Get_Sum: UnicodeString;
begin
  Result := ChildNodes['Sum'].Text;
end;

procedure TXMLNumberAndSumOfTransactions1.Set_Sum(Value: UnicodeString);
begin
  ChildNodes['Sum'].NodeValue := Value;
end;

{ TXMLTotalsPerBankTransactionCode2 }

procedure TXMLTotalsPerBankTransactionCode2.AfterConstruction;
begin
  RegisterChildNode('BkTxCd', TXMLBankTransactionCodeStructure4);
  RegisterChildNode('Avlbty', TXMLCashBalanceAvailability2);
  FAvlbty := CreateCollection(TXMLCashBalanceAvailability2List, IXMLCashBalanceAvailability2, 'Avlbty') as IXMLCashBalanceAvailability2List;
  inherited;
end;

function TXMLTotalsPerBankTransactionCode2.Get_NbOfNtries: UnicodeString;
begin
  Result := ChildNodes['NbOfNtries'].Text;
end;

procedure TXMLTotalsPerBankTransactionCode2.Set_NbOfNtries(Value: UnicodeString);
begin
  ChildNodes['NbOfNtries'].NodeValue := Value;
end;

function TXMLTotalsPerBankTransactionCode2.Get_Sum: UnicodeString;
begin
  Result := ChildNodes['Sum'].Text;
end;

procedure TXMLTotalsPerBankTransactionCode2.Set_Sum(Value: UnicodeString);
begin
  ChildNodes['Sum'].NodeValue := Value;
end;

function TXMLTotalsPerBankTransactionCode2.Get_TtlNetNtryAmt: UnicodeString;
begin
  Result := ChildNodes['TtlNetNtryAmt'].Text;
end;

procedure TXMLTotalsPerBankTransactionCode2.Set_TtlNetNtryAmt(Value: UnicodeString);
begin
  ChildNodes['TtlNetNtryAmt'].NodeValue := Value;
end;

function TXMLTotalsPerBankTransactionCode2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLTotalsPerBankTransactionCode2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

function TXMLTotalsPerBankTransactionCode2.Get_FcstInd: Boolean;
begin
  Result := ChildNodes['FcstInd'].NodeValue;
end;

procedure TXMLTotalsPerBankTransactionCode2.Set_FcstInd(Value: Boolean);
begin
  ChildNodes['FcstInd'].NodeValue := Value;
end;

function TXMLTotalsPerBankTransactionCode2.Get_BkTxCd: IXMLBankTransactionCodeStructure4;
begin
  Result := ChildNodes['BkTxCd'] as IXMLBankTransactionCodeStructure4;
end;

function TXMLTotalsPerBankTransactionCode2.Get_Avlbty: IXMLCashBalanceAvailability2List;
begin
  Result := FAvlbty;
end;

{ TXMLTotalsPerBankTransactionCode2List }

function TXMLTotalsPerBankTransactionCode2List.Add: IXMLTotalsPerBankTransactionCode2;
begin
  Result := AddItem(-1) as IXMLTotalsPerBankTransactionCode2;
end;

function TXMLTotalsPerBankTransactionCode2List.Insert(const Index: Integer): IXMLTotalsPerBankTransactionCode2;
begin
  Result := AddItem(Index) as IXMLTotalsPerBankTransactionCode2;
end;

function TXMLTotalsPerBankTransactionCode2List.Get_Item(Index: Integer): IXMLTotalsPerBankTransactionCode2;
begin
  Result := List[Index] as IXMLTotalsPerBankTransactionCode2;
end;

{ TXMLBankTransactionCodeStructure4 }

procedure TXMLBankTransactionCodeStructure4.AfterConstruction;
begin
  RegisterChildNode('Domn', TXMLBankTransactionCodeStructure5);
  RegisterChildNode('Prtry', TXMLProprietaryBankTransactionCodeStructure1);
  inherited;
end;

function TXMLBankTransactionCodeStructure4.Get_Domn: IXMLBankTransactionCodeStructure5;
begin
  Result := ChildNodes['Domn'] as IXMLBankTransactionCodeStructure5;
end;

function TXMLBankTransactionCodeStructure4.Get_Prtry: IXMLProprietaryBankTransactionCodeStructure1;
begin
  Result := ChildNodes['Prtry'] as IXMLProprietaryBankTransactionCodeStructure1;
end;

{ TXMLBankTransactionCodeStructure5 }

procedure TXMLBankTransactionCodeStructure5.AfterConstruction;
begin
  RegisterChildNode('Fmly', TXMLBankTransactionCodeStructure6);
  inherited;
end;

function TXMLBankTransactionCodeStructure5.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLBankTransactionCodeStructure5.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLBankTransactionCodeStructure5.Get_Fmly: IXMLBankTransactionCodeStructure6;
begin
  Result := ChildNodes['Fmly'] as IXMLBankTransactionCodeStructure6;
end;

{ TXMLBankTransactionCodeStructure6 }

function TXMLBankTransactionCodeStructure6.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLBankTransactionCodeStructure6.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLBankTransactionCodeStructure6.Get_SubFmlyCd: UnicodeString;
begin
  Result := ChildNodes['SubFmlyCd'].Text;
end;

procedure TXMLBankTransactionCodeStructure6.Set_SubFmlyCd(Value: UnicodeString);
begin
  ChildNodes['SubFmlyCd'].NodeValue := Value;
end;

{ TXMLProprietaryBankTransactionCodeStructure1 }

function TXMLProprietaryBankTransactionCodeStructure1.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLProprietaryBankTransactionCodeStructure1.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLProprietaryBankTransactionCodeStructure1.Get_Issr: UnicodeString;
begin
  Result := ChildNodes['Issr'].Text;
end;

procedure TXMLProprietaryBankTransactionCodeStructure1.Set_Issr(Value: UnicodeString);
begin
  ChildNodes['Issr'].NodeValue := Value;
end;

{ TXMLReportEntry2 }

procedure TXMLReportEntry2.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('BookgDt', TXMLDateAndDateTimeChoice);
  RegisterChildNode('ValDt', TXMLDateAndDateTimeChoice);
  RegisterChildNode('Avlbty', TXMLCashBalanceAvailability2);
  RegisterChildNode('BkTxCd', TXMLBankTransactionCodeStructure4);
  RegisterChildNode('AddtlInfInd', TXMLMessageIdentification2);
  RegisterChildNode('AmtDtls', TXMLAmountAndCurrencyExchange3);
  RegisterChildNode('Chrgs', TXMLChargesInformation6);
  RegisterChildNode('TechInptChanl', TXMLTechnicalInputChannel1Choice);
  RegisterChildNode('Intrst', TXMLTransactionInterest2);
  RegisterChildNode('NtryDtls', TXMLEntryDetails1);
  FAvlbty := CreateCollection(TXMLCashBalanceAvailability2List, IXMLCashBalanceAvailability2, 'Avlbty') as IXMLCashBalanceAvailability2List;
  FChrgs := CreateCollection(TXMLChargesInformation6List, IXMLChargesInformation6, 'Chrgs') as IXMLChargesInformation6List;
  FIntrst := CreateCollection(TXMLTransactionInterest2List, IXMLTransactionInterest2, 'Intrst') as IXMLTransactionInterest2List;
  FNtryDtls := CreateCollection(TXMLEntryDetails1List, IXMLEntryDetails1, 'NtryDtls') as IXMLEntryDetails1List;
  inherited;
end;

function TXMLReportEntry2.Get_NtryRef: UnicodeString;
begin
  Result := ChildNodes['NtryRef'].Text;
end;

procedure TXMLReportEntry2.Set_NtryRef(Value: UnicodeString);
begin
  ChildNodes['NtryRef'].NodeValue := Value;
end;

function TXMLReportEntry2.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLReportEntry2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLReportEntry2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

function TXMLReportEntry2.Get_RvslInd: Boolean;
begin
  Result := ChildNodes['RvslInd'].NodeValue;
end;

procedure TXMLReportEntry2.Set_RvslInd(Value: Boolean);
begin
  ChildNodes['RvslInd'].NodeValue := Value;
end;

function TXMLReportEntry2.Get_Sts: UnicodeString;
begin
  Result := ChildNodes['Sts'].Text;
end;

procedure TXMLReportEntry2.Set_Sts(Value: UnicodeString);
begin
  ChildNodes['Sts'].NodeValue := Value;
end;

function TXMLReportEntry2.Get_BookgDt: IXMLDateAndDateTimeChoice;
begin
  Result := ChildNodes['BookgDt'] as IXMLDateAndDateTimeChoice;
end;

function TXMLReportEntry2.Get_ValDt: IXMLDateAndDateTimeChoice;
begin
  Result := ChildNodes['ValDt'] as IXMLDateAndDateTimeChoice;
end;

function TXMLReportEntry2.Get_AcctSvcrRef: UnicodeString;
begin
  Result := ChildNodes['AcctSvcrRef'].Text;
end;

procedure TXMLReportEntry2.Set_AcctSvcrRef(Value: UnicodeString);
begin
  ChildNodes['AcctSvcrRef'].NodeValue := Value;
end;

function TXMLReportEntry2.Get_Avlbty: IXMLCashBalanceAvailability2List;
begin
  Result := FAvlbty;
end;

function TXMLReportEntry2.Get_BkTxCd: IXMLBankTransactionCodeStructure4;
begin
  Result := ChildNodes['BkTxCd'] as IXMLBankTransactionCodeStructure4;
end;

function TXMLReportEntry2.Get_ComssnWvrInd: Boolean;
begin
  Result := ChildNodes['ComssnWvrInd'].NodeValue;
end;

procedure TXMLReportEntry2.Set_ComssnWvrInd(Value: Boolean);
begin
  ChildNodes['ComssnWvrInd'].NodeValue := Value;
end;

function TXMLReportEntry2.Get_AddtlInfInd: IXMLMessageIdentification2;
begin
  Result := ChildNodes['AddtlInfInd'] as IXMLMessageIdentification2;
end;

function TXMLReportEntry2.Get_AmtDtls: IXMLAmountAndCurrencyExchange3;
begin
  Result := ChildNodes['AmtDtls'] as IXMLAmountAndCurrencyExchange3;
end;

function TXMLReportEntry2.Get_Chrgs: IXMLChargesInformation6List;
begin
  Result := FChrgs;
end;

function TXMLReportEntry2.Get_TechInptChanl: IXMLTechnicalInputChannel1Choice;
begin
  Result := ChildNodes['TechInptChanl'] as IXMLTechnicalInputChannel1Choice;
end;

function TXMLReportEntry2.Get_Intrst: IXMLTransactionInterest2List;
begin
  Result := FIntrst;
end;

function TXMLReportEntry2.Get_NtryDtls: IXMLEntryDetails1List;
begin
  Result := FNtryDtls;
end;

function TXMLReportEntry2.Get_AddtlNtryInf: UnicodeString;
begin
  Result := ChildNodes['AddtlNtryInf'].Text;
end;

procedure TXMLReportEntry2.Set_AddtlNtryInf(Value: UnicodeString);
begin
  ChildNodes['AddtlNtryInf'].NodeValue := Value;
end;

{ TXMLReportEntry2List }

function TXMLReportEntry2List.Add: IXMLReportEntry2;
begin
  Result := AddItem(-1) as IXMLReportEntry2;
end;

function TXMLReportEntry2List.Insert(const Index: Integer): IXMLReportEntry2;
begin
  Result := AddItem(Index) as IXMLReportEntry2;
end;

function TXMLReportEntry2List.Get_Item(Index: Integer): IXMLReportEntry2;
begin
  Result := List[Index] as IXMLReportEntry2;
end;

{ TXMLMessageIdentification2 }

function TXMLMessageIdentification2.Get_MsgNmId: UnicodeString;
begin
  Result := ChildNodes['MsgNmId'].Text;
end;

procedure TXMLMessageIdentification2.Set_MsgNmId(Value: UnicodeString);
begin
  ChildNodes['MsgNmId'].NodeValue := Value;
end;

function TXMLMessageIdentification2.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLMessageIdentification2.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

{ TXMLAmountAndCurrencyExchange3 }

procedure TXMLAmountAndCurrencyExchange3.AfterConstruction;
begin
  RegisterChildNode('InstdAmt', TXMLAmountAndCurrencyExchangeDetails3);
  RegisterChildNode('TxAmt', TXMLAmountAndCurrencyExchangeDetails3);
  RegisterChildNode('CntrValAmt', TXMLAmountAndCurrencyExchangeDetails3);
  RegisterChildNode('AnncdPstngAmt', TXMLAmountAndCurrencyExchangeDetails3);
  RegisterChildNode('PrtryAmt', TXMLAmountAndCurrencyExchangeDetails4);
  FPrtryAmt := CreateCollection(TXMLAmountAndCurrencyExchangeDetails4List, IXMLAmountAndCurrencyExchangeDetails4, 'PrtryAmt') as IXMLAmountAndCurrencyExchangeDetails4List;
  inherited;
end;

function TXMLAmountAndCurrencyExchange3.Get_InstdAmt: IXMLAmountAndCurrencyExchangeDetails3;
begin
  Result := ChildNodes['InstdAmt'] as IXMLAmountAndCurrencyExchangeDetails3;
end;

function TXMLAmountAndCurrencyExchange3.Get_TxAmt: IXMLAmountAndCurrencyExchangeDetails3;
begin
  Result := ChildNodes['TxAmt'] as IXMLAmountAndCurrencyExchangeDetails3;
end;

function TXMLAmountAndCurrencyExchange3.Get_CntrValAmt: IXMLAmountAndCurrencyExchangeDetails3;
begin
  Result := ChildNodes['CntrValAmt'] as IXMLAmountAndCurrencyExchangeDetails3;
end;

function TXMLAmountAndCurrencyExchange3.Get_AnncdPstngAmt: IXMLAmountAndCurrencyExchangeDetails3;
begin
  Result := ChildNodes['AnncdPstngAmt'] as IXMLAmountAndCurrencyExchangeDetails3;
end;

function TXMLAmountAndCurrencyExchange3.Get_PrtryAmt: IXMLAmountAndCurrencyExchangeDetails4List;
begin
  Result := FPrtryAmt;
end;

{ TXMLAmountAndCurrencyExchangeDetails3 }

procedure TXMLAmountAndCurrencyExchangeDetails3.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('CcyXchg', TXMLCurrencyExchange5);
  inherited;
end;

function TXMLAmountAndCurrencyExchangeDetails3.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLAmountAndCurrencyExchangeDetails3.Get_CcyXchg: IXMLCurrencyExchange5;
begin
  Result := ChildNodes['CcyXchg'] as IXMLCurrencyExchange5;
end;

{ TXMLCurrencyExchange5 }

function TXMLCurrencyExchange5.Get_SrcCcy: UnicodeString;
begin
  Result := ChildNodes['SrcCcy'].Text;
end;

procedure TXMLCurrencyExchange5.Set_SrcCcy(Value: UnicodeString);
begin
  ChildNodes['SrcCcy'].NodeValue := Value;
end;

function TXMLCurrencyExchange5.Get_TrgtCcy: UnicodeString;
begin
  Result := ChildNodes['TrgtCcy'].Text;
end;

procedure TXMLCurrencyExchange5.Set_TrgtCcy(Value: UnicodeString);
begin
  ChildNodes['TrgtCcy'].NodeValue := Value;
end;

function TXMLCurrencyExchange5.Get_UnitCcy: UnicodeString;
begin
  Result := ChildNodes['UnitCcy'].Text;
end;

procedure TXMLCurrencyExchange5.Set_UnitCcy(Value: UnicodeString);
begin
  ChildNodes['UnitCcy'].NodeValue := Value;
end;

function TXMLCurrencyExchange5.Get_XchgRate: UnicodeString;
begin
  Result := ChildNodes['XchgRate'].Text;
end;

procedure TXMLCurrencyExchange5.Set_XchgRate(Value: UnicodeString);
begin
  ChildNodes['XchgRate'].NodeValue := Value;
end;

function TXMLCurrencyExchange5.Get_CtrctId: UnicodeString;
begin
  Result := ChildNodes['CtrctId'].Text;
end;

procedure TXMLCurrencyExchange5.Set_CtrctId(Value: UnicodeString);
begin
  ChildNodes['CtrctId'].NodeValue := Value;
end;

function TXMLCurrencyExchange5.Get_QtnDt: UnicodeString;
begin
  Result := ChildNodes['QtnDt'].Text;
end;

procedure TXMLCurrencyExchange5.Set_QtnDt(Value: UnicodeString);
begin
  ChildNodes['QtnDt'].NodeValue := Value;
end;

{ TXMLAmountAndCurrencyExchangeDetails4 }

procedure TXMLAmountAndCurrencyExchangeDetails4.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('CcyXchg', TXMLCurrencyExchange5);
  inherited;
end;

function TXMLAmountAndCurrencyExchangeDetails4.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLAmountAndCurrencyExchangeDetails4.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLAmountAndCurrencyExchangeDetails4.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLAmountAndCurrencyExchangeDetails4.Get_CcyXchg: IXMLCurrencyExchange5;
begin
  Result := ChildNodes['CcyXchg'] as IXMLCurrencyExchange5;
end;

{ TXMLAmountAndCurrencyExchangeDetails4List }

function TXMLAmountAndCurrencyExchangeDetails4List.Add: IXMLAmountAndCurrencyExchangeDetails4;
begin
  Result := AddItem(-1) as IXMLAmountAndCurrencyExchangeDetails4;
end;

function TXMLAmountAndCurrencyExchangeDetails4List.Insert(const Index: Integer): IXMLAmountAndCurrencyExchangeDetails4;
begin
  Result := AddItem(Index) as IXMLAmountAndCurrencyExchangeDetails4;
end;

function TXMLAmountAndCurrencyExchangeDetails4List.Get_Item(Index: Integer): IXMLAmountAndCurrencyExchangeDetails4;
begin
  Result := List[Index] as IXMLAmountAndCurrencyExchangeDetails4;
end;

{ TXMLChargesInformation6 }

procedure TXMLChargesInformation6.AfterConstruction;
begin
  RegisterChildNode('TtlChrgsAndTaxAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Tp', TXMLChargeType2Choice);
  RegisterChildNode('Pty', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('Tax', TXMLTaxCharges2);
  inherited;
end;

function TXMLChargesInformation6.Get_TtlChrgsAndTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['TtlChrgsAndTaxAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLChargesInformation6.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLChargesInformation6.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLChargesInformation6.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

function TXMLChargesInformation6.Get_Tp: IXMLChargeType2Choice;
begin
  Result := ChildNodes['Tp'] as IXMLChargeType2Choice;
end;

function TXMLChargesInformation6.Get_Rate: UnicodeString;
begin
  Result := ChildNodes['Rate'].Text;
end;

procedure TXMLChargesInformation6.Set_Rate(Value: UnicodeString);
begin
  ChildNodes['Rate'].NodeValue := Value;
end;

function TXMLChargesInformation6.Get_Br: UnicodeString;
begin
  Result := ChildNodes['Br'].Text;
end;

procedure TXMLChargesInformation6.Set_Br(Value: UnicodeString);
begin
  ChildNodes['Br'].NodeValue := Value;
end;

function TXMLChargesInformation6.Get_Pty: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['Pty'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLChargesInformation6.Get_Tax: IXMLTaxCharges2;
begin
  Result := ChildNodes['Tax'] as IXMLTaxCharges2;
end;

{ TXMLChargesInformation6List }

function TXMLChargesInformation6List.Add: IXMLChargesInformation6;
begin
  Result := AddItem(-1) as IXMLChargesInformation6;
end;

function TXMLChargesInformation6List.Insert(const Index: Integer): IXMLChargesInformation6;
begin
  Result := AddItem(Index) as IXMLChargesInformation6;
end;

function TXMLChargesInformation6List.Get_Item(Index: Integer): IXMLChargesInformation6;
begin
  Result := List[Index] as IXMLChargesInformation6;
end;

{ TXMLChargeType2Choice }

procedure TXMLChargeType2Choice.AfterConstruction;
begin
  RegisterChildNode('Prtry', TXMLGenericIdentification3);
  inherited;
end;

function TXMLChargeType2Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLChargeType2Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLChargeType2Choice.Get_Prtry: IXMLGenericIdentification3;
begin
  Result := ChildNodes['Prtry'] as IXMLGenericIdentification3;
end;

{ TXMLGenericIdentification3 }

function TXMLGenericIdentification3.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericIdentification3.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLGenericIdentification3.Get_Issr: UnicodeString;
begin
  Result := ChildNodes['Issr'].Text;
end;

procedure TXMLGenericIdentification3.Set_Issr(Value: UnicodeString);
begin
  ChildNodes['Issr'].NodeValue := Value;
end;

{ TXMLTaxCharges2 }

procedure TXMLTaxCharges2.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  inherited;
end;

function TXMLTaxCharges2.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLTaxCharges2.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLTaxCharges2.Get_Rate: UnicodeString;
begin
  Result := ChildNodes['Rate'].Text;
end;

procedure TXMLTaxCharges2.Set_Rate(Value: UnicodeString);
begin
  ChildNodes['Rate'].NodeValue := Value;
end;

function TXMLTaxCharges2.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

{ TXMLTechnicalInputChannel1Choice }

function TXMLTechnicalInputChannel1Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLTechnicalInputChannel1Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLTechnicalInputChannel1Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLTechnicalInputChannel1Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLTransactionInterest2 }

procedure TXMLTransactionInterest2.AfterConstruction;
begin
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Tp', TXMLInterestType1Choice);
  RegisterChildNode('Rate', TXMLRate3);
  RegisterChildNode('FrToDt', TXMLDateTimePeriodDetails);
  FRate := CreateCollection(TXMLRate3List, IXMLRate3, 'Rate') as IXMLRate3List;
  inherited;
end;

function TXMLTransactionInterest2.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLTransactionInterest2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLTransactionInterest2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

function TXMLTransactionInterest2.Get_Tp: IXMLInterestType1Choice;
begin
  Result := ChildNodes['Tp'] as IXMLInterestType1Choice;
end;

function TXMLTransactionInterest2.Get_Rate: IXMLRate3List;
begin
  Result := FRate;
end;

function TXMLTransactionInterest2.Get_FrToDt: IXMLDateTimePeriodDetails;
begin
  Result := ChildNodes['FrToDt'] as IXMLDateTimePeriodDetails;
end;

function TXMLTransactionInterest2.Get_Rsn: UnicodeString;
begin
  Result := ChildNodes['Rsn'].Text;
end;

procedure TXMLTransactionInterest2.Set_Rsn(Value: UnicodeString);
begin
  ChildNodes['Rsn'].NodeValue := Value;
end;

{ TXMLTransactionInterest2List }

function TXMLTransactionInterest2List.Add: IXMLTransactionInterest2;
begin
  Result := AddItem(-1) as IXMLTransactionInterest2;
end;

function TXMLTransactionInterest2List.Insert(const Index: Integer): IXMLTransactionInterest2;
begin
  Result := AddItem(Index) as IXMLTransactionInterest2;
end;

function TXMLTransactionInterest2List.Get_Item(Index: Integer): IXMLTransactionInterest2;
begin
  Result := List[Index] as IXMLTransactionInterest2;
end;

{ TXMLEntryDetails1 }

procedure TXMLEntryDetails1.AfterConstruction;
begin
  RegisterChildNode('Btch', TXMLBatchInformation2);
  RegisterChildNode('TxDtls', TXMLEntryTransaction2);
  FTxDtls := CreateCollection(TXMLEntryTransaction2List, IXMLEntryTransaction2, 'TxDtls') as IXMLEntryTransaction2List;
  inherited;
end;

function TXMLEntryDetails1.Get_Btch: IXMLBatchInformation2;
begin
  Result := ChildNodes['Btch'] as IXMLBatchInformation2;
end;

function TXMLEntryDetails1.Get_TxDtls: IXMLEntryTransaction2List;
begin
  Result := FTxDtls;
end;

{ TXMLEntryDetails1List }

function TXMLEntryDetails1List.Add: IXMLEntryDetails1;
begin
  Result := AddItem(-1) as IXMLEntryDetails1;
end;

function TXMLEntryDetails1List.Insert(const Index: Integer): IXMLEntryDetails1;
begin
  Result := AddItem(Index) as IXMLEntryDetails1;
end;

function TXMLEntryDetails1List.Get_Item(Index: Integer): IXMLEntryDetails1;
begin
  Result := List[Index] as IXMLEntryDetails1;
end;

{ TXMLBatchInformation2 }

procedure TXMLBatchInformation2.AfterConstruction;
begin
  RegisterChildNode('TtlAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  inherited;
end;

function TXMLBatchInformation2.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLBatchInformation2.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLBatchInformation2.Get_PmtInfId: UnicodeString;
begin
  Result := ChildNodes['PmtInfId'].Text;
end;

procedure TXMLBatchInformation2.Set_PmtInfId(Value: UnicodeString);
begin
  ChildNodes['PmtInfId'].NodeValue := Value;
end;

function TXMLBatchInformation2.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLBatchInformation2.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLBatchInformation2.Get_TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['TtlAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLBatchInformation2.Get_CdtDbtInd: UnicodeString;
begin
  Result := ChildNodes['CdtDbtInd'].Text;
end;

procedure TXMLBatchInformation2.Set_CdtDbtInd(Value: UnicodeString);
begin
  ChildNodes['CdtDbtInd'].NodeValue := Value;
end;

{ TXMLEntryTransaction2 }

procedure TXMLEntryTransaction2.AfterConstruction;
begin
  RegisterChildNode('Refs', TXMLTransactionReferences2);
  RegisterChildNode('AmtDtls', TXMLAmountAndCurrencyExchange3);
  RegisterChildNode('Avlbty', TXMLCashBalanceAvailability2);
  RegisterChildNode('BkTxCd', TXMLBankTransactionCodeStructure4);
  RegisterChildNode('Chrgs', TXMLChargesInformation6);
  RegisterChildNode('Intrst', TXMLTransactionInterest2);
  RegisterChildNode('RltdPties', TXMLTransactionParty2);
  RegisterChildNode('RltdAgts', TXMLTransactionAgents2);
  RegisterChildNode('Purp', TXMLPurpose2Choice);
  RegisterChildNode('RltdRmtInf', TXMLRemittanceLocation2);
  RegisterChildNode('RmtInf', TXMLRemittanceInformation5);
  RegisterChildNode('RltdDts', TXMLTransactionDates2);
  RegisterChildNode('RltdPric', TXMLTransactionPrice2Choice);
  RegisterChildNode('RltdQties', TXMLTransactionQuantities1Choice);
  RegisterChildNode('FinInstrmId', TXMLSecurityIdentification4Choice);
  RegisterChildNode('Tax', TXMLTaxInformation3);
  RegisterChildNode('RtrInf', TXMLReturnReasonInformation10);
  RegisterChildNode('CorpActn', TXMLCorporateAction1);
  RegisterChildNode('SfkpgAcct', TXMLCashAccount16);
  FAvlbty := CreateCollection(TXMLCashBalanceAvailability2List, IXMLCashBalanceAvailability2, 'Avlbty') as IXMLCashBalanceAvailability2List;
  FChrgs := CreateCollection(TXMLChargesInformation6List, IXMLChargesInformation6, 'Chrgs') as IXMLChargesInformation6List;
  FIntrst := CreateCollection(TXMLTransactionInterest2List, IXMLTransactionInterest2, 'Intrst') as IXMLTransactionInterest2List;
  FRltdRmtInf := CreateCollection(TXMLRemittanceLocation2List, IXMLRemittanceLocation2, 'RltdRmtInf') as IXMLRemittanceLocation2List;
  FRltdQties := CreateCollection(TXMLTransactionQuantities1ChoiceList, IXMLTransactionQuantities1Choice, 'RltdQties') as IXMLTransactionQuantities1ChoiceList;
  inherited;
end;

function TXMLEntryTransaction2.Get_Refs: IXMLTransactionReferences2;
begin
  Result := ChildNodes['Refs'] as IXMLTransactionReferences2;
end;

function TXMLEntryTransaction2.Get_AmtDtls: IXMLAmountAndCurrencyExchange3;
begin
  Result := ChildNodes['AmtDtls'] as IXMLAmountAndCurrencyExchange3;
end;

function TXMLEntryTransaction2.Get_Avlbty: IXMLCashBalanceAvailability2List;
begin
  Result := FAvlbty;
end;

function TXMLEntryTransaction2.Get_BkTxCd: IXMLBankTransactionCodeStructure4;
begin
  Result := ChildNodes['BkTxCd'] as IXMLBankTransactionCodeStructure4;
end;

function TXMLEntryTransaction2.Get_Chrgs: IXMLChargesInformation6List;
begin
  Result := FChrgs;
end;

function TXMLEntryTransaction2.Get_Intrst: IXMLTransactionInterest2List;
begin
  Result := FIntrst;
end;

function TXMLEntryTransaction2.Get_RltdPties: IXMLTransactionParty2;
begin
  Result := ChildNodes['RltdPties'] as IXMLTransactionParty2;
end;

function TXMLEntryTransaction2.Get_RltdAgts: IXMLTransactionAgents2;
begin
  Result := ChildNodes['RltdAgts'] as IXMLTransactionAgents2;
end;

function TXMLEntryTransaction2.Get_Purp: IXMLPurpose2Choice;
begin
  Result := ChildNodes['Purp'] as IXMLPurpose2Choice;
end;

function TXMLEntryTransaction2.Get_RltdRmtInf: IXMLRemittanceLocation2List;
begin
  Result := FRltdRmtInf;
end;

function TXMLEntryTransaction2.Get_RmtInf: IXMLRemittanceInformation5;
begin
  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformation5;
end;

function TXMLEntryTransaction2.Get_RltdDts: IXMLTransactionDates2;
begin
  Result := ChildNodes['RltdDts'] as IXMLTransactionDates2;
end;

function TXMLEntryTransaction2.Get_RltdPric: IXMLTransactionPrice2Choice;
begin
  Result := ChildNodes['RltdPric'] as IXMLTransactionPrice2Choice;
end;

function TXMLEntryTransaction2.Get_RltdQties: IXMLTransactionQuantities1ChoiceList;
begin
  Result := FRltdQties;
end;

function TXMLEntryTransaction2.Get_FinInstrmId: IXMLSecurityIdentification4Choice;
begin
  Result := ChildNodes['FinInstrmId'] as IXMLSecurityIdentification4Choice;
end;

function TXMLEntryTransaction2.Get_Tax: IXMLTaxInformation3;
begin
  Result := ChildNodes['Tax'] as IXMLTaxInformation3;
end;

function TXMLEntryTransaction2.Get_RtrInf: IXMLReturnReasonInformation10;
begin
  Result := ChildNodes['RtrInf'] as IXMLReturnReasonInformation10;
end;

function TXMLEntryTransaction2.Get_CorpActn: IXMLCorporateAction1;
begin
  Result := ChildNodes['CorpActn'] as IXMLCorporateAction1;
end;

function TXMLEntryTransaction2.Get_SfkpgAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['SfkpgAcct'] as IXMLCashAccount16;
end;

function TXMLEntryTransaction2.Get_AddtlTxInf: UnicodeString;
begin
  Result := ChildNodes['AddtlTxInf'].Text;
end;

procedure TXMLEntryTransaction2.Set_AddtlTxInf(Value: UnicodeString);
begin
  ChildNodes['AddtlTxInf'].NodeValue := Value;
end;

{ TXMLEntryTransaction2List }

function TXMLEntryTransaction2List.Add: IXMLEntryTransaction2;
begin
  Result := AddItem(-1) as IXMLEntryTransaction2;
end;

function TXMLEntryTransaction2List.Insert(const Index: Integer): IXMLEntryTransaction2;
begin
  Result := AddItem(Index) as IXMLEntryTransaction2;
end;

function TXMLEntryTransaction2List.Get_Item(Index: Integer): IXMLEntryTransaction2;
begin
  Result := List[Index] as IXMLEntryTransaction2;
end;

{ TXMLTransactionReferences2 }

procedure TXMLTransactionReferences2.AfterConstruction;
begin
  RegisterChildNode('Prtry', TXMLProprietaryReference1);
  inherited;
end;

function TXMLTransactionReferences2.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLTransactionReferences2.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_AcctSvcrRef: UnicodeString;
begin
  Result := ChildNodes['AcctSvcrRef'].Text;
end;

procedure TXMLTransactionReferences2.Set_AcctSvcrRef(Value: UnicodeString);
begin
  ChildNodes['AcctSvcrRef'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_PmtInfId: UnicodeString;
begin
  Result := ChildNodes['PmtInfId'].Text;
end;

procedure TXMLTransactionReferences2.Set_PmtInfId(Value: UnicodeString);
begin
  ChildNodes['PmtInfId'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_InstrId: UnicodeString;
begin
  Result := ChildNodes['InstrId'].Text;
end;

procedure TXMLTransactionReferences2.Set_InstrId(Value: UnicodeString);
begin
  ChildNodes['InstrId'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_EndToEndId: UnicodeString;
begin
  Result := ChildNodes['EndToEndId'].Text;
end;

procedure TXMLTransactionReferences2.Set_EndToEndId(Value: UnicodeString);
begin
  ChildNodes['EndToEndId'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_TxId: UnicodeString;
begin
  Result := ChildNodes['TxId'].Text;
end;

procedure TXMLTransactionReferences2.Set_TxId(Value: UnicodeString);
begin
  ChildNodes['TxId'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_MndtId: UnicodeString;
begin
  Result := ChildNodes['MndtId'].Text;
end;

procedure TXMLTransactionReferences2.Set_MndtId(Value: UnicodeString);
begin
  ChildNodes['MndtId'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_ChqNb: UnicodeString;
begin
  Result := ChildNodes['ChqNb'].Text;
end;

procedure TXMLTransactionReferences2.Set_ChqNb(Value: UnicodeString);
begin
  ChildNodes['ChqNb'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_ClrSysRef: UnicodeString;
begin
  Result := ChildNodes['ClrSysRef'].Text;
end;

procedure TXMLTransactionReferences2.Set_ClrSysRef(Value: UnicodeString);
begin
  ChildNodes['ClrSysRef'].NodeValue := Value;
end;

function TXMLTransactionReferences2.Get_Prtry: IXMLProprietaryReference1;
begin
  Result := ChildNodes['Prtry'] as IXMLProprietaryReference1;
end;

{ TXMLProprietaryReference1 }

function TXMLProprietaryReference1.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLProprietaryReference1.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLProprietaryReference1.Get_Ref: UnicodeString;
begin
  Result := ChildNodes['Ref'].Text;
end;

procedure TXMLProprietaryReference1.Set_Ref(Value: UnicodeString);
begin
  ChildNodes['Ref'].NodeValue := Value;
end;

{ TXMLTransactionParty2 }

procedure TXMLTransactionParty2.AfterConstruction;
begin
  RegisterChildNode('InitgPty', TXMLPartyIdentification32);
  RegisterChildNode('Dbtr', TXMLPartyIdentification32);
  RegisterChildNode('DbtrAcct', TXMLCashAccount16);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentification32);
  RegisterChildNode('Cdtr', TXMLPartyIdentification32);
  RegisterChildNode('CdtrAcct', TXMLCashAccount16);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentification32);
  RegisterChildNode('TradgPty', TXMLPartyIdentification32);
  RegisterChildNode('Prtry', TXMLProprietaryParty2);
  FPrtry := CreateCollection(TXMLProprietaryParty2List, IXMLProprietaryParty2, 'Prtry') as IXMLProprietaryParty2List;
  inherited;
end;

function TXMLTransactionParty2.Get_InitgPty: IXMLPartyIdentification32;
begin
  Result := ChildNodes['InitgPty'] as IXMLPartyIdentification32;
end;

function TXMLTransactionParty2.Get_Dbtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Dbtr'] as IXMLPartyIdentification32;
end;

function TXMLTransactionParty2.Get_DbtrAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['DbtrAcct'] as IXMLCashAccount16;
end;

function TXMLTransactionParty2.Get_UltmtDbtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentification32;
end;

function TXMLTransactionParty2.Get_Cdtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Cdtr'] as IXMLPartyIdentification32;
end;

function TXMLTransactionParty2.Get_CdtrAcct: IXMLCashAccount16;
begin
  Result := ChildNodes['CdtrAcct'] as IXMLCashAccount16;
end;

function TXMLTransactionParty2.Get_UltmtCdtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentification32;
end;

function TXMLTransactionParty2.Get_TradgPty: IXMLPartyIdentification32;
begin
  Result := ChildNodes['TradgPty'] as IXMLPartyIdentification32;
end;

function TXMLTransactionParty2.Get_Prtry: IXMLProprietaryParty2List;
begin
  Result := FPrtry;
end;

{ TXMLProprietaryParty2 }

procedure TXMLProprietaryParty2.AfterConstruction;
begin
  RegisterChildNode('Pty', TXMLPartyIdentification32);
  inherited;
end;

function TXMLProprietaryParty2.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLProprietaryParty2.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLProprietaryParty2.Get_Pty: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Pty'] as IXMLPartyIdentification32;
end;

{ TXMLProprietaryParty2List }

function TXMLProprietaryParty2List.Add: IXMLProprietaryParty2;
begin
  Result := AddItem(-1) as IXMLProprietaryParty2;
end;

function TXMLProprietaryParty2List.Insert(const Index: Integer): IXMLProprietaryParty2;
begin
  Result := AddItem(Index) as IXMLProprietaryParty2;
end;

function TXMLProprietaryParty2List.Get_Item(Index: Integer): IXMLProprietaryParty2;
begin
  Result := List[Index] as IXMLProprietaryParty2;
end;

{ TXMLTransactionAgents2 }

procedure TXMLTransactionAgents2.AfterConstruction;
begin
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('IntrmyAgt1', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('IntrmyAgt2', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('IntrmyAgt3', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('RcvgAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('DlvrgAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('IssgAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('SttlmPlc', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('Prtry', TXMLProprietaryAgent2);
  FPrtry := CreateCollection(TXMLProprietaryAgent2List, IXMLProprietaryAgent2, 'Prtry') as IXMLProprietaryAgent2List;
  inherited;
end;

function TXMLTransactionAgents2.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_IntrmyAgt1: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['IntrmyAgt1'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_IntrmyAgt2: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['IntrmyAgt2'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_IntrmyAgt3: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['IntrmyAgt3'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_RcvgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['RcvgAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_DlvrgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['DlvrgAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_IssgAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['IssgAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_SttlmPlc: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['SttlmPlc'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLTransactionAgents2.Get_Prtry: IXMLProprietaryAgent2List;
begin
  Result := FPrtry;
end;

{ TXMLProprietaryAgent2 }

procedure TXMLProprietaryAgent2.AfterConstruction;
begin
  RegisterChildNode('Agt', TXMLBranchAndFinancialInstitutionIdentification4);
  inherited;
end;

function TXMLProprietaryAgent2.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLProprietaryAgent2.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLProprietaryAgent2.Get_Agt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['Agt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

{ TXMLProprietaryAgent2List }

function TXMLProprietaryAgent2List.Add: IXMLProprietaryAgent2;
begin
  Result := AddItem(-1) as IXMLProprietaryAgent2;
end;

function TXMLProprietaryAgent2List.Insert(const Index: Integer): IXMLProprietaryAgent2;
begin
  Result := AddItem(Index) as IXMLProprietaryAgent2;
end;

function TXMLProprietaryAgent2List.Get_Item(Index: Integer): IXMLProprietaryAgent2;
begin
  Result := List[Index] as IXMLProprietaryAgent2;
end;

{ TXMLPurpose2Choice }

function TXMLPurpose2Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLPurpose2Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLPurpose2Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLPurpose2Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLRemittanceLocation2 }

procedure TXMLRemittanceLocation2.AfterConstruction;
begin
  RegisterChildNode('RmtLctnPstlAdr', TXMLNameAndAddress10);
  inherited;
end;

function TXMLRemittanceLocation2.Get_RmtId: UnicodeString;
begin
  Result := ChildNodes['RmtId'].Text;
end;

procedure TXMLRemittanceLocation2.Set_RmtId(Value: UnicodeString);
begin
  ChildNodes['RmtId'].NodeValue := Value;
end;

function TXMLRemittanceLocation2.Get_RmtLctnMtd: UnicodeString;
begin
  Result := ChildNodes['RmtLctnMtd'].Text;
end;

procedure TXMLRemittanceLocation2.Set_RmtLctnMtd(Value: UnicodeString);
begin
  ChildNodes['RmtLctnMtd'].NodeValue := Value;
end;

function TXMLRemittanceLocation2.Get_RmtLctnElctrncAdr: UnicodeString;
begin
  Result := ChildNodes['RmtLctnElctrncAdr'].Text;
end;

procedure TXMLRemittanceLocation2.Set_RmtLctnElctrncAdr(Value: UnicodeString);
begin
  ChildNodes['RmtLctnElctrncAdr'].NodeValue := Value;
end;

function TXMLRemittanceLocation2.Get_RmtLctnPstlAdr: IXMLNameAndAddress10;
begin
  Result := ChildNodes['RmtLctnPstlAdr'] as IXMLNameAndAddress10;
end;

{ TXMLRemittanceLocation2List }

function TXMLRemittanceLocation2List.Add: IXMLRemittanceLocation2;
begin
  Result := AddItem(-1) as IXMLRemittanceLocation2;
end;

function TXMLRemittanceLocation2List.Insert(const Index: Integer): IXMLRemittanceLocation2;
begin
  Result := AddItem(Index) as IXMLRemittanceLocation2;
end;

function TXMLRemittanceLocation2List.Get_Item(Index: Integer): IXMLRemittanceLocation2;
begin
  Result := List[Index] as IXMLRemittanceLocation2;
end;

{ TXMLNameAndAddress10 }

procedure TXMLNameAndAddress10.AfterConstruction;
begin
  RegisterChildNode('Adr', TXMLPostalAddress6);
  inherited;
end;

function TXMLNameAndAddress10.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLNameAndAddress10.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLNameAndAddress10.Get_Adr: IXMLPostalAddress6;
begin
  Result := ChildNodes['Adr'] as IXMLPostalAddress6;
end;

//{ TXMLRemittanceInformation5 }
//
//procedure TXMLRemittanceInformation5.AfterConstruction;
//begin
//  RegisterChildNode('Strd', TXMLStructuredRemittanceInformation7);
//  FUstrd := CreateCollection(TXMLMax140TextList, IXMLNode, 'Ustrd') as IXMLMax140TextList;
//  FStrd := CreateCollection(TXMLStructuredRemittanceInformation7List, IXMLStructuredRemittanceInformation7, 'Strd') as IXMLStructuredRemittanceInformation7List;
//  inherited;
//end;
//
//function TXMLRemittanceInformation5.Get_Ustrd: IXMLMax140TextList;
//begin
//  Result := FUstrd;
//end;
//
//function TXMLRemittanceInformation5.Get_Strd: IXMLStructuredRemittanceInformation7List;
//begin
//  Result := FStrd;
//end;
//
//{ TXMLStructuredRemittanceInformation7 }
//
//procedure TXMLStructuredRemittanceInformation7.AfterConstruction;
//begin
//  RegisterChildNode('RfrdDocInf', TXMLReferredDocumentInformation3);
//  RegisterChildNode('RfrdDocAmt', TXMLRemittanceAmount1);
//  RegisterChildNode('CdtrRefInf', TXMLCreditorReferenceInformation2);
//  RegisterChildNode('Invcr', TXMLPartyIdentification32);
//  RegisterChildNode('Invcee', TXMLPartyIdentification32);
//  FRfrdDocInf := CreateCollection(TXMLReferredDocumentInformation3List, IXMLReferredDocumentInformation3, 'RfrdDocInf') as IXMLReferredDocumentInformation3List;
//  FAddtlRmtInf := CreateCollection(TXMLMax140TextList, IXMLNode, 'AddtlRmtInf') as IXMLMax140TextList;
//  inherited;
//end;
//
//function TXMLStructuredRemittanceInformation7.Get_RfrdDocInf: IXMLReferredDocumentInformation3List;
//begin
//  Result := FRfrdDocInf;
//end;
//
//function TXMLStructuredRemittanceInformation7.Get_RfrdDocAmt: IXMLRemittanceAmount1;
//begin
//  Result := ChildNodes['RfrdDocAmt'] as IXMLRemittanceAmount1;
//end;
//
//function TXMLStructuredRemittanceInformation7.Get_CdtrRefInf: IXMLCreditorReferenceInformation2;
//begin
//  Result := ChildNodes['CdtrRefInf'] as IXMLCreditorReferenceInformation2;
//end;
//
//function TXMLStructuredRemittanceInformation7.Get_Invcr: IXMLPartyIdentification32;
//begin
//  Result := ChildNodes['Invcr'] as IXMLPartyIdentification32;
//end;
//
//function TXMLStructuredRemittanceInformation7.Get_Invcee: IXMLPartyIdentification32;
//begin
//  Result := ChildNodes['Invcee'] as IXMLPartyIdentification32;
//end;
//
//function TXMLStructuredRemittanceInformation7.Get_AddtlRmtInf: IXMLMax140TextList;
//begin
//  Result := FAddtlRmtInf;
//end;
//
//{ TXMLStructuredRemittanceInformation7List }
//
//function TXMLStructuredRemittanceInformation7List.Add: IXMLStructuredRemittanceInformation7;
//begin
//  Result := AddItem(-1) as IXMLStructuredRemittanceInformation7;
//end;
//
//function TXMLStructuredRemittanceInformation7List.Insert(const Index: Integer): IXMLStructuredRemittanceInformation7;
//begin
//  Result := AddItem(Index) as IXMLStructuredRemittanceInformation7;
//end;
//
//function TXMLStructuredRemittanceInformation7List.Get_Item(Index: Integer): IXMLStructuredRemittanceInformation7;
//begin
//  Result := List[Index] as IXMLStructuredRemittanceInformation7;
//end;
//
//{ TXMLReferredDocumentInformation3 }
//
//procedure TXMLReferredDocumentInformation3.AfterConstruction;
//begin
//  RegisterChildNode('Tp', TXMLReferredDocumentType2);
//  inherited;
//end;
//
//function TXMLReferredDocumentInformation3.Get_Tp: IXMLReferredDocumentType2;
//begin
//  Result := ChildNodes['Tp'] as IXMLReferredDocumentType2;
//end;
//
//function TXMLReferredDocumentInformation3.Get_Nb: UnicodeString;
//begin
//  Result := ChildNodes['Nb'].Text;
//end;
//
//procedure TXMLReferredDocumentInformation3.Set_Nb(Value: UnicodeString);
//begin
//  ChildNodes['Nb'].NodeValue := Value;
//end;
//
//function TXMLReferredDocumentInformation3.Get_RltdDt: UnicodeString;
//begin
//  Result := ChildNodes['RltdDt'].Text;
//end;
//
//procedure TXMLReferredDocumentInformation3.Set_RltdDt(Value: UnicodeString);
//begin
//  ChildNodes['RltdDt'].NodeValue := Value;
//end;
//
//{ TXMLReferredDocumentInformation3List }
//
//function TXMLReferredDocumentInformation3List.Add: IXMLReferredDocumentInformation3;
//begin
//  Result := AddItem(-1) as IXMLReferredDocumentInformation3;
//end;
//
//function TXMLReferredDocumentInformation3List.Insert(const Index: Integer): IXMLReferredDocumentInformation3;
//begin
//  Result := AddItem(Index) as IXMLReferredDocumentInformation3;
//end;
//
//function TXMLReferredDocumentInformation3List.Get_Item(Index: Integer): IXMLReferredDocumentInformation3;
//begin
//  Result := List[Index] as IXMLReferredDocumentInformation3;
//end;
//
//{ TXMLReferredDocumentType2 }
//
//procedure TXMLReferredDocumentType2.AfterConstruction;
//begin
//  RegisterChildNode('CdOrPrtry', TXMLReferredDocumentType1Choice);
//  inherited;
//end;
//
//function TXMLReferredDocumentType2.Get_CdOrPrtry: IXMLReferredDocumentType1Choice;
//begin
//  Result := ChildNodes['CdOrPrtry'] as IXMLReferredDocumentType1Choice;
//end;
//
//function TXMLReferredDocumentType2.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLReferredDocumentType2.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLReferredDocumentType1Choice }
//
//function TXMLReferredDocumentType1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLReferredDocumentType1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLReferredDocumentType1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLReferredDocumentType1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
//{ TXMLRemittanceAmount1 }
//
//procedure TXMLRemittanceAmount1.AfterConstruction;
//begin
//  RegisterChildNode('DuePyblAmt', TXMLActiveOrHistoricCurrencyAndAmount);
//  RegisterChildNode('DscntApldAmt', TXMLActiveOrHistoricCurrencyAndAmount);
//  RegisterChildNode('CdtNoteAmt', TXMLActiveOrHistoricCurrencyAndAmount);
//  RegisterChildNode('TaxAmt', TXMLActiveOrHistoricCurrencyAndAmount);
//  RegisterChildNode('AdjstmntAmtAndRsn', TXMLDocumentAdjustment1);
//  RegisterChildNode('RmtdAmt', TXMLActiveOrHistoricCurrencyAndAmount);
//  FAdjstmntAmtAndRsn := CreateCollection(TXMLDocumentAdjustment1List, IXMLDocumentAdjustment1, 'AdjstmntAmtAndRsn') as IXMLDocumentAdjustment1List;
//  inherited;
//end;
//
//function TXMLRemittanceAmount1.Get_DuePyblAmt: IXMLActiveOrHistoricCurrencyAndAmount;
//begin
//  Result := ChildNodes['DuePyblAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
//end;
//
//function TXMLRemittanceAmount1.Get_DscntApldAmt: IXMLActiveOrHistoricCurrencyAndAmount;
//begin
//  Result := ChildNodes['DscntApldAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
//end;
//
//function TXMLRemittanceAmount1.Get_CdtNoteAmt: IXMLActiveOrHistoricCurrencyAndAmount;
//begin
//  Result := ChildNodes['CdtNoteAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
//end;
//
//function TXMLRemittanceAmount1.Get_TaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
//begin
//  Result := ChildNodes['TaxAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
//end;
//
//function TXMLRemittanceAmount1.Get_AdjstmntAmtAndRsn: IXMLDocumentAdjustment1List;
//begin
//  Result := FAdjstmntAmtAndRsn;
//end;
//
//function TXMLRemittanceAmount1.Get_RmtdAmt: IXMLActiveOrHistoricCurrencyAndAmount;
//begin
//  Result := ChildNodes['RmtdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
//end;
//
//{ TXMLDocumentAdjustment1 }
//
//procedure TXMLDocumentAdjustment1.AfterConstruction;
//begin
//  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
//  inherited;
//end;
//
//function TXMLDocumentAdjustment1.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
//begin
//  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
//end;
//
//function TXMLDocumentAdjustment1.Get_CdtDbtInd: UnicodeString;
//begin
//  Result := ChildNodes['CdtDbtInd'].Text;
//end;
//
//procedure TXMLDocumentAdjustment1.Set_CdtDbtInd(Value: UnicodeString);
//begin
//  ChildNodes['CdtDbtInd'].NodeValue := Value;
//end;
//
//function TXMLDocumentAdjustment1.Get_Rsn: UnicodeString;
//begin
//  Result := ChildNodes['Rsn'].Text;
//end;
//
//procedure TXMLDocumentAdjustment1.Set_Rsn(Value: UnicodeString);
//begin
//  ChildNodes['Rsn'].NodeValue := Value;
//end;
//
//function TXMLDocumentAdjustment1.Get_AddtlInf: UnicodeString;
//begin
//  Result := ChildNodes['AddtlInf'].Text;
//end;
//
//procedure TXMLDocumentAdjustment1.Set_AddtlInf(Value: UnicodeString);
//begin
//  ChildNodes['AddtlInf'].NodeValue := Value;
//end;
//
//{ TXMLDocumentAdjustment1List }
//
//function TXMLDocumentAdjustment1List.Add: IXMLDocumentAdjustment1;
//begin
//  Result := AddItem(-1) as IXMLDocumentAdjustment1;
//end;
//
//function TXMLDocumentAdjustment1List.Insert(const Index: Integer): IXMLDocumentAdjustment1;
//begin
//  Result := AddItem(Index) as IXMLDocumentAdjustment1;
//end;
//
//function TXMLDocumentAdjustment1List.Get_Item(Index: Integer): IXMLDocumentAdjustment1;
//begin
//  Result := List[Index] as IXMLDocumentAdjustment1;
//end;
//
//{ TXMLCreditorReferenceInformation2 }
//
//procedure TXMLCreditorReferenceInformation2.AfterConstruction;
//begin
//  RegisterChildNode('Tp', TXMLCreditorReferenceType2);
//  inherited;
//end;
//
//function TXMLCreditorReferenceInformation2.Get_Tp: IXMLCreditorReferenceType2;
//begin
//  Result := ChildNodes['Tp'] as IXMLCreditorReferenceType2;
//end;
//
//function TXMLCreditorReferenceInformation2.Get_Ref: UnicodeString;
//begin
//  Result := ChildNodes['Ref'].Text;
//end;
//
//procedure TXMLCreditorReferenceInformation2.Set_Ref(Value: UnicodeString);
//begin
//  ChildNodes['Ref'].NodeValue := Value;
//end;
//
//{ TXMLCreditorReferenceType2 }
//
//procedure TXMLCreditorReferenceType2.AfterConstruction;
//begin
//  RegisterChildNode('CdOrPrtry', TXMLCreditorReferenceType1Choice);
//  inherited;
//end;
//
//function TXMLCreditorReferenceType2.Get_CdOrPrtry: IXMLCreditorReferenceType1Choice;
//begin
//  Result := ChildNodes['CdOrPrtry'] as IXMLCreditorReferenceType1Choice;
//end;
//
//function TXMLCreditorReferenceType2.Get_Issr: UnicodeString;
//begin
//  Result := ChildNodes['Issr'].Text;
//end;
//
//procedure TXMLCreditorReferenceType2.Set_Issr(Value: UnicodeString);
//begin
//  ChildNodes['Issr'].NodeValue := Value;
//end;
//
//{ TXMLCreditorReferenceType1Choice }
//
//function TXMLCreditorReferenceType1Choice.Get_Cd: UnicodeString;
//begin
//  Result := ChildNodes['Cd'].Text;
//end;
//
//procedure TXMLCreditorReferenceType1Choice.Set_Cd(Value: UnicodeString);
//begin
//  ChildNodes['Cd'].NodeValue := Value;
//end;
//
//function TXMLCreditorReferenceType1Choice.Get_Prtry: UnicodeString;
//begin
//  Result := ChildNodes['Prtry'].Text;
//end;
//
//procedure TXMLCreditorReferenceType1Choice.Set_Prtry(Value: UnicodeString);
//begin
//  ChildNodes['Prtry'].NodeValue := Value;
//end;
//
{ TXMLTransactionDates2 }

procedure TXMLTransactionDates2.AfterConstruction;
begin
  RegisterChildNode('Prtry', TXMLProprietaryDate2);
  FPrtry := CreateCollection(TXMLProprietaryDate2List, IXMLProprietaryDate2, 'Prtry') as IXMLProprietaryDate2List;
  inherited;
end;

function TXMLTransactionDates2.Get_AccptncDtTm: UnicodeString;
begin
  Result := ChildNodes['AccptncDtTm'].Text;
end;

procedure TXMLTransactionDates2.Set_AccptncDtTm(Value: UnicodeString);
begin
  ChildNodes['AccptncDtTm'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_TradActvtyCtrctlSttlmDt: UnicodeString;
begin
  Result := ChildNodes['TradActvtyCtrctlSttlmDt'].Text;
end;

procedure TXMLTransactionDates2.Set_TradActvtyCtrctlSttlmDt(Value: UnicodeString);
begin
  ChildNodes['TradActvtyCtrctlSttlmDt'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_TradDt: UnicodeString;
begin
  Result := ChildNodes['TradDt'].Text;
end;

procedure TXMLTransactionDates2.Set_TradDt(Value: UnicodeString);
begin
  ChildNodes['TradDt'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_IntrBkSttlmDt: UnicodeString;
begin
  Result := ChildNodes['IntrBkSttlmDt'].Text;
end;

procedure TXMLTransactionDates2.Set_IntrBkSttlmDt(Value: UnicodeString);
begin
  ChildNodes['IntrBkSttlmDt'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_StartDt: UnicodeString;
begin
  Result := ChildNodes['StartDt'].Text;
end;

procedure TXMLTransactionDates2.Set_StartDt(Value: UnicodeString);
begin
  ChildNodes['StartDt'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_EndDt: UnicodeString;
begin
  Result := ChildNodes['EndDt'].Text;
end;

procedure TXMLTransactionDates2.Set_EndDt(Value: UnicodeString);
begin
  ChildNodes['EndDt'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_TxDtTm: UnicodeString;
begin
  Result := ChildNodes['TxDtTm'].Text;
end;

procedure TXMLTransactionDates2.Set_TxDtTm(Value: UnicodeString);
begin
  ChildNodes['TxDtTm'].NodeValue := Value;
end;

function TXMLTransactionDates2.Get_Prtry: IXMLProprietaryDate2List;
begin
  Result := FPrtry;
end;

{ TXMLProprietaryDate2 }

procedure TXMLProprietaryDate2.AfterConstruction;
begin
  RegisterChildNode('Dt', TXMLDateAndDateTimeChoice);
  inherited;
end;

function TXMLProprietaryDate2.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLProprietaryDate2.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLProprietaryDate2.Get_Dt: IXMLDateAndDateTimeChoice;
begin
  Result := ChildNodes['Dt'] as IXMLDateAndDateTimeChoice;
end;

{ TXMLProprietaryDate2List }

function TXMLProprietaryDate2List.Add: IXMLProprietaryDate2;
begin
  Result := AddItem(-1) as IXMLProprietaryDate2;
end;

function TXMLProprietaryDate2List.Insert(const Index: Integer): IXMLProprietaryDate2;
begin
  Result := AddItem(Index) as IXMLProprietaryDate2;
end;

function TXMLProprietaryDate2List.Get_Item(Index: Integer): IXMLProprietaryDate2;
begin
  Result := List[Index] as IXMLProprietaryDate2;
end;

{ TXMLTransactionPrice2Choice }

procedure TXMLTransactionPrice2Choice.AfterConstruction;
begin
  RegisterChildNode('DealPric', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Prtry', TXMLProprietaryPrice2);
  FPrtry := CreateCollection(TXMLProprietaryPrice2List, IXMLProprietaryPrice2, 'Prtry') as IXMLProprietaryPrice2List;
  inherited;
end;

function TXMLTransactionPrice2Choice.Get_DealPric: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['DealPric'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLTransactionPrice2Choice.Get_Prtry: IXMLProprietaryPrice2List;
begin
  Result := FPrtry;
end;

{ TXMLProprietaryPrice2 }

procedure TXMLProprietaryPrice2.AfterConstruction;
begin
  RegisterChildNode('Pric', TXMLActiveOrHistoricCurrencyAndAmount);
  inherited;
end;

function TXMLProprietaryPrice2.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLProprietaryPrice2.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLProprietaryPrice2.Get_Pric: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Pric'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

{ TXMLProprietaryPrice2List }

function TXMLProprietaryPrice2List.Add: IXMLProprietaryPrice2;
begin
  Result := AddItem(-1) as IXMLProprietaryPrice2;
end;

function TXMLProprietaryPrice2List.Insert(const Index: Integer): IXMLProprietaryPrice2;
begin
  Result := AddItem(Index) as IXMLProprietaryPrice2;
end;

function TXMLProprietaryPrice2List.Get_Item(Index: Integer): IXMLProprietaryPrice2;
begin
  Result := List[Index] as IXMLProprietaryPrice2;
end;

{ TXMLTransactionQuantities1Choice }

procedure TXMLTransactionQuantities1Choice.AfterConstruction;
begin
  RegisterChildNode('Qty', TXMLFinancialInstrumentQuantityChoice);
  RegisterChildNode('Prtry', TXMLProprietaryQuantity1);
  inherited;
end;

function TXMLTransactionQuantities1Choice.Get_Qty: IXMLFinancialInstrumentQuantityChoice;
begin
  Result := ChildNodes['Qty'] as IXMLFinancialInstrumentQuantityChoice;
end;

function TXMLTransactionQuantities1Choice.Get_Prtry: IXMLProprietaryQuantity1;
begin
  Result := ChildNodes['Prtry'] as IXMLProprietaryQuantity1;
end;

{ TXMLTransactionQuantities1ChoiceList }

function TXMLTransactionQuantities1ChoiceList.Add: IXMLTransactionQuantities1Choice;
begin
  Result := AddItem(-1) as IXMLTransactionQuantities1Choice;
end;

function TXMLTransactionQuantities1ChoiceList.Insert(const Index: Integer): IXMLTransactionQuantities1Choice;
begin
  Result := AddItem(Index) as IXMLTransactionQuantities1Choice;
end;

function TXMLTransactionQuantities1ChoiceList.Get_Item(Index: Integer): IXMLTransactionQuantities1Choice;
begin
  Result := List[Index] as IXMLTransactionQuantities1Choice;
end;

{ TXMLFinancialInstrumentQuantityChoice }

function TXMLFinancialInstrumentQuantityChoice.Get_Unit_: UnicodeString;
begin
  Result := ChildNodes['Unit'].Text;
end;

procedure TXMLFinancialInstrumentQuantityChoice.Set_Unit_(Value: UnicodeString);
begin
  ChildNodes['Unit'].NodeValue := Value;
end;

function TXMLFinancialInstrumentQuantityChoice.Get_FaceAmt: UnicodeString;
begin
  Result := ChildNodes['FaceAmt'].Text;
end;

procedure TXMLFinancialInstrumentQuantityChoice.Set_FaceAmt(Value: UnicodeString);
begin
  ChildNodes['FaceAmt'].NodeValue := Value;
end;

function TXMLFinancialInstrumentQuantityChoice.Get_AmtsdVal: UnicodeString;
begin
  Result := ChildNodes['AmtsdVal'].Text;
end;

procedure TXMLFinancialInstrumentQuantityChoice.Set_AmtsdVal(Value: UnicodeString);
begin
  ChildNodes['AmtsdVal'].NodeValue := Value;
end;

{ TXMLProprietaryQuantity1 }

function TXMLProprietaryQuantity1.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLProprietaryQuantity1.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLProprietaryQuantity1.Get_Qty: UnicodeString;
begin
  Result := ChildNodes['Qty'].Text;
end;

procedure TXMLProprietaryQuantity1.Set_Qty(Value: UnicodeString);
begin
  ChildNodes['Qty'].NodeValue := Value;
end;

{ TXMLSecurityIdentification4Choice }

procedure TXMLSecurityIdentification4Choice.AfterConstruction;
begin
  RegisterChildNode('Prtry', TXMLAlternateSecurityIdentification2);
  inherited;
end;

function TXMLSecurityIdentification4Choice.Get_ISIN: UnicodeString;
begin
  Result := ChildNodes['ISIN'].Text;
end;

procedure TXMLSecurityIdentification4Choice.Set_ISIN(Value: UnicodeString);
begin
  ChildNodes['ISIN'].NodeValue := Value;
end;

function TXMLSecurityIdentification4Choice.Get_Prtry: IXMLAlternateSecurityIdentification2;
begin
  Result := ChildNodes['Prtry'] as IXMLAlternateSecurityIdentification2;
end;

{ TXMLAlternateSecurityIdentification2 }

function TXMLAlternateSecurityIdentification2.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLAlternateSecurityIdentification2.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLAlternateSecurityIdentification2.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLAlternateSecurityIdentification2.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

{ TXMLTaxInformation3 }

procedure TXMLTaxInformation3.AfterConstruction;
begin
  RegisterChildNode('Cdtr', TXMLTaxParty1);
  RegisterChildNode('Dbtr', TXMLTaxParty2);
  RegisterChildNode('TtlTaxblBaseAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('TtlTaxAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Rcrd', TXMLTaxRecord1);
  FRcrd := CreateCollection(TXMLTaxRecord1List, IXMLTaxRecord1, 'Rcrd') as IXMLTaxRecord1List;
  inherited;
end;

function TXMLTaxInformation3.Get_Cdtr: IXMLTaxParty1;
begin
  Result := ChildNodes['Cdtr'] as IXMLTaxParty1;
end;

function TXMLTaxInformation3.Get_Dbtr: IXMLTaxParty2;
begin
  Result := ChildNodes['Dbtr'] as IXMLTaxParty2;
end;

function TXMLTaxInformation3.Get_AdmstnZn: UnicodeString;
begin
  Result := ChildNodes['AdmstnZn'].Text;
end;

procedure TXMLTaxInformation3.Set_AdmstnZn(Value: UnicodeString);
begin
  ChildNodes['AdmstnZn'].NodeValue := Value;
end;

function TXMLTaxInformation3.Get_RefNb: UnicodeString;
begin
  Result := ChildNodes['RefNb'].Text;
end;

procedure TXMLTaxInformation3.Set_RefNb(Value: UnicodeString);
begin
  ChildNodes['RefNb'].NodeValue := Value;
end;

function TXMLTaxInformation3.Get_Mtd: UnicodeString;
begin
  Result := ChildNodes['Mtd'].Text;
end;

procedure TXMLTaxInformation3.Set_Mtd(Value: UnicodeString);
begin
  ChildNodes['Mtd'].NodeValue := Value;
end;

function TXMLTaxInformation3.Get_TtlTaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['TtlTaxblBaseAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLTaxInformation3.Get_TtlTaxAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['TtlTaxAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLTaxInformation3.Get_Dt: UnicodeString;
begin
  Result := ChildNodes['Dt'].Text;
end;

procedure TXMLTaxInformation3.Set_Dt(Value: UnicodeString);
begin
  ChildNodes['Dt'].NodeValue := Value;
end;

function TXMLTaxInformation3.Get_SeqNb: UnicodeString;
begin
  Result := ChildNodes['SeqNb'].Text;
end;

procedure TXMLTaxInformation3.Set_SeqNb(Value: UnicodeString);
begin
  ChildNodes['SeqNb'].NodeValue := Value;
end;

function TXMLTaxInformation3.Get_Rcrd: IXMLTaxRecord1List;
begin
  Result := FRcrd;
end;

{ TXMLTaxParty1 }

function TXMLTaxParty1.Get_TaxId: UnicodeString;
begin
  Result := ChildNodes['TaxId'].Text;
end;

procedure TXMLTaxParty1.Set_TaxId(Value: UnicodeString);
begin
  ChildNodes['TaxId'].NodeValue := Value;
end;

function TXMLTaxParty1.Get_RegnId: UnicodeString;
begin
  Result := ChildNodes['RegnId'].Text;
end;

procedure TXMLTaxParty1.Set_RegnId(Value: UnicodeString);
begin
  ChildNodes['RegnId'].NodeValue := Value;
end;

function TXMLTaxParty1.Get_TaxTp: UnicodeString;
begin
  Result := ChildNodes['TaxTp'].Text;
end;

procedure TXMLTaxParty1.Set_TaxTp(Value: UnicodeString);
begin
  ChildNodes['TaxTp'].NodeValue := Value;
end;

{ TXMLTaxParty2 }

procedure TXMLTaxParty2.AfterConstruction;
begin
  RegisterChildNode('Authstn', TXMLTaxAuthorisation1);
  inherited;
end;

function TXMLTaxParty2.Get_TaxId: UnicodeString;
begin
  Result := ChildNodes['TaxId'].Text;
end;

procedure TXMLTaxParty2.Set_TaxId(Value: UnicodeString);
begin
  ChildNodes['TaxId'].NodeValue := Value;
end;

function TXMLTaxParty2.Get_RegnId: UnicodeString;
begin
  Result := ChildNodes['RegnId'].Text;
end;

procedure TXMLTaxParty2.Set_RegnId(Value: UnicodeString);
begin
  ChildNodes['RegnId'].NodeValue := Value;
end;

function TXMLTaxParty2.Get_TaxTp: UnicodeString;
begin
  Result := ChildNodes['TaxTp'].Text;
end;

procedure TXMLTaxParty2.Set_TaxTp(Value: UnicodeString);
begin
  ChildNodes['TaxTp'].NodeValue := Value;
end;

function TXMLTaxParty2.Get_Authstn: IXMLTaxAuthorisation1;
begin
  Result := ChildNodes['Authstn'] as IXMLTaxAuthorisation1;
end;

{ TXMLTaxAuthorisation1 }

function TXMLTaxAuthorisation1.Get_Titl: UnicodeString;
begin
  Result := ChildNodes['Titl'].Text;
end;

procedure TXMLTaxAuthorisation1.Set_Titl(Value: UnicodeString);
begin
  ChildNodes['Titl'].NodeValue := Value;
end;

function TXMLTaxAuthorisation1.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLTaxAuthorisation1.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

{ TXMLTaxRecord1 }

procedure TXMLTaxRecord1.AfterConstruction;
begin
  RegisterChildNode('Prd', TXMLTaxPeriod1);
  RegisterChildNode('TaxAmt', TXMLTaxAmount1);
  inherited;
end;

function TXMLTaxRecord1.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLTaxRecord1.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLTaxRecord1.Get_Ctgy: UnicodeString;
begin
  Result := ChildNodes['Ctgy'].Text;
end;

procedure TXMLTaxRecord1.Set_Ctgy(Value: UnicodeString);
begin
  ChildNodes['Ctgy'].NodeValue := Value;
end;

function TXMLTaxRecord1.Get_CtgyDtls: UnicodeString;
begin
  Result := ChildNodes['CtgyDtls'].Text;
end;

procedure TXMLTaxRecord1.Set_CtgyDtls(Value: UnicodeString);
begin
  ChildNodes['CtgyDtls'].NodeValue := Value;
end;

function TXMLTaxRecord1.Get_DbtrSts: UnicodeString;
begin
  Result := ChildNodes['DbtrSts'].Text;
end;

procedure TXMLTaxRecord1.Set_DbtrSts(Value: UnicodeString);
begin
  ChildNodes['DbtrSts'].NodeValue := Value;
end;

function TXMLTaxRecord1.Get_CertId: UnicodeString;
begin
  Result := ChildNodes['CertId'].Text;
end;

procedure TXMLTaxRecord1.Set_CertId(Value: UnicodeString);
begin
  ChildNodes['CertId'].NodeValue := Value;
end;

function TXMLTaxRecord1.Get_FrmsCd: UnicodeString;
begin
  Result := ChildNodes['FrmsCd'].Text;
end;

procedure TXMLTaxRecord1.Set_FrmsCd(Value: UnicodeString);
begin
  ChildNodes['FrmsCd'].NodeValue := Value;
end;

function TXMLTaxRecord1.Get_Prd: IXMLTaxPeriod1;
begin
  Result := ChildNodes['Prd'] as IXMLTaxPeriod1;
end;

function TXMLTaxRecord1.Get_TaxAmt: IXMLTaxAmount1;
begin
  Result := ChildNodes['TaxAmt'] as IXMLTaxAmount1;
end;

function TXMLTaxRecord1.Get_AddtlInf: UnicodeString;
begin
  Result := ChildNodes['AddtlInf'].Text;
end;

procedure TXMLTaxRecord1.Set_AddtlInf(Value: UnicodeString);
begin
  ChildNodes['AddtlInf'].NodeValue := Value;
end;

{ TXMLTaxRecord1List }

function TXMLTaxRecord1List.Add: IXMLTaxRecord1;
begin
  Result := AddItem(-1) as IXMLTaxRecord1;
end;

function TXMLTaxRecord1List.Insert(const Index: Integer): IXMLTaxRecord1;
begin
  Result := AddItem(Index) as IXMLTaxRecord1;
end;

function TXMLTaxRecord1List.Get_Item(Index: Integer): IXMLTaxRecord1;
begin
  Result := List[Index] as IXMLTaxRecord1;
end;

{ TXMLTaxPeriod1 }

procedure TXMLTaxPeriod1.AfterConstruction;
begin
  RegisterChildNode('FrToDt', TXMLDatePeriodDetails);
  inherited;
end;

function TXMLTaxPeriod1.Get_Yr: UnicodeString;
begin
  Result := ChildNodes['Yr'].Text;
end;

procedure TXMLTaxPeriod1.Set_Yr(Value: UnicodeString);
begin
  ChildNodes['Yr'].NodeValue := Value;
end;

function TXMLTaxPeriod1.Get_Tp: UnicodeString;
begin
  Result := ChildNodes['Tp'].Text;
end;

procedure TXMLTaxPeriod1.Set_Tp(Value: UnicodeString);
begin
  ChildNodes['Tp'].NodeValue := Value;
end;

function TXMLTaxPeriod1.Get_FrToDt: IXMLDatePeriodDetails;
begin
  Result := ChildNodes['FrToDt'] as IXMLDatePeriodDetails;
end;

{ TXMLDatePeriodDetails }

function TXMLDatePeriodDetails.Get_FrDt: UnicodeString;
begin
  Result := ChildNodes['FrDt'].Text;
end;

procedure TXMLDatePeriodDetails.Set_FrDt(Value: UnicodeString);
begin
  ChildNodes['FrDt'].NodeValue := Value;
end;

function TXMLDatePeriodDetails.Get_ToDt: UnicodeString;
begin
  Result := ChildNodes['ToDt'].Text;
end;

procedure TXMLDatePeriodDetails.Set_ToDt(Value: UnicodeString);
begin
  ChildNodes['ToDt'].NodeValue := Value;
end;

{ TXMLTaxAmount1 }

procedure TXMLTaxAmount1.AfterConstruction;
begin
  RegisterChildNode('TaxblBaseAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('TtlAmt', TXMLActiveOrHistoricCurrencyAndAmount);
  RegisterChildNode('Dtls', TXMLTaxRecordDetails1);
  FDtls := CreateCollection(TXMLTaxRecordDetails1List, IXMLTaxRecordDetails1, 'Dtls') as IXMLTaxRecordDetails1List;
  inherited;
end;

function TXMLTaxAmount1.Get_Rate: UnicodeString;
begin
  Result := ChildNodes['Rate'].Text;
end;

procedure TXMLTaxAmount1.Set_Rate(Value: UnicodeString);
begin
  ChildNodes['Rate'].NodeValue := Value;
end;

function TXMLTaxAmount1.Get_TaxblBaseAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['TaxblBaseAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLTaxAmount1.Get_TtlAmt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['TtlAmt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

function TXMLTaxAmount1.Get_Dtls: IXMLTaxRecordDetails1List;
begin
  Result := FDtls;
end;

{ TXMLTaxRecordDetails1 }

procedure TXMLTaxRecordDetails1.AfterConstruction;
begin
  RegisterChildNode('Prd', TXMLTaxPeriod1);
  RegisterChildNode('Amt', TXMLActiveOrHistoricCurrencyAndAmount);
  inherited;
end;

function TXMLTaxRecordDetails1.Get_Prd: IXMLTaxPeriod1;
begin
  Result := ChildNodes['Prd'] as IXMLTaxPeriod1;
end;

function TXMLTaxRecordDetails1.Get_Amt: IXMLActiveOrHistoricCurrencyAndAmount;
begin
  Result := ChildNodes['Amt'] as IXMLActiveOrHistoricCurrencyAndAmount;
end;

{ TXMLTaxRecordDetails1List }

function TXMLTaxRecordDetails1List.Add: IXMLTaxRecordDetails1;
begin
  Result := AddItem(-1) as IXMLTaxRecordDetails1;
end;

function TXMLTaxRecordDetails1List.Insert(const Index: Integer): IXMLTaxRecordDetails1;
begin
  Result := AddItem(Index) as IXMLTaxRecordDetails1;
end;

function TXMLTaxRecordDetails1List.Get_Item(Index: Integer): IXMLTaxRecordDetails1;
begin
  Result := List[Index] as IXMLTaxRecordDetails1;
end;

{ TXMLReturnReasonInformation10 }

procedure TXMLReturnReasonInformation10.AfterConstruction;
begin
  RegisterChildNode('OrgnlBkTxCd', TXMLBankTransactionCodeStructure4);
  RegisterChildNode('Orgtr', TXMLPartyIdentification32);
  RegisterChildNode('Rsn', TXMLReturnReason5Choice);
  FAddtlInf := CreateCollection(TXMLMax105TextList, IXMLNode, 'AddtlInf') as IXMLMax105TextList;
  inherited;
end;

function TXMLReturnReasonInformation10.Get_OrgnlBkTxCd: IXMLBankTransactionCodeStructure4;
begin
  Result := ChildNodes['OrgnlBkTxCd'] as IXMLBankTransactionCodeStructure4;
end;

function TXMLReturnReasonInformation10.Get_Orgtr: IXMLPartyIdentification32;
begin
  Result := ChildNodes['Orgtr'] as IXMLPartyIdentification32;
end;

function TXMLReturnReasonInformation10.Get_Rsn: IXMLReturnReason5Choice;
begin
  Result := ChildNodes['Rsn'] as IXMLReturnReason5Choice;
end;

function TXMLReturnReasonInformation10.Get_AddtlInf: IXMLMax105TextList;
begin
  Result := FAddtlInf;
end;

{ TXMLReturnReason5Choice }

function TXMLReturnReason5Choice.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLReturnReason5Choice.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLReturnReason5Choice.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLReturnReason5Choice.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLCorporateAction1 }

function TXMLCorporateAction1.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLCorporateAction1.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

function TXMLCorporateAction1.Get_Nb: UnicodeString;
begin
  Result := ChildNodes['Nb'].Text;
end;

procedure TXMLCorporateAction1.Set_Nb(Value: UnicodeString);
begin
  ChildNodes['Nb'].NodeValue := Value;
end;

function TXMLCorporateAction1.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLCorporateAction1.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

end.
