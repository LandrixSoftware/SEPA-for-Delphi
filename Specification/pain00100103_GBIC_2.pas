
{*********************************************************************************************************************}
{                                                                                                                     }
{                                                  XML-Datenbindung                                                   }
{                                                                                                                     }
{         Generiert am: 27.03.2018 11:44:36                                                                           }
{       Generiert von: D:\projekte\src_lnxa6_3thParty\_git_SEPA-for-Delphi\Specification\pain.001.001.03_GBIC_2.xsd   }
{                                                                                                                     }
{*********************************************************************************************************************}

unit pain00100103_GBIC_2;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward-Deklarationen }

  IXMLDocument = interface;
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

{ IXMLDocument }

  IXMLDocument = interface(IXMLNode)
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

  TXMLDocument = class;
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

{ TXMLDocument }

  TXMLDocument = class(TXMLNode, IXMLDocument)
  protected
    { IXMLDocument }
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

{ Globale Funktionen }

function GetDocument(Doc: IXMLDocument): IXMLDocument;
function LoadDocument(const FileName: string): IXMLDocument;
function NewDocument: IXMLDocument;

const
  TargetNamespace = 'urn:iso:std:iso:20022:tech:xsd:pain.001.001.03';

implementation

uses Xml.xmlutil;

{ Globale Funktionen }

function GetDocument(Doc: IXMLDocument): IXMLDocument;
begin
  Result := Doc.GetDocBinding('Document', TXMLDocument, TargetNamespace) as IXMLDocument;
end;

function LoadDocument(const FileName: string): IXMLDocument;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Document', TXMLDocument, TargetNamespace) as IXMLDocument;
end;

function NewDocument: IXMLDocument;
begin
  Result := NewXMLDocument.GetDocBinding('Document', TXMLDocument, TargetNamespace) as IXMLDocument;
end;

{ TXMLDocument }

procedure TXMLDocument.AfterConstruction;
begin
  RegisterChildNode('CstmrCdtTrfInitn', TXMLCustomerCreditTransferInitiationV03);
  inherited;
end;

function TXMLDocument.Get_CstmrCdtTrfInitn: IXMLCustomerCreditTransferInitiationV03;
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

end.