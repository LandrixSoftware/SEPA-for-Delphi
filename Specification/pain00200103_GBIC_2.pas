
{*********************************************************************************************************************}
{                                                                                                                     }
{                                                  XML-Datenbindung                                                   }
{                                                                                                                     }
{         Generiert am: 27.03.2018 11:48:22                                                                           }
{       Generiert von: D:\projekte\src_lnxa6_3thParty\_git_SEPA-for-Delphi\Specification\pain.002.001.03_GBIC_2.xsd   }
{                                                                                                                     }
{*********************************************************************************************************************}

unit pain00200103_GBIC_2;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward-Deklarationen }

  IXMLDocument = interface;
  IXMLCustomerPaymentStatusReportV03 = interface;
  IXMLGroupHeaderSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA1 = interface;
  IXMLFinancialInstitutionIdentificationSEPA1 = interface;
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
  IXMLAmountTypeSEPA = interface;
  IXMLActiveOrHistoricCurrencyAndAmountSEPA = interface;
  IXMLPartyIdentificationSEPA3 = interface;
  IXMLPartySEPA2 = interface;
  IXMLPersonIdentificationSEPA2 = interface;
  IXMLRestrictedPersonIdentificationSEPA = interface;
  IXMLRestrictedPersonIdentificationSchemeNameSEPA = interface;
  IXMLPaymentTypeInformationSEPA = interface;
  IXMLServiceLevel = interface;
  IXMLLocalInstrumentSEPA = interface;
  IXMLCategoryPurposeSEPA = interface;
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
  IXMLCreditorReferenceTypeSEPA = interface;
  IXMLCreditorReferenceTypeCodeSEPA = interface;
  IXMLPartyIdentificationSEPA1 = interface;
  IXMLPartySEPAChoice = interface;
  IXMLOrganisationIdentificationSEPAChoice = interface;
  IXMLGenericOrganisationIdentification1 = interface;
  IXMLOrganisationIdentificationSchemeName1Choice = interface;
  IXMLPersonIdentificationSEPA1Choice = interface;
  IXMLDateAndPlaceOfBirth = interface;
  IXMLGenericPersonIdentification1 = interface;
  IXMLPersonIdentificationSchemeName1Choice = interface;
  IXMLPartyIdentificationSEPA2 = interface;
  IXMLPostalAddressSEPA = interface;
  IXMLCashAccountSEPA1 = interface;
  IXMLAccountIdentificationSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA3 = interface;
  IXMLFinancialInstitutionIdentificationSEPA3 = interface;
  IXMLOthrIdentification = interface;
  IXMLRestrictedFinancialIdentificationSEPA = interface;
  IXMLMax105TextList = interface;
  IXMLMax70TextList = interface;

{ IXMLDocument }

  IXMLDocument = interface(IXMLNode)
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

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA1 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA1 = interface(IXMLNode)
    ['{ACA6AE29-2C17-4D52-AF40-307A2DFC69BC}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA1 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA1 }

  IXMLFinancialInstitutionIdentificationSEPA1 = interface(IXMLNode)
    ['{2C5402A1-608D-4E6C-9CF8-41DF9BC4E89C}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
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

{ IXMLAmountTypeSEPA }

  IXMLAmountTypeSEPA = interface(IXMLNode)
    ['{76B81ABD-1F48-4996-B6DB-35461FBAFD32}']
    { Eigenschaftszugriff }
    function Get_InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA;
    { Methoden & Eigenschaften }
    property InstdAmt: IXMLActiveOrHistoricCurrencyAndAmountSEPA read Get_InstdAmt;
  end;

{ IXMLActiveOrHistoricCurrencyAndAmountSEPA }

  IXMLActiveOrHistoricCurrencyAndAmountSEPA = interface(IXMLNode)
    ['{3EB030CA-7F7A-4686-8CB7-57152465BE1F}']
    { Eigenschaftszugriff }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
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

{ IXMLServiceLevel }

  IXMLServiceLevel = interface(IXMLNode)
    ['{A520B492-C392-4A79-B417-4404601708D8}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
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

{ IXMLCategoryPurposeSEPA }

  IXMLCategoryPurposeSEPA = interface(IXMLNode)
    ['{3BE435D4-980B-47CE-A735-C3D18DC2CBBC}']
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

{ IXMLCreditorReferenceTypeSEPA }

  IXMLCreditorReferenceTypeSEPA = interface(IXMLNode)
    ['{81EFF6C3-3078-43F8-8841-EE1E148EEAA1}']
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
    ['{38F14469-A27D-44F4-B8AC-F846ED7CF813}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLPartyIdentificationSEPA1 }

  IXMLPartyIdentificationSEPA1 = interface(IXMLNode)
    ['{9862EB1B-5137-4590-8DD5-03405AB48FE2}']
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
    ['{F0D0753E-D1DE-4590-9245-71623A8CB196}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
    function Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentificationSEPAChoice read Get_OrgId;
    property PrvtId: IXMLPersonIdentificationSEPA1Choice read Get_PrvtId;
  end;

{ IXMLOrganisationIdentificationSEPAChoice }

  IXMLOrganisationIdentificationSEPAChoice = interface(IXMLNode)
    ['{CDED2F93-BF58-4F9A-8F47-ACDE1A54127C}']
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
    ['{785F9B43-B3E9-4F5D-BDA4-FCC1BC399668}']
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
    ['{35C83506-8934-4477-A95C-0EEAB0EAC290}']
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
    ['{4BEF6A3F-4656-45D3-B781-F382BEE3B57C}']
    { Eigenschaftszugriff }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
    { Methoden & Eigenschaften }
    property DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth read Get_DtAndPlcOfBirth;
    property Othr: IXMLGenericPersonIdentification1 read Get_Othr;
  end;

{ IXMLDateAndPlaceOfBirth }

  IXMLDateAndPlaceOfBirth = interface(IXMLNode)
    ['{D21C6AA9-6634-4BB4-A775-6FA430DCE843}']
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
    ['{54162C56-1085-48BE-9564-8A9270497BB1}']
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
    ['{4B987C72-4A17-4CD1-9209-A7B56B2E4429}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLPartyIdentificationSEPA2 }

  IXMLPartyIdentificationSEPA2 = interface(IXMLNode)
    ['{AD1CD902-0856-4E12-A45A-C5B02055B7E5}']
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
    ['{C7389E2D-6F99-4C66-8D3C-CA0B0F540763}']
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
    ['{6ACD823B-F153-4BF8-A380-6BCA01DF1ACD}']
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
    ['{A4A7F496-81A2-40A6-AAE8-4DE42C79B943}']
    { Eigenschaftszugriff }
    function Get_IBAN: UnicodeString;
    procedure Set_IBAN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
  end;

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA3 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA3 = interface(IXMLNode)
    ['{60D2A0BF-856D-4844-B43F-8351ADCD6D8E}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA3 }

  IXMLFinancialInstitutionIdentificationSEPA3 = interface(IXMLNode)
    ['{19B05A85-B243-4697-81C1-189AD9850924}']
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
    ['{34A618DD-9669-4704-A3B0-B665FE3F7DA7}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLRestrictedFinancialIdentificationSEPA }

  IXMLRestrictedFinancialIdentificationSEPA = interface(IXMLNode)
    ['{B043D853-808E-466B-846D-996C30456740}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
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

{ IXMLMax70TextList }

  IXMLMax70TextList = interface(IXMLNodeCollection)
    ['{977E02C8-A4AE-4DF2-96B4-BE98AD9F2CD7}']
    { Methoden & Eigenschaften }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward-Deklarationen }

  TXMLDocument = class;
  TXMLCustomerPaymentStatusReportV03 = class;
  TXMLGroupHeaderSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA1 = class;
  TXMLFinancialInstitutionIdentificationSEPA1 = class;
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
  TXMLAmountTypeSEPA = class;
  TXMLActiveOrHistoricCurrencyAndAmountSEPA = class;
  TXMLPartyIdentificationSEPA3 = class;
  TXMLPartySEPA2 = class;
  TXMLPersonIdentificationSEPA2 = class;
  TXMLRestrictedPersonIdentificationSEPA = class;
  TXMLRestrictedPersonIdentificationSchemeNameSEPA = class;
  TXMLPaymentTypeInformationSEPA = class;
  TXMLServiceLevel = class;
  TXMLLocalInstrumentSEPA = class;
  TXMLCategoryPurposeSEPA = class;
  TXMLMandateRelatedInformationSEPA = class;
  TXMLAmendmentInformationDetailsSEPA = class;
  TXMLPartyIdentificationSEPA4 = class;
  TXMLCashAccountSEPAMandate = class;
  TXMLAccountIdentificationSEPAMandate = class;
  TXMLGenericAccountIdentificationSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA2 = class;
  TXMLFinancialInstitutionIdentificationSEPA2 = class;
  TXMLRemittanceInformationSEPA2Choice = class;
  TXMLStructuredRemittanceInformationSEPA2 = class;
  TXMLCreditorReferenceInformationSEPA = class;
  TXMLCreditorReferenceTypeSEPA = class;
  TXMLCreditorReferenceTypeCodeSEPA = class;
  TXMLPartyIdentificationSEPA1 = class;
  TXMLPartySEPAChoice = class;
  TXMLOrganisationIdentificationSEPAChoice = class;
  TXMLGenericOrganisationIdentification1 = class;
  TXMLOrganisationIdentificationSchemeName1Choice = class;
  TXMLPersonIdentificationSEPA1Choice = class;
  TXMLDateAndPlaceOfBirth = class;
  TXMLGenericPersonIdentification1 = class;
  TXMLPersonIdentificationSchemeName1Choice = class;
  TXMLPartyIdentificationSEPA2 = class;
  TXMLPostalAddressSEPA = class;
  TXMLCashAccountSEPA1 = class;
  TXMLAccountIdentificationSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA3 = class;
  TXMLFinancialInstitutionIdentificationSEPA3 = class;
  TXMLOthrIdentification = class;
  TXMLRestrictedFinancialIdentificationSEPA = class;
  TXMLMax105TextList = class;
  TXMLMax70TextList = class;

{ TXMLDocument }

  TXMLDocument = class(TXMLNode, IXMLDocument)
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

{ TXMLServiceLevel }

  TXMLServiceLevel = class(TXMLNode, IXMLServiceLevel)
  protected
    { IXMLServiceLevel }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLLocalInstrumentSEPA }

  TXMLLocalInstrumentSEPA = class(TXMLNode, IXMLLocalInstrumentSEPA)
  protected
    { IXMLLocalInstrumentSEPA }
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

{ TXMLRestrictedFinancialIdentificationSEPA }

  TXMLRestrictedFinancialIdentificationSEPA = class(TXMLNode, IXMLRestrictedFinancialIdentificationSEPA)
  protected
    { IXMLRestrictedFinancialIdentificationSEPA }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLMax105TextList }

  TXMLMax105TextList = class(TXMLNodeCollection, IXMLMax105TextList)
  protected
    { IXMLMax105TextList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
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
  TargetNamespace = 'urn:iso:std:iso:20022:tech:xsd:pain.002.001.03';

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
  RegisterChildNode('CstmrPmtStsRpt', TXMLCustomerPaymentStatusReportV03);
  inherited;
end;

function TXMLDocument.Get_CstmrPmtStsRpt: IXMLCustomerPaymentStatusReportV03;
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

{ TXMLServiceLevel }

function TXMLServiceLevel.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLServiceLevel.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLLocalInstrumentSEPA }

function TXMLLocalInstrumentSEPA.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLLocalInstrumentSEPA.Set_Cd(Value: UnicodeString);
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

{ TXMLRestrictedFinancialIdentificationSEPA }

function TXMLRestrictedFinancialIdentificationSEPA.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLRestrictedFinancialIdentificationSEPA.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

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