
{*********************************************************************************************************************}
{                                                                                                                     }
{                                                  XML-Datenbindung                                                   }
{                                                                                                                     }
{         Generiert am: 27.03.2018 11:49:26                                                                           }
{       Generiert von: D:\projekte\src_lnxa6_3thParty\_git_SEPA-for-Delphi\Specification\pain.007.001.02_GBIC_2.xsd   }
{                                                                                                                     }
{*********************************************************************************************************************}

unit pain00700102_GBIC_2;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward-Deklarationen }

  IXMLDocument = interface;
  IXMLCustomerPaymentReversalV02 = interface;
  IXMLGroupHeader40 = interface;
  IXMLPartyIdentification32 = interface;
  IXMLPostalAddress6 = interface;
  IXMLParty6Choice = interface;
  IXMLOrganisationIdentification4 = interface;
  IXMLGenericOrganisationIdentification1 = interface;
  IXMLOrganisationIdentificationSchemeName1Choice = interface;
  IXMLPersonIdentification5 = interface;
  IXMLDateAndPlaceOfBirth = interface;
  IXMLGenericPersonIdentification1 = interface;
  IXMLPersonIdentificationSchemeName1Choice = interface;
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
  IXMLDocument_GBIC = interface;
  IXMLCustomerPaymentReversalV02_GBIC = interface;
  IXMLGroupHeader40_GBIC = interface;
  IXMLPartyIdentification32_GBIC = interface;
  IXMLParty6Choice_GBIC = interface;
  IXMLOrganisationIdentification4_GBIC = interface;
  IXMLPersonIdentification5_GBIC = interface;
  IXMLBranchAndFinancialInstitutionIdentification4_GBIC = interface;
  IXMLFinancialInstitutionIdentification7_GBIC = interface;
  IXMLOriginalGroupInformation22_GBIC = interface;
  IXMLReversalReasonInformation6_GBIC = interface;
  IXMLReversalReason4Choice_GBIC = interface;
  IXMLOriginalPaymentInformation2_GBIC = interface;
  IXMLOriginalPaymentInformation2_GBICList = interface;
  IXMLReversalReasonInformation6_GBIC_2 = interface;
  IXMLReversalReason4Choice_GBIC_2 = interface;
  IXMLPaymentTransactionInformation28_GBIC = interface;
  IXMLPaymentTransactionInformation28_GBICList = interface;
  IXMLActiveOrHistoricCurrencyAndAmount_GBIC = interface;
  IXMLReversalReasonInformation6_GBIC_3 = interface;
  IXMLOriginalTransactionReference13_GBIC = interface;
  IXMLPartyIdentification32_GBIC_2 = interface;
  IXMLParty6Choice_GBIC_2 = interface;
  IXMLPersonIdentification5_GBIC_2 = interface;
  IXMLGenericPersonIdentification1_GBIC = interface;
  IXMLPersonIdentificationSchemeName1Choice_GBIC = interface;
  IXMLPaymentTypeInformation22_GBIC = interface;
  IXMLServiceLevel8Choice_GBIC = interface;
  IXMLLocalInstrument2Choice_GBIC = interface;
  IXMLMandateRelatedInformation6_GBIC = interface;
  IXMLAmendmentInformationDetails6_GBIC = interface;
  IXMLPartyIdentification32_GBIC_3 = interface;
  IXMLCashAccount16_GBIC = interface;
  IXMLRemittanceInformation5_GBIC = interface;
  IXMLPartyIdentification32_GBIC_4 = interface;
  IXMLParty6Choice_GBIC_3 = interface;
  IXMLPartyIdentification32_GBIC_5 = interface;
  IXMLPostalAddress6_GBIC = interface;
  IXMLCashAccount16_GBIC_2 = interface;
  IXMLAccountIdentification4Choice_GBIC = interface;
  IXMLPartyIdentification32_GBIC_6 = interface;
  IXMLCashAccount16_GBIC_3 = interface;
  IXMLMax70TextList = interface;

{ IXMLDocument }

  IXMLDocument = interface(IXMLNode)
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

{ IXMLGenericOrganisationIdentification1 }

  IXMLGenericOrganisationIdentification1 = interface(IXMLNode)
    ['{DC608B4A-FCFC-4CA3-B0AB-D3AD4ADC7346}']
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
    ['{7F740E09-F69C-4F86-BD55-5AEE888D7CC5}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
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

{ IXMLDateAndPlaceOfBirth }

  IXMLDateAndPlaceOfBirth = interface(IXMLNode)
    ['{D19AFF6D-2E35-4CB2-A0FF-E8C92037FA5D}']
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
    ['{3CC5BEA8-8D20-4286-A5CD-411D5203489D}']
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
    ['{A719A182-9E1E-4D3D-B68D-FEB341BD3E09}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
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

{ IXMLDocument_GBIC }

  IXMLDocument_GBIC = interface(IXMLDocument)
    ['{DDB7E8A4-AC70-4411-BFC5-9899A448F942}']
    { Eigenschaftszugriff }
    function Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02_GBIC;
    { Methoden & Eigenschaften }
    property CstmrPmtRvsl: IXMLCustomerPaymentReversalV02_GBIC read Get_CstmrPmtRvsl;
  end;

{ IXMLCustomerPaymentReversalV02_GBIC }

  IXMLCustomerPaymentReversalV02_GBIC = interface(IXMLCustomerPaymentReversalV02)
    ['{A937D29F-DD5A-4A15-86BD-A29CBD8A69D2}']
    { Eigenschaftszugriff }
    function Get_GrpHdr: IXMLGroupHeader40_GBIC;
    function Get_OrgnlGrpInf: IXMLOriginalGroupInformation22_GBIC;
    function Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2_GBICList;
    { Methoden & Eigenschaften }
    property GrpHdr: IXMLGroupHeader40_GBIC read Get_GrpHdr;
    property OrgnlGrpInf: IXMLOriginalGroupInformation22_GBIC read Get_OrgnlGrpInf;
    property OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2_GBICList read Get_OrgnlPmtInfAndRvsl;
  end;

{ IXMLGroupHeader40_GBIC }

  IXMLGroupHeader40_GBIC = interface(IXMLGroupHeader40)
    ['{0C8B1348-E395-4858-81B8-CE04B5FF77B2}']
    { Eigenschaftszugriff }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_GrpRvsl: Boolean;
    function Get_InitgPty: IXMLPartyIdentification32_GBIC;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
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
    property InitgPty: IXMLPartyIdentification32_GBIC read Get_InitgPty;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC read Get_CdtrAgt;
  end;

{ IXMLPartyIdentification32_GBIC }

  IXMLPartyIdentification32_GBIC = interface(IXMLPartyIdentification32)
    ['{A527D2EA-CCE8-4FB9-ACF7-0BB7920509FB}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLParty6Choice_GBIC;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Id: IXMLParty6Choice_GBIC read Get_Id;
  end;

{ IXMLParty6Choice_GBIC }

  IXMLParty6Choice_GBIC = interface(IXMLParty6Choice)
    ['{FB8A70BB-6159-4932-B470-AA33D63AD1BE}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentification4_GBIC;
    function Get_PrvtId: IXMLPersonIdentification5_GBIC;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentification4_GBIC read Get_OrgId;
    property PrvtId: IXMLPersonIdentification5_GBIC read Get_PrvtId;
  end;

{ IXMLOrganisationIdentification4_GBIC }

  IXMLOrganisationIdentification4_GBIC = interface(IXMLOrganisationIdentification4)
    ['{9775CE7B-00FD-47BA-AA21-5985EFE1422A}']
    { Eigenschaftszugriff }
    function Get_BICOrBEI: UnicodeString;
    function Get_Othr: IXMLGenericOrganisationIdentification1;
    procedure Set_BICOrBEI(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BICOrBEI: UnicodeString read Get_BICOrBEI write Set_BICOrBEI;
    property Othr: IXMLGenericOrganisationIdentification1 read Get_Othr;
  end;

{ IXMLPersonIdentification5_GBIC }

  IXMLPersonIdentification5_GBIC = interface(IXMLPersonIdentification5)
    ['{20BB44A7-2C36-4B4C-B115-048A4C8C8C4F}']
    { Eigenschaftszugriff }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
    { Methoden & Eigenschaften }
    property DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth read Get_DtAndPlcOfBirth;
    property Othr: IXMLGenericPersonIdentification1 read Get_Othr;
  end;

{ IXMLBranchAndFinancialInstitutionIdentification4_GBIC }

  IXMLBranchAndFinancialInstitutionIdentification4_GBIC = interface(IXMLBranchAndFinancialInstitutionIdentification4)
    ['{FDBF35E9-7868-4BEF-8A9D-379A0FEFC83D}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentification7_GBIC;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentification7_GBIC read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentification7_GBIC }

  IXMLFinancialInstitutionIdentification7_GBIC = interface(IXMLFinancialInstitutionIdentification7)
    ['{947FD1A0-E3AE-4CCA-A51F-1080B9216C4C}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
  end;

{ IXMLOriginalGroupInformation22_GBIC }

  IXMLOriginalGroupInformation22_GBIC = interface(IXMLOriginalGroupInformation22)
    ['{C43D5586-D036-4C5B-8E77-5E1E073B5445}']
    { Eigenschaftszugriff }
    function Get_OrgnlMsgId: UnicodeString;
    function Get_OrgnlMsgNmId: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC;
    procedure Set_OrgnlMsgId(Value: UnicodeString);
    procedure Set_OrgnlMsgNmId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMsgId: UnicodeString read Get_OrgnlMsgId write Set_OrgnlMsgId;
    property OrgnlMsgNmId: UnicodeString read Get_OrgnlMsgNmId write Set_OrgnlMsgNmId;
    property RvslRsnInf: IXMLReversalReasonInformation6_GBIC read Get_RvslRsnInf;
  end;

{ IXMLReversalReasonInformation6_GBIC }

  IXMLReversalReasonInformation6_GBIC = interface(IXMLReversalReasonInformation6)
    ['{553D7E86-AE21-452F-B6A7-2A2F632A6CEA}']
    { Eigenschaftszugriff }
    function Get_Rsn: IXMLReversalReason4Choice_GBIC;
    { Methoden & Eigenschaften }
    property Rsn: IXMLReversalReason4Choice_GBIC read Get_Rsn;
  end;

{ IXMLReversalReason4Choice_GBIC }

  IXMLReversalReason4Choice_GBIC = interface(IXMLReversalReason4Choice)
    ['{4D5F99C6-0B55-4607-8BBB-3961ECB2B2C8}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLOriginalPaymentInformation2_GBIC }

  IXMLOriginalPaymentInformation2_GBIC = interface(IXMLOriginalPaymentInformation2)
    ['{E34A1BCA-47BF-44C6-B9B8-C9B6715F0EA0}']
    { Eigenschaftszugriff }
    function Get_RvslPmtInfId: UnicodeString;
    function Get_OrgnlPmtInfId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_PmtInfRvsl: Boolean;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_2;
    function Get_TxInf: IXMLPaymentTransactionInformation28_GBICList;
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
    property RvslRsnInf: IXMLReversalReasonInformation6_GBIC_2 read Get_RvslRsnInf;
    property TxInf: IXMLPaymentTransactionInformation28_GBICList read Get_TxInf;
  end;

{ IXMLOriginalPaymentInformation2_GBICList }

  IXMLOriginalPaymentInformation2_GBICList = interface(IXMLNodeCollection)
    ['{B5A629DD-EDC1-4853-9832-228FFEA7F723}']
    { Methoden & Eigenschaften }
    function Add: IXMLOriginalPaymentInformation2_GBIC;
    function Insert(const Index: Integer): IXMLOriginalPaymentInformation2_GBIC;

    function Get_Item(Index: Integer): IXMLOriginalPaymentInformation2_GBIC;
    property Items[Index: Integer]: IXMLOriginalPaymentInformation2_GBIC read Get_Item; default;
  end;

{ IXMLReversalReasonInformation6_GBIC_2 }

  IXMLReversalReasonInformation6_GBIC_2 = interface(IXMLReversalReasonInformation6)
    ['{CEE89B30-33DA-4003-9E9A-764CC246256D}']
    { Eigenschaftszugriff }
    function Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
    { Methoden & Eigenschaften }
    property Rsn: IXMLReversalReason4Choice_GBIC_2 read Get_Rsn;
  end;

{ IXMLReversalReason4Choice_GBIC_2 }

  IXMLReversalReason4Choice_GBIC_2 = interface(IXMLReversalReason4Choice)
    ['{67E8FC8F-E866-4C5E-8809-C9C38400A64F}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLPaymentTransactionInformation28_GBIC }

  IXMLPaymentTransactionInformation28_GBIC = interface(IXMLPaymentTransactionInformation28)
    ['{81AA28DF-77F2-45C9-AC29-C8FDDD5053F4}']
    { Eigenschaftszugriff }
    function Get_RvslId: UnicodeString;
    function Get_OrgnlInstrId: UnicodeString;
    function Get_OrgnlEndToEndId: UnicodeString;
    function Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
    function Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
    function Get_ChrgBr: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_3;
    function Get_OrgnlTxRef: IXMLOriginalTransactionReference13_GBIC;
    procedure Set_RvslId(Value: UnicodeString);
    procedure Set_OrgnlInstrId(Value: UnicodeString);
    procedure Set_OrgnlEndToEndId(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property RvslId: UnicodeString read Get_RvslId write Set_RvslId;
    property OrgnlInstrId: UnicodeString read Get_OrgnlInstrId write Set_OrgnlInstrId;
    property OrgnlEndToEndId: UnicodeString read Get_OrgnlEndToEndId write Set_OrgnlEndToEndId;
    property OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC read Get_OrgnlInstdAmt;
    property RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC read Get_RvsdInstdAmt;
    property ChrgBr: UnicodeString read Get_ChrgBr write Set_ChrgBr;
    property RvslRsnInf: IXMLReversalReasonInformation6_GBIC_3 read Get_RvslRsnInf;
    property OrgnlTxRef: IXMLOriginalTransactionReference13_GBIC read Get_OrgnlTxRef;
  end;

{ IXMLPaymentTransactionInformation28_GBICList }

  IXMLPaymentTransactionInformation28_GBICList = interface(IXMLNodeCollection)
    ['{CAC5455F-4BEE-4820-B885-522E87203E36}']
    { Methoden & Eigenschaften }
    function Add: IXMLPaymentTransactionInformation28_GBIC;
    function Insert(const Index: Integer): IXMLPaymentTransactionInformation28_GBIC;

    function Get_Item(Index: Integer): IXMLPaymentTransactionInformation28_GBIC;
    property Items[Index: Integer]: IXMLPaymentTransactionInformation28_GBIC read Get_Item; default;
  end;

{ IXMLActiveOrHistoricCurrencyAndAmount_GBIC }

  IXMLActiveOrHistoricCurrencyAndAmount_GBIC = interface(IXMLNode)
    ['{09EEE0B9-1373-4617-BB42-4F7D550D0611}']
    { Eigenschaftszugriff }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLReversalReasonInformation6_GBIC_3 }

  IXMLReversalReasonInformation6_GBIC_3 = interface(IXMLReversalReasonInformation6)
    ['{0412D5D9-9235-45E1-904E-426161C52FD3}']
    { Eigenschaftszugriff }
    function Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
    { Methoden & Eigenschaften }
    property Rsn: IXMLReversalReason4Choice_GBIC_2 read Get_Rsn;
  end;

{ IXMLOriginalTransactionReference13_GBIC }

  IXMLOriginalTransactionReference13_GBIC = interface(IXMLOriginalTransactionReference13)
    ['{7801D45C-37C2-4088-9AA4-2A51D707DB66}']
    { Eigenschaftszugriff }
    function Get_ReqdColltnDt: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentification32_GBIC_2;
    function Get_PmtTpInf: IXMLPaymentTypeInformation22_GBIC;
    function Get_MndtRltdInf: IXMLMandateRelatedInformation6_GBIC;
    function Get_RmtInf: IXMLRemittanceInformation5_GBIC;
    function Get_UltmtDbtr: IXMLPartyIdentification32_GBIC_4;
    function Get_Dbtr: IXMLPartyIdentification32_GBIC_5;
    function Get_DbtrAcct: IXMLCashAccount16_GBIC_2;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Cdtr: IXMLPartyIdentification32_GBIC_6;
    function Get_CdtrAcct: IXMLCashAccount16_GBIC_3;
    function Get_UltmtCdtr: IXMLPartyIdentification32_GBIC_4;
    procedure Set_ReqdColltnDt(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property ReqdColltnDt: UnicodeString read Get_ReqdColltnDt write Set_ReqdColltnDt;
    property CdtrSchmeId: IXMLPartyIdentification32_GBIC_2 read Get_CdtrSchmeId;
    property PmtTpInf: IXMLPaymentTypeInformation22_GBIC read Get_PmtTpInf;
    property MndtRltdInf: IXMLMandateRelatedInformation6_GBIC read Get_MndtRltdInf;
    property RmtInf: IXMLRemittanceInformation5_GBIC read Get_RmtInf;
    property UltmtDbtr: IXMLPartyIdentification32_GBIC_4 read Get_UltmtDbtr;
    property Dbtr: IXMLPartyIdentification32_GBIC_5 read Get_Dbtr;
    property DbtrAcct: IXMLCashAccount16_GBIC_2 read Get_DbtrAcct;
    property DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_DbtrAgt;
    property CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4 read Get_CdtrAgt;
    property Cdtr: IXMLPartyIdentification32_GBIC_6 read Get_Cdtr;
    property CdtrAcct: IXMLCashAccount16_GBIC_3 read Get_CdtrAcct;
    property UltmtCdtr: IXMLPartyIdentification32_GBIC_4 read Get_UltmtCdtr;
  end;

{ IXMLPartyIdentification32_GBIC_2 }

  IXMLPartyIdentification32_GBIC_2 = interface(IXMLPartyIdentification32)
    ['{40684477-2257-4A48-8C46-839504836053}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLParty6Choice_GBIC_2;
    { Methoden & Eigenschaften }
    property Id: IXMLParty6Choice_GBIC_2 read Get_Id;
  end;

{ IXMLParty6Choice_GBIC_2 }

  IXMLParty6Choice_GBIC_2 = interface(IXMLParty6Choice)
    ['{61C8ACE8-1C3C-4DEA-847C-8C5C56552A59}']
    { Eigenschaftszugriff }
    function Get_PrvtId: IXMLPersonIdentification5_GBIC_2;
    { Methoden & Eigenschaften }
    property PrvtId: IXMLPersonIdentification5_GBIC_2 read Get_PrvtId;
  end;

{ IXMLPersonIdentification5_GBIC_2 }

  IXMLPersonIdentification5_GBIC_2 = interface(IXMLPersonIdentification5)
    ['{459CA6F6-2F03-473A-9307-1DD4F8E3D37D}']
    { Eigenschaftszugriff }
    function Get_Othr: IXMLGenericPersonIdentification1_GBIC;
    { Methoden & Eigenschaften }
    property Othr: IXMLGenericPersonIdentification1_GBIC read Get_Othr;
  end;

{ IXMLGenericPersonIdentification1_GBIC }

  IXMLGenericPersonIdentification1_GBIC = interface(IXMLGenericPersonIdentification1)
    ['{4954DBFB-50C8-402F-8371-3A1836519AD8}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice_GBIC;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SchmeNm: IXMLPersonIdentificationSchemeName1Choice_GBIC read Get_SchmeNm;
  end;

{ IXMLPersonIdentificationSchemeName1Choice_GBIC }

  IXMLPersonIdentificationSchemeName1Choice_GBIC = interface(IXMLPersonIdentificationSchemeName1Choice)
    ['{C8CC471A-6727-468C-ABED-B0A19711192C}']
    { Eigenschaftszugriff }
    function Get_Prtry: UnicodeString;
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
  end;

{ IXMLPaymentTypeInformation22_GBIC }

  IXMLPaymentTypeInformation22_GBIC = interface(IXMLPaymentTypeInformation22)
    ['{787CBD89-464A-4FDC-AFFD-E333CD0E59BE}']
    { Eigenschaftszugriff }
    function Get_SvcLvl: IXMLServiceLevel8Choice_GBIC;
    function Get_LclInstrm: IXMLLocalInstrument2Choice_GBIC;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurpose1Choice;
    procedure Set_SeqTp(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property SvcLvl: IXMLServiceLevel8Choice_GBIC read Get_SvcLvl;
    property LclInstrm: IXMLLocalInstrument2Choice_GBIC read Get_LclInstrm;
    property SeqTp: UnicodeString read Get_SeqTp write Set_SeqTp;
    property CtgyPurp: IXMLCategoryPurpose1Choice read Get_CtgyPurp;
  end;

{ IXMLServiceLevel8Choice_GBIC }

  IXMLServiceLevel8Choice_GBIC = interface(IXMLServiceLevel8Choice)
    ['{891FE76C-6880-4EDD-A89A-954937DCF0E2}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLLocalInstrument2Choice_GBIC }

  IXMLLocalInstrument2Choice_GBIC = interface(IXMLLocalInstrument2Choice)
    ['{219BA593-2928-4298-8270-136269E69D57}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLMandateRelatedInformation6_GBIC }

  IXMLMandateRelatedInformation6_GBIC = interface(IXMLMandateRelatedInformation6)
    ['{B161B555-6158-4061-B1FE-D85BE3F62BB7}']
    { Eigenschaftszugriff }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6_GBIC;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property MndtId: UnicodeString read Get_MndtId write Set_MndtId;
    property DtOfSgntr: UnicodeString read Get_DtOfSgntr write Set_DtOfSgntr;
    property AmdmntInd: Boolean read Get_AmdmntInd write Set_AmdmntInd;
    property AmdmntInfDtls: IXMLAmendmentInformationDetails6_GBIC read Get_AmdmntInfDtls;
    property ElctrncSgntr: UnicodeString read Get_ElctrncSgntr write Set_ElctrncSgntr;
  end;

{ IXMLAmendmentInformationDetails6_GBIC }

  IXMLAmendmentInformationDetails6_GBIC = interface(IXMLAmendmentInformationDetails6)
    ['{7F19C2AB-C03D-4088-9EA1-E0BA40A157CE}']
    { Eigenschaftszugriff }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32_GBIC_3;
    function Get_OrgnlDbtrAcct: IXMLCashAccount16_GBIC;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property OrgnlMndtId: UnicodeString read Get_OrgnlMndtId write Set_OrgnlMndtId;
    property OrgnlCdtrSchmeId: IXMLPartyIdentification32_GBIC_3 read Get_OrgnlCdtrSchmeId;
    property OrgnlDbtrAcct: IXMLCashAccount16_GBIC read Get_OrgnlDbtrAcct;
    property OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC read Get_OrgnlDbtrAgt;
  end;

{ IXMLPartyIdentification32_GBIC_3 }

  IXMLPartyIdentification32_GBIC_3 = interface(IXMLPartyIdentification32)
    ['{3E502695-52FC-4E32-B5DC-7410E0461E6A}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLParty6Choice_GBIC_2;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Id: IXMLParty6Choice_GBIC_2 read Get_Id;
  end;

{ IXMLCashAccount16_GBIC }

  IXMLCashAccount16_GBIC = interface(IXMLCashAccount16)
    ['{D7FBB110-53A8-4649-BD74-9B7E24D4421E}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentification4Choice;
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentification4Choice read Get_Id;
  end;

{ IXMLRemittanceInformation5_GBIC }

  IXMLRemittanceInformation5_GBIC = interface(IXMLRemittanceInformation5)
    ['{68EEF174-2291-4D3E-B6B9-EC7D16CE2DE2}']
    { Eigenschaftszugriff }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformation7;
    procedure Set_Ustrd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ustrd: UnicodeString read Get_Ustrd write Set_Ustrd;
    property Strd: IXMLStructuredRemittanceInformation7 read Get_Strd;
  end;

{ IXMLPartyIdentification32_GBIC_4 }

  IXMLPartyIdentification32_GBIC_4 = interface(IXMLPartyIdentification32)
    ['{F7A9BC60-F46D-4C3F-A176-03AB12597A3A}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLParty6Choice_GBIC_3;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property Id: IXMLParty6Choice_GBIC_3 read Get_Id;
  end;

{ IXMLParty6Choice_GBIC_3 }

  IXMLParty6Choice_GBIC_3 = interface(IXMLParty6Choice)
    ['{FD705DA2-1E33-4A27-9E05-E998186D94D9}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentification4_GBIC;
    function Get_PrvtId: IXMLPersonIdentification5_GBIC;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentification4_GBIC read Get_OrgId;
    property PrvtId: IXMLPersonIdentification5_GBIC read Get_PrvtId;
  end;

{ IXMLPartyIdentification32_GBIC_5 }

  IXMLPartyIdentification32_GBIC_5 = interface(IXMLPartyIdentification32)
    ['{FBC25FB1-64FC-48F4-84B7-2765D2B9B181}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddress6_GBIC;
    function Get_Id: IXMLParty6Choice_GBIC_3;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property PstlAdr: IXMLPostalAddress6_GBIC read Get_PstlAdr;
    property Id: IXMLParty6Choice_GBIC_3 read Get_Id;
  end;

{ IXMLPostalAddress6_GBIC }

  IXMLPostalAddress6_GBIC = interface(IXMLPostalAddress6)
    ['{6FCEC724-3524-4618-99DD-42FC714327E5}']
    { Eigenschaftszugriff }
    function Get_Ctry: UnicodeString;
    function Get_AdrLine: IXMLMax70TextList;
    procedure Set_Ctry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ctry: UnicodeString read Get_Ctry write Set_Ctry;
    property AdrLine: IXMLMax70TextList read Get_AdrLine;
  end;

{ IXMLCashAccount16_GBIC_2 }

  IXMLCashAccount16_GBIC_2 = interface(IXMLCashAccount16)
    ['{AE5D12B7-B7C2-47CE-AE5A-1BFE5AE6273F}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentification4Choice_GBIC;
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentification4Choice_GBIC read Get_Id;
  end;

{ IXMLAccountIdentification4Choice_GBIC }

  IXMLAccountIdentification4Choice_GBIC = interface(IXMLAccountIdentification4Choice)
    ['{0D333A10-C159-47EE-8075-21F5E3611A5C}']
    { Eigenschaftszugriff }
    function Get_IBAN: UnicodeString;
    procedure Set_IBAN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
  end;

{ IXMLPartyIdentification32_GBIC_6 }

  IXMLPartyIdentification32_GBIC_6 = interface(IXMLPartyIdentification32)
    ['{5EF921A6-B335-431E-94EB-DF88B11BA75F}']
    { Eigenschaftszugriff }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddress6_GBIC;
    procedure Set_Nm(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Nm: UnicodeString read Get_Nm write Set_Nm;
    property PstlAdr: IXMLPostalAddress6_GBIC read Get_PstlAdr;
  end;

{ IXMLCashAccount16_GBIC_3 }

  IXMLCashAccount16_GBIC_3 = interface(IXMLCashAccount16)
    ['{6BBDBB15-79F4-4A39-9B41-56BAB8EFAAD6}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentification4Choice_GBIC;
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentification4Choice_GBIC read Get_Id;
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
  end;

{ IXMLMax70TextList }

  IXMLMax70TextList = interface(IXMLNodeCollection)
    ['{F9C00C49-BD40-41E7-AAB2-8AB72D700A71}']
    { Methoden & Eigenschaften }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward-Deklarationen }

  TXMLDocument = class;
  TXMLCustomerPaymentReversalV02 = class;
  TXMLGroupHeader40 = class;
  TXMLPartyIdentification32 = class;
  TXMLPostalAddress6 = class;
  TXMLParty6Choice = class;
  TXMLOrganisationIdentification4 = class;
  TXMLGenericOrganisationIdentification1 = class;
  TXMLOrganisationIdentificationSchemeName1Choice = class;
  TXMLPersonIdentification5 = class;
  TXMLDateAndPlaceOfBirth = class;
  TXMLGenericPersonIdentification1 = class;
  TXMLPersonIdentificationSchemeName1Choice = class;
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
  TXMLDocument_GBIC = class;
  TXMLCustomerPaymentReversalV02_GBIC = class;
  TXMLGroupHeader40_GBIC = class;
  TXMLPartyIdentification32_GBIC = class;
  TXMLParty6Choice_GBIC = class;
  TXMLOrganisationIdentification4_GBIC = class;
  TXMLPersonIdentification5_GBIC = class;
  TXMLBranchAndFinancialInstitutionIdentification4_GBIC = class;
  TXMLFinancialInstitutionIdentification7_GBIC = class;
  TXMLOriginalGroupInformation22_GBIC = class;
  TXMLReversalReasonInformation6_GBIC = class;
  TXMLReversalReason4Choice_GBIC = class;
  TXMLOriginalPaymentInformation2_GBIC = class;
  TXMLOriginalPaymentInformation2_GBICList = class;
  TXMLReversalReasonInformation6_GBIC_2 = class;
  TXMLReversalReason4Choice_GBIC_2 = class;
  TXMLPaymentTransactionInformation28_GBIC = class;
  TXMLPaymentTransactionInformation28_GBICList = class;
  TXMLActiveOrHistoricCurrencyAndAmount_GBIC = class;
  TXMLReversalReasonInformation6_GBIC_3 = class;
  TXMLOriginalTransactionReference13_GBIC = class;
  TXMLPartyIdentification32_GBIC_2 = class;
  TXMLParty6Choice_GBIC_2 = class;
  TXMLPersonIdentification5_GBIC_2 = class;
  TXMLGenericPersonIdentification1_GBIC = class;
  TXMLPersonIdentificationSchemeName1Choice_GBIC = class;
  TXMLPaymentTypeInformation22_GBIC = class;
  TXMLServiceLevel8Choice_GBIC = class;
  TXMLLocalInstrument2Choice_GBIC = class;
  TXMLMandateRelatedInformation6_GBIC = class;
  TXMLAmendmentInformationDetails6_GBIC = class;
  TXMLPartyIdentification32_GBIC_3 = class;
  TXMLCashAccount16_GBIC = class;
  TXMLRemittanceInformation5_GBIC = class;
  TXMLPartyIdentification32_GBIC_4 = class;
  TXMLParty6Choice_GBIC_3 = class;
  TXMLPartyIdentification32_GBIC_5 = class;
  TXMLPostalAddress6_GBIC = class;
  TXMLCashAccount16_GBIC_2 = class;
  TXMLAccountIdentification4Choice_GBIC = class;
  TXMLPartyIdentification32_GBIC_6 = class;
  TXMLCashAccount16_GBIC_3 = class;
  TXMLMax70TextList = class;

{ TXMLDocument }

  TXMLDocument = class(TXMLNode, IXMLDocument)
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

{ TXMLPersonIdentification5 }

  TXMLPersonIdentification5 = class(TXMLNode, IXMLPersonIdentification5)
  protected
    { IXMLPersonIdentification5 }
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

{ TXMLDocument_GBIC }

  TXMLDocument_GBIC = class(TXMLDocument, IXMLDocument_GBIC)
  protected
    { IXMLDocument_GBIC }
    function Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCustomerPaymentReversalV02_GBIC }

  TXMLCustomerPaymentReversalV02_GBIC = class(TXMLCustomerPaymentReversalV02, IXMLCustomerPaymentReversalV02_GBIC)
  private
    FOrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2_GBICList;
  protected
    { IXMLCustomerPaymentReversalV02_GBIC }
    function Get_GrpHdr: IXMLGroupHeader40_GBIC;
    function Get_OrgnlGrpInf: IXMLOriginalGroupInformation22_GBIC;
    function Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2_GBICList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGroupHeader40_GBIC }

  TXMLGroupHeader40_GBIC = class(TXMLGroupHeader40, IXMLGroupHeader40_GBIC)
  protected
    { IXMLGroupHeader40_GBIC }
    function Get_MsgId: UnicodeString;
    function Get_CreDtTm: UnicodeString;
    function Get_NbOfTxs: UnicodeString;
    function Get_CtrlSum: UnicodeString;
    function Get_GrpRvsl: Boolean;
    function Get_InitgPty: IXMLPartyIdentification32_GBIC;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
    procedure Set_MsgId(Value: UnicodeString);
    procedure Set_CreDtTm(Value: UnicodeString);
    procedure Set_NbOfTxs(Value: UnicodeString);
    procedure Set_CtrlSum(Value: UnicodeString);
    procedure Set_GrpRvsl(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentification32_GBIC }

  TXMLPartyIdentification32_GBIC = class(TXMLPartyIdentification32, IXMLPartyIdentification32_GBIC)
  protected
    { IXMLPartyIdentification32_GBIC }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLParty6Choice_GBIC;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLParty6Choice_GBIC }

  TXMLParty6Choice_GBIC = class(TXMLParty6Choice, IXMLParty6Choice_GBIC)
  protected
    { IXMLParty6Choice_GBIC }
    function Get_OrgId: IXMLOrganisationIdentification4_GBIC;
    function Get_PrvtId: IXMLPersonIdentification5_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOrganisationIdentification4_GBIC }

  TXMLOrganisationIdentification4_GBIC = class(TXMLOrganisationIdentification4, IXMLOrganisationIdentification4_GBIC)
  protected
    { IXMLOrganisationIdentification4_GBIC }
    function Get_BICOrBEI: UnicodeString;
    function Get_Othr: IXMLGenericOrganisationIdentification1;
    procedure Set_BICOrBEI(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonIdentification5_GBIC }

  TXMLPersonIdentification5_GBIC = class(TXMLPersonIdentification5, IXMLPersonIdentification5_GBIC)
  protected
    { IXMLPersonIdentification5_GBIC }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBranchAndFinancialInstitutionIdentification4_GBIC }

  TXMLBranchAndFinancialInstitutionIdentification4_GBIC = class(TXMLBranchAndFinancialInstitutionIdentification4, IXMLBranchAndFinancialInstitutionIdentification4_GBIC)
  protected
    { IXMLBranchAndFinancialInstitutionIdentification4_GBIC }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentification7_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFinancialInstitutionIdentification7_GBIC }

  TXMLFinancialInstitutionIdentification7_GBIC = class(TXMLFinancialInstitutionIdentification7, IXMLFinancialInstitutionIdentification7_GBIC)
  protected
    { IXMLFinancialInstitutionIdentification7_GBIC }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
  end;

{ TXMLOriginalGroupInformation22_GBIC }

  TXMLOriginalGroupInformation22_GBIC = class(TXMLOriginalGroupInformation22, IXMLOriginalGroupInformation22_GBIC)
  protected
    { IXMLOriginalGroupInformation22_GBIC }
    function Get_OrgnlMsgId: UnicodeString;
    function Get_OrgnlMsgNmId: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC;
    procedure Set_OrgnlMsgId(Value: UnicodeString);
    procedure Set_OrgnlMsgNmId(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReversalReasonInformation6_GBIC }

  TXMLReversalReasonInformation6_GBIC = class(TXMLReversalReasonInformation6, IXMLReversalReasonInformation6_GBIC)
  protected
    { IXMLReversalReasonInformation6_GBIC }
    function Get_Rsn: IXMLReversalReason4Choice_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReversalReason4Choice_GBIC }

  TXMLReversalReason4Choice_GBIC = class(TXMLReversalReason4Choice, IXMLReversalReason4Choice_GBIC)
  protected
    { IXMLReversalReason4Choice_GBIC }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLOriginalPaymentInformation2_GBIC }

  TXMLOriginalPaymentInformation2_GBIC = class(TXMLOriginalPaymentInformation2, IXMLOriginalPaymentInformation2_GBIC)
  private
    FTxInf: IXMLPaymentTransactionInformation28_GBICList;
  protected
    { IXMLOriginalPaymentInformation2_GBIC }
    function Get_RvslPmtInfId: UnicodeString;
    function Get_OrgnlPmtInfId: UnicodeString;
    function Get_OrgnlNbOfTxs: UnicodeString;
    function Get_OrgnlCtrlSum: UnicodeString;
    function Get_BtchBookg: Boolean;
    function Get_PmtInfRvsl: Boolean;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_2;
    function Get_TxInf: IXMLPaymentTransactionInformation28_GBICList;
    procedure Set_RvslPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlPmtInfId(Value: UnicodeString);
    procedure Set_OrgnlNbOfTxs(Value: UnicodeString);
    procedure Set_OrgnlCtrlSum(Value: UnicodeString);
    procedure Set_BtchBookg(Value: Boolean);
    procedure Set_PmtInfRvsl(Value: Boolean);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOriginalPaymentInformation2_GBICList }

  TXMLOriginalPaymentInformation2_GBICList = class(TXMLNodeCollection, IXMLOriginalPaymentInformation2_GBICList)
  protected
    { IXMLOriginalPaymentInformation2_GBICList }
    function Add: IXMLOriginalPaymentInformation2_GBIC;
    function Insert(const Index: Integer): IXMLOriginalPaymentInformation2_GBIC;

    function Get_Item(Index: Integer): IXMLOriginalPaymentInformation2_GBIC;
  end;

{ TXMLReversalReasonInformation6_GBIC_2 }

  TXMLReversalReasonInformation6_GBIC_2 = class(TXMLReversalReasonInformation6, IXMLReversalReasonInformation6_GBIC_2)
  protected
    { IXMLReversalReasonInformation6_GBIC_2 }
    function Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReversalReason4Choice_GBIC_2 }

  TXMLReversalReason4Choice_GBIC_2 = class(TXMLReversalReason4Choice, IXMLReversalReason4Choice_GBIC_2)
  protected
    { IXMLReversalReason4Choice_GBIC_2 }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLPaymentTransactionInformation28_GBIC }

  TXMLPaymentTransactionInformation28_GBIC = class(TXMLPaymentTransactionInformation28, IXMLPaymentTransactionInformation28_GBIC)
  protected
    { IXMLPaymentTransactionInformation28_GBIC }
    function Get_RvslId: UnicodeString;
    function Get_OrgnlInstrId: UnicodeString;
    function Get_OrgnlEndToEndId: UnicodeString;
    function Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
    function Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
    function Get_ChrgBr: UnicodeString;
    function Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_3;
    function Get_OrgnlTxRef: IXMLOriginalTransactionReference13_GBIC;
    procedure Set_RvslId(Value: UnicodeString);
    procedure Set_OrgnlInstrId(Value: UnicodeString);
    procedure Set_OrgnlEndToEndId(Value: UnicodeString);
    procedure Set_ChrgBr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPaymentTransactionInformation28_GBICList }

  TXMLPaymentTransactionInformation28_GBICList = class(TXMLNodeCollection, IXMLPaymentTransactionInformation28_GBICList)
  protected
    { IXMLPaymentTransactionInformation28_GBICList }
    function Add: IXMLPaymentTransactionInformation28_GBIC;
    function Insert(const Index: Integer): IXMLPaymentTransactionInformation28_GBIC;

    function Get_Item(Index: Integer): IXMLPaymentTransactionInformation28_GBIC;
  end;

{ TXMLActiveOrHistoricCurrencyAndAmount_GBIC }

  TXMLActiveOrHistoricCurrencyAndAmount_GBIC = class(TXMLNode, IXMLActiveOrHistoricCurrencyAndAmount_GBIC)
  protected
    { IXMLActiveOrHistoricCurrencyAndAmount_GBIC }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
  end;

{ TXMLReversalReasonInformation6_GBIC_3 }

  TXMLReversalReasonInformation6_GBIC_3 = class(TXMLReversalReasonInformation6, IXMLReversalReasonInformation6_GBIC_3)
  protected
    { IXMLReversalReasonInformation6_GBIC_3 }
    function Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLOriginalTransactionReference13_GBIC }

  TXMLOriginalTransactionReference13_GBIC = class(TXMLOriginalTransactionReference13, IXMLOriginalTransactionReference13_GBIC)
  protected
    { IXMLOriginalTransactionReference13_GBIC }
    function Get_ReqdColltnDt: UnicodeString;
    function Get_CdtrSchmeId: IXMLPartyIdentification32_GBIC_2;
    function Get_PmtTpInf: IXMLPaymentTypeInformation22_GBIC;
    function Get_MndtRltdInf: IXMLMandateRelatedInformation6_GBIC;
    function Get_RmtInf: IXMLRemittanceInformation5_GBIC;
    function Get_UltmtDbtr: IXMLPartyIdentification32_GBIC_4;
    function Get_Dbtr: IXMLPartyIdentification32_GBIC_5;
    function Get_DbtrAcct: IXMLCashAccount16_GBIC_2;
    function Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
    function Get_Cdtr: IXMLPartyIdentification32_GBIC_6;
    function Get_CdtrAcct: IXMLCashAccount16_GBIC_3;
    function Get_UltmtCdtr: IXMLPartyIdentification32_GBIC_4;
    procedure Set_ReqdColltnDt(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentification32_GBIC_2 }

  TXMLPartyIdentification32_GBIC_2 = class(TXMLPartyIdentification32, IXMLPartyIdentification32_GBIC_2)
  protected
    { IXMLPartyIdentification32_GBIC_2 }
    function Get_Id: IXMLParty6Choice_GBIC_2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLParty6Choice_GBIC_2 }

  TXMLParty6Choice_GBIC_2 = class(TXMLParty6Choice, IXMLParty6Choice_GBIC_2)
  protected
    { IXMLParty6Choice_GBIC_2 }
    function Get_PrvtId: IXMLPersonIdentification5_GBIC_2;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonIdentification5_GBIC_2 }

  TXMLPersonIdentification5_GBIC_2 = class(TXMLPersonIdentification5, IXMLPersonIdentification5_GBIC_2)
  protected
    { IXMLPersonIdentification5_GBIC_2 }
    function Get_Othr: IXMLGenericPersonIdentification1_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenericPersonIdentification1_GBIC }

  TXMLGenericPersonIdentification1_GBIC = class(TXMLGenericPersonIdentification1, IXMLGenericPersonIdentification1_GBIC)
  protected
    { IXMLGenericPersonIdentification1_GBIC }
    function Get_Id: UnicodeString;
    function Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice_GBIC;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonIdentificationSchemeName1Choice_GBIC }

  TXMLPersonIdentificationSchemeName1Choice_GBIC = class(TXMLPersonIdentificationSchemeName1Choice, IXMLPersonIdentificationSchemeName1Choice_GBIC)
  protected
    { IXMLPersonIdentificationSchemeName1Choice_GBIC }
    function Get_Prtry: UnicodeString;
    procedure Set_Prtry(Value: UnicodeString);
  end;

{ TXMLPaymentTypeInformation22_GBIC }

  TXMLPaymentTypeInformation22_GBIC = class(TXMLPaymentTypeInformation22, IXMLPaymentTypeInformation22_GBIC)
  protected
    { IXMLPaymentTypeInformation22_GBIC }
    function Get_SvcLvl: IXMLServiceLevel8Choice_GBIC;
    function Get_LclInstrm: IXMLLocalInstrument2Choice_GBIC;
    function Get_SeqTp: UnicodeString;
    function Get_CtgyPurp: IXMLCategoryPurpose1Choice;
    procedure Set_SeqTp(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLServiceLevel8Choice_GBIC }

  TXMLServiceLevel8Choice_GBIC = class(TXMLServiceLevel8Choice, IXMLServiceLevel8Choice_GBIC)
  protected
    { IXMLServiceLevel8Choice_GBIC }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLLocalInstrument2Choice_GBIC }

  TXMLLocalInstrument2Choice_GBIC = class(TXMLLocalInstrument2Choice, IXMLLocalInstrument2Choice_GBIC)
  protected
    { IXMLLocalInstrument2Choice_GBIC }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
  end;

{ TXMLMandateRelatedInformation6_GBIC }

  TXMLMandateRelatedInformation6_GBIC = class(TXMLMandateRelatedInformation6, IXMLMandateRelatedInformation6_GBIC)
  protected
    { IXMLMandateRelatedInformation6_GBIC }
    function Get_MndtId: UnicodeString;
    function Get_DtOfSgntr: UnicodeString;
    function Get_AmdmntInd: Boolean;
    function Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6_GBIC;
    function Get_ElctrncSgntr: UnicodeString;
    procedure Set_MndtId(Value: UnicodeString);
    procedure Set_DtOfSgntr(Value: UnicodeString);
    procedure Set_AmdmntInd(Value: Boolean);
    procedure Set_ElctrncSgntr(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAmendmentInformationDetails6_GBIC }

  TXMLAmendmentInformationDetails6_GBIC = class(TXMLAmendmentInformationDetails6, IXMLAmendmentInformationDetails6_GBIC)
  protected
    { IXMLAmendmentInformationDetails6_GBIC }
    function Get_OrgnlMndtId: UnicodeString;
    function Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32_GBIC_3;
    function Get_OrgnlDbtrAcct: IXMLCashAccount16_GBIC;
    function Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
    procedure Set_OrgnlMndtId(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentification32_GBIC_3 }

  TXMLPartyIdentification32_GBIC_3 = class(TXMLPartyIdentification32, IXMLPartyIdentification32_GBIC_3)
  protected
    { IXMLPartyIdentification32_GBIC_3 }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLParty6Choice_GBIC_2;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccount16_GBIC }

  TXMLCashAccount16_GBIC = class(TXMLCashAccount16, IXMLCashAccount16_GBIC)
  protected
    { IXMLCashAccount16_GBIC }
    function Get_Id: IXMLAccountIdentification4Choice;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRemittanceInformation5_GBIC }

  TXMLRemittanceInformation5_GBIC = class(TXMLRemittanceInformation5, IXMLRemittanceInformation5_GBIC)
  protected
    { IXMLRemittanceInformation5_GBIC }
    function Get_Ustrd: UnicodeString;
    function Get_Strd: IXMLStructuredRemittanceInformation7;
    procedure Set_Ustrd(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentification32_GBIC_4 }

  TXMLPartyIdentification32_GBIC_4 = class(TXMLPartyIdentification32, IXMLPartyIdentification32_GBIC_4)
  protected
    { IXMLPartyIdentification32_GBIC_4 }
    function Get_Nm: UnicodeString;
    function Get_Id: IXMLParty6Choice_GBIC_3;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLParty6Choice_GBIC_3 }

  TXMLParty6Choice_GBIC_3 = class(TXMLParty6Choice, IXMLParty6Choice_GBIC_3)
  protected
    { IXMLParty6Choice_GBIC_3 }
    function Get_OrgId: IXMLOrganisationIdentification4_GBIC;
    function Get_PrvtId: IXMLPersonIdentification5_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPartyIdentification32_GBIC_5 }

  TXMLPartyIdentification32_GBIC_5 = class(TXMLPartyIdentification32, IXMLPartyIdentification32_GBIC_5)
  protected
    { IXMLPartyIdentification32_GBIC_5 }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddress6_GBIC;
    function Get_Id: IXMLParty6Choice_GBIC_3;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPostalAddress6_GBIC }

  TXMLPostalAddress6_GBIC = class(TXMLPostalAddress6, IXMLPostalAddress6_GBIC)
  private
    FAdrLine: IXMLMax70TextList;
  protected
    { IXMLPostalAddress6_GBIC }
    function Get_Ctry: UnicodeString;
    function Get_AdrLine: IXMLMax70TextList;
    procedure Set_Ctry(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccount16_GBIC_2 }

  TXMLCashAccount16_GBIC_2 = class(TXMLCashAccount16, IXMLCashAccount16_GBIC_2)
  protected
    { IXMLCashAccount16_GBIC_2 }
    function Get_Id: IXMLAccountIdentification4Choice_GBIC;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountIdentification4Choice_GBIC }

  TXMLAccountIdentification4Choice_GBIC = class(TXMLAccountIdentification4Choice, IXMLAccountIdentification4Choice_GBIC)
  protected
    { IXMLAccountIdentification4Choice_GBIC }
    function Get_IBAN: UnicodeString;
    procedure Set_IBAN(Value: UnicodeString);
  end;

{ TXMLPartyIdentification32_GBIC_6 }

  TXMLPartyIdentification32_GBIC_6 = class(TXMLPartyIdentification32, IXMLPartyIdentification32_GBIC_6)
  protected
    { IXMLPartyIdentification32_GBIC_6 }
    function Get_Nm: UnicodeString;
    function Get_PstlAdr: IXMLPostalAddress6_GBIC;
    procedure Set_Nm(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCashAccount16_GBIC_3 }

  TXMLCashAccount16_GBIC_3 = class(TXMLCashAccount16, IXMLCashAccount16_GBIC_3)
  protected
    { IXMLCashAccount16_GBIC_3 }
    function Get_Id: IXMLAccountIdentification4Choice_GBIC;
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
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
  TargetNamespace = 'urn:iso:std:iso:20022:tech:xsd:pain.007.001.02';

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
  RegisterChildNode('CstmrPmtRvsl', TXMLCustomerPaymentReversalV02);
  inherited;
end;

function TXMLDocument.Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02;
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

{ TXMLDocument_GBIC }

procedure TXMLDocument_GBIC.AfterConstruction;
begin
  RegisterChildNode('CstmrPmtRvsl', TXMLCustomerPaymentReversalV02_GBIC);
  inherited;
end;

function TXMLDocument_GBIC.Get_CstmrPmtRvsl: IXMLCustomerPaymentReversalV02_GBIC;
begin
  Result := ChildNodes['CstmrPmtRvsl'] as IXMLCustomerPaymentReversalV02_GBIC;
end;

{ TXMLCustomerPaymentReversalV02_GBIC }

procedure TXMLCustomerPaymentReversalV02_GBIC.AfterConstruction;
begin
  RegisterChildNode('GrpHdr', TXMLGroupHeader40_GBIC);
  RegisterChildNode('OrgnlGrpInf', TXMLOriginalGroupInformation22_GBIC);
  RegisterChildNode('OrgnlPmtInfAndRvsl', TXMLOriginalPaymentInformation2_GBIC);
  FOrgnlPmtInfAndRvsl := CreateCollection(TXMLOriginalPaymentInformation2_GBICList, IXMLOriginalPaymentInformation2_GBIC, 'OrgnlPmtInfAndRvsl') as IXMLOriginalPaymentInformation2_GBICList;
  inherited;
end;

function TXMLCustomerPaymentReversalV02_GBIC.Get_GrpHdr: IXMLGroupHeader40_GBIC;
begin
  Result := ChildNodes['GrpHdr'] as IXMLGroupHeader40_GBIC;
end;

function TXMLCustomerPaymentReversalV02_GBIC.Get_OrgnlGrpInf: IXMLOriginalGroupInformation22_GBIC;
begin
  Result := ChildNodes['OrgnlGrpInf'] as IXMLOriginalGroupInformation22_GBIC;
end;

function TXMLCustomerPaymentReversalV02_GBIC.Get_OrgnlPmtInfAndRvsl: IXMLOriginalPaymentInformation2_GBICList;
begin
  Result := FOrgnlPmtInfAndRvsl;
end;

{ TXMLGroupHeader40_GBIC }

procedure TXMLGroupHeader40_GBIC.AfterConstruction;
begin
  RegisterChildNode('InitgPty', TXMLPartyIdentification32_GBIC);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4_GBIC);
  inherited;
end;

function TXMLGroupHeader40_GBIC.Get_MsgId: UnicodeString;
begin
  Result := ChildNodes['MsgId'].Text;
end;

procedure TXMLGroupHeader40_GBIC.Set_MsgId(Value: UnicodeString);
begin
  ChildNodes['MsgId'].NodeValue := Value;
end;

function TXMLGroupHeader40_GBIC.Get_CreDtTm: UnicodeString;
begin
  Result := ChildNodes['CreDtTm'].Text;
end;

procedure TXMLGroupHeader40_GBIC.Set_CreDtTm(Value: UnicodeString);
begin
  ChildNodes['CreDtTm'].NodeValue := Value;
end;

function TXMLGroupHeader40_GBIC.Get_NbOfTxs: UnicodeString;
begin
  Result := ChildNodes['NbOfTxs'].Text;
end;

procedure TXMLGroupHeader40_GBIC.Set_NbOfTxs(Value: UnicodeString);
begin
  ChildNodes['NbOfTxs'].NodeValue := Value;
end;

function TXMLGroupHeader40_GBIC.Get_CtrlSum: UnicodeString;
begin
  Result := ChildNodes['CtrlSum'].Text;
end;

procedure TXMLGroupHeader40_GBIC.Set_CtrlSum(Value: UnicodeString);
begin
  ChildNodes['CtrlSum'].NodeValue := Value;
end;

function TXMLGroupHeader40_GBIC.Get_GrpRvsl: Boolean;
begin
  Result := ChildNodes['GrpRvsl'].NodeValue;
end;

procedure TXMLGroupHeader40_GBIC.Set_GrpRvsl(Value: Boolean);
begin
  ChildNodes['GrpRvsl'].NodeValue := Value;
end;

function TXMLGroupHeader40_GBIC.Get_InitgPty: IXMLPartyIdentification32_GBIC;
begin
  Result := ChildNodes['InitgPty'] as IXMLPartyIdentification32_GBIC;
end;

function TXMLGroupHeader40_GBIC.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
end;

{ TXMLPartyIdentification32_GBIC }

procedure TXMLPartyIdentification32_GBIC.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLParty6Choice_GBIC);
  inherited;
end;

function TXMLPartyIdentification32_GBIC.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentification32_GBIC.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentification32_GBIC.Get_Id: IXMLParty6Choice_GBIC;
begin
  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC;
end;

{ TXMLParty6Choice_GBIC }

procedure TXMLParty6Choice_GBIC.AfterConstruction;
begin
  RegisterChildNode('OrgId', TXMLOrganisationIdentification4_GBIC);
  RegisterChildNode('PrvtId', TXMLPersonIdentification5_GBIC);
  inherited;
end;

function TXMLParty6Choice_GBIC.Get_OrgId: IXMLOrganisationIdentification4_GBIC;
begin
  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentification4_GBIC;
end;

function TXMLParty6Choice_GBIC.Get_PrvtId: IXMLPersonIdentification5_GBIC;
begin
  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5_GBIC;
end;

{ TXMLOrganisationIdentification4_GBIC }

procedure TXMLOrganisationIdentification4_GBIC.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericOrganisationIdentification1);
  inherited;
end;

function TXMLOrganisationIdentification4_GBIC.Get_BICOrBEI: UnicodeString;
begin
  Result := ChildNodes['BICOrBEI'].Text;
end;

procedure TXMLOrganisationIdentification4_GBIC.Set_BICOrBEI(Value: UnicodeString);
begin
  ChildNodes['BICOrBEI'].NodeValue := Value;
end;

function TXMLOrganisationIdentification4_GBIC.Get_Othr: IXMLGenericOrganisationIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericOrganisationIdentification1;
end;

{ TXMLPersonIdentification5_GBIC }

procedure TXMLPersonIdentification5_GBIC.AfterConstruction;
begin
  RegisterChildNode('DtAndPlcOfBirth', TXMLDateAndPlaceOfBirth);
  RegisterChildNode('Othr', TXMLGenericPersonIdentification1);
  inherited;
end;

function TXMLPersonIdentification5_GBIC.Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
begin
  Result := ChildNodes['DtAndPlcOfBirth'] as IXMLDateAndPlaceOfBirth;
end;

function TXMLPersonIdentification5_GBIC.Get_Othr: IXMLGenericPersonIdentification1;
begin
  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1;
end;

{ TXMLBranchAndFinancialInstitutionIdentification4_GBIC }

procedure TXMLBranchAndFinancialInstitutionIdentification4_GBIC.AfterConstruction;
begin
  RegisterChildNode('FinInstnId', TXMLFinancialInstitutionIdentification7_GBIC);
  inherited;
end;

function TXMLBranchAndFinancialInstitutionIdentification4_GBIC.Get_FinInstnId: IXMLFinancialInstitutionIdentification7_GBIC;
begin
  Result := ChildNodes['FinInstnId'] as IXMLFinancialInstitutionIdentification7_GBIC;
end;

{ TXMLFinancialInstitutionIdentification7_GBIC }

function TXMLFinancialInstitutionIdentification7_GBIC.Get_BIC: UnicodeString;
begin
  Result := ChildNodes['BIC'].Text;
end;

procedure TXMLFinancialInstitutionIdentification7_GBIC.Set_BIC(Value: UnicodeString);
begin
  ChildNodes['BIC'].NodeValue := Value;
end;

{ TXMLOriginalGroupInformation22_GBIC }

procedure TXMLOriginalGroupInformation22_GBIC.AfterConstruction;
begin
  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6_GBIC);
  inherited;
end;

function TXMLOriginalGroupInformation22_GBIC.Get_OrgnlMsgId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMsgId'].Text;
end;

procedure TXMLOriginalGroupInformation22_GBIC.Set_OrgnlMsgId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMsgId'].NodeValue := Value;
end;

function TXMLOriginalGroupInformation22_GBIC.Get_OrgnlMsgNmId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMsgNmId'].Text;
end;

procedure TXMLOriginalGroupInformation22_GBIC.Set_OrgnlMsgNmId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMsgNmId'].NodeValue := Value;
end;

function TXMLOriginalGroupInformation22_GBIC.Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC;
begin
  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6_GBIC;
end;

{ TXMLReversalReasonInformation6_GBIC }

procedure TXMLReversalReasonInformation6_GBIC.AfterConstruction;
begin
  RegisterChildNode('Rsn', TXMLReversalReason4Choice_GBIC);
  inherited;
end;

function TXMLReversalReasonInformation6_GBIC.Get_Rsn: IXMLReversalReason4Choice_GBIC;
begin
  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice_GBIC;
end;

{ TXMLReversalReason4Choice_GBIC }

function TXMLReversalReason4Choice_GBIC.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLReversalReason4Choice_GBIC.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLOriginalPaymentInformation2_GBIC }

procedure TXMLOriginalPaymentInformation2_GBIC.AfterConstruction;
begin
  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6_GBIC_2);
  RegisterChildNode('TxInf', TXMLPaymentTransactionInformation28_GBIC);
  FTxInf := CreateCollection(TXMLPaymentTransactionInformation28_GBICList, IXMLPaymentTransactionInformation28_GBIC, 'TxInf') as IXMLPaymentTransactionInformation28_GBICList;
  inherited;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_RvslPmtInfId: UnicodeString;
begin
  Result := ChildNodes['RvslPmtInfId'].Text;
end;

procedure TXMLOriginalPaymentInformation2_GBIC.Set_RvslPmtInfId(Value: UnicodeString);
begin
  ChildNodes['RvslPmtInfId'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_OrgnlPmtInfId: UnicodeString;
begin
  Result := ChildNodes['OrgnlPmtInfId'].Text;
end;

procedure TXMLOriginalPaymentInformation2_GBIC.Set_OrgnlPmtInfId(Value: UnicodeString);
begin
  ChildNodes['OrgnlPmtInfId'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_OrgnlNbOfTxs: UnicodeString;
begin
  Result := ChildNodes['OrgnlNbOfTxs'].Text;
end;

procedure TXMLOriginalPaymentInformation2_GBIC.Set_OrgnlNbOfTxs(Value: UnicodeString);
begin
  ChildNodes['OrgnlNbOfTxs'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_OrgnlCtrlSum: UnicodeString;
begin
  Result := ChildNodes['OrgnlCtrlSum'].Text;
end;

procedure TXMLOriginalPaymentInformation2_GBIC.Set_OrgnlCtrlSum(Value: UnicodeString);
begin
  ChildNodes['OrgnlCtrlSum'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_BtchBookg: Boolean;
begin
  Result := ChildNodes['BtchBookg'].NodeValue;
end;

procedure TXMLOriginalPaymentInformation2_GBIC.Set_BtchBookg(Value: Boolean);
begin
  ChildNodes['BtchBookg'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_PmtInfRvsl: Boolean;
begin
  Result := ChildNodes['PmtInfRvsl'].NodeValue;
end;

procedure TXMLOriginalPaymentInformation2_GBIC.Set_PmtInfRvsl(Value: Boolean);
begin
  ChildNodes['PmtInfRvsl'].NodeValue := Value;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_2;
begin
  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6_GBIC_2;
end;

function TXMLOriginalPaymentInformation2_GBIC.Get_TxInf: IXMLPaymentTransactionInformation28_GBICList;
begin
  Result := FTxInf;
end;

{ TXMLOriginalPaymentInformation2_GBICList }

function TXMLOriginalPaymentInformation2_GBICList.Add: IXMLOriginalPaymentInformation2_GBIC;
begin
  Result := AddItem(-1) as IXMLOriginalPaymentInformation2_GBIC;
end;

function TXMLOriginalPaymentInformation2_GBICList.Insert(const Index: Integer): IXMLOriginalPaymentInformation2_GBIC;
begin
  Result := AddItem(Index) as IXMLOriginalPaymentInformation2_GBIC;
end;

function TXMLOriginalPaymentInformation2_GBICList.Get_Item(Index: Integer): IXMLOriginalPaymentInformation2_GBIC;
begin
  Result := List[Index] as IXMLOriginalPaymentInformation2_GBIC;
end;

{ TXMLReversalReasonInformation6_GBIC_2 }

procedure TXMLReversalReasonInformation6_GBIC_2.AfterConstruction;
begin
  RegisterChildNode('Rsn', TXMLReversalReason4Choice_GBIC_2);
  inherited;
end;

function TXMLReversalReasonInformation6_GBIC_2.Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
begin
  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice_GBIC_2;
end;

{ TXMLReversalReason4Choice_GBIC_2 }

function TXMLReversalReason4Choice_GBIC_2.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLReversalReason4Choice_GBIC_2.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLPaymentTransactionInformation28_GBIC }

procedure TXMLPaymentTransactionInformation28_GBIC.AfterConstruction;
begin
  RegisterChildNode('OrgnlInstdAmt', TXMLActiveOrHistoricCurrencyAndAmount_GBIC);
  RegisterChildNode('RvsdInstdAmt', TXMLActiveOrHistoricCurrencyAndAmount_GBIC);
  RegisterChildNode('RvslRsnInf', TXMLReversalReasonInformation6_GBIC_3);
  RegisterChildNode('OrgnlTxRef', TXMLOriginalTransactionReference13_GBIC);
  inherited;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_RvslId: UnicodeString;
begin
  Result := ChildNodes['RvslId'].Text;
end;

procedure TXMLPaymentTransactionInformation28_GBIC.Set_RvslId(Value: UnicodeString);
begin
  ChildNodes['RvslId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlInstrId: UnicodeString;
begin
  Result := ChildNodes['OrgnlInstrId'].Text;
end;

procedure TXMLPaymentTransactionInformation28_GBIC.Set_OrgnlInstrId(Value: UnicodeString);
begin
  ChildNodes['OrgnlInstrId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlEndToEndId: UnicodeString;
begin
  Result := ChildNodes['OrgnlEndToEndId'].Text;
end;

procedure TXMLPaymentTransactionInformation28_GBIC.Set_OrgnlEndToEndId(Value: UnicodeString);
begin
  ChildNodes['OrgnlEndToEndId'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
begin
  Result := ChildNodes['OrgnlInstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_RvsdInstdAmt: IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
begin
  Result := ChildNodes['RvsdInstdAmt'] as IXMLActiveOrHistoricCurrencyAndAmount_GBIC;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_ChrgBr: UnicodeString;
begin
  Result := ChildNodes['ChrgBr'].Text;
end;

procedure TXMLPaymentTransactionInformation28_GBIC.Set_ChrgBr(Value: UnicodeString);
begin
  ChildNodes['ChrgBr'].NodeValue := Value;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_RvslRsnInf: IXMLReversalReasonInformation6_GBIC_3;
begin
  Result := ChildNodes['RvslRsnInf'] as IXMLReversalReasonInformation6_GBIC_3;
end;

function TXMLPaymentTransactionInformation28_GBIC.Get_OrgnlTxRef: IXMLOriginalTransactionReference13_GBIC;
begin
  Result := ChildNodes['OrgnlTxRef'] as IXMLOriginalTransactionReference13_GBIC;
end;

{ TXMLPaymentTransactionInformation28_GBICList }

function TXMLPaymentTransactionInformation28_GBICList.Add: IXMLPaymentTransactionInformation28_GBIC;
begin
  Result := AddItem(-1) as IXMLPaymentTransactionInformation28_GBIC;
end;

function TXMLPaymentTransactionInformation28_GBICList.Insert(const Index: Integer): IXMLPaymentTransactionInformation28_GBIC;
begin
  Result := AddItem(Index) as IXMLPaymentTransactionInformation28_GBIC;
end;

function TXMLPaymentTransactionInformation28_GBICList.Get_Item(Index: Integer): IXMLPaymentTransactionInformation28_GBIC;
begin
  Result := List[Index] as IXMLPaymentTransactionInformation28_GBIC;
end;

{ TXMLActiveOrHistoricCurrencyAndAmount_GBIC }

function TXMLActiveOrHistoricCurrencyAndAmount_GBIC.Get_Ccy: UnicodeString;
begin
  Result := AttributeNodes['Ccy'].Text;
end;

procedure TXMLActiveOrHistoricCurrencyAndAmount_GBIC.Set_Ccy(Value: UnicodeString);
begin
  SetAttribute('Ccy', Value);
end;

{ TXMLReversalReasonInformation6_GBIC_3 }

procedure TXMLReversalReasonInformation6_GBIC_3.AfterConstruction;
begin
  RegisterChildNode('Rsn', TXMLReversalReason4Choice_GBIC_2);
  inherited;
end;

function TXMLReversalReasonInformation6_GBIC_3.Get_Rsn: IXMLReversalReason4Choice_GBIC_2;
begin
  Result := ChildNodes['Rsn'] as IXMLReversalReason4Choice_GBIC_2;
end;

{ TXMLOriginalTransactionReference13_GBIC }

procedure TXMLOriginalTransactionReference13_GBIC.AfterConstruction;
begin
  RegisterChildNode('CdtrSchmeId', TXMLPartyIdentification32_GBIC_2);
  RegisterChildNode('PmtTpInf', TXMLPaymentTypeInformation22_GBIC);
  RegisterChildNode('MndtRltdInf', TXMLMandateRelatedInformation6_GBIC);
  RegisterChildNode('RmtInf', TXMLRemittanceInformation5_GBIC);
  RegisterChildNode('UltmtDbtr', TXMLPartyIdentification32_GBIC_4);
  RegisterChildNode('Dbtr', TXMLPartyIdentification32_GBIC_5);
  RegisterChildNode('DbtrAcct', TXMLCashAccount16_GBIC_2);
  RegisterChildNode('DbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('CdtrAgt', TXMLBranchAndFinancialInstitutionIdentification4);
  RegisterChildNode('Cdtr', TXMLPartyIdentification32_GBIC_6);
  RegisterChildNode('CdtrAcct', TXMLCashAccount16_GBIC_3);
  RegisterChildNode('UltmtCdtr', TXMLPartyIdentification32_GBIC_4);
  inherited;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_ReqdColltnDt: UnicodeString;
begin
  Result := ChildNodes['ReqdColltnDt'].Text;
end;

procedure TXMLOriginalTransactionReference13_GBIC.Set_ReqdColltnDt(Value: UnicodeString);
begin
  ChildNodes['ReqdColltnDt'].NodeValue := Value;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_CdtrSchmeId: IXMLPartyIdentification32_GBIC_2;
begin
  Result := ChildNodes['CdtrSchmeId'] as IXMLPartyIdentification32_GBIC_2;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_PmtTpInf: IXMLPaymentTypeInformation22_GBIC;
begin
  Result := ChildNodes['PmtTpInf'] as IXMLPaymentTypeInformation22_GBIC;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_MndtRltdInf: IXMLMandateRelatedInformation6_GBIC;
begin
  Result := ChildNodes['MndtRltdInf'] as IXMLMandateRelatedInformation6_GBIC;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_RmtInf: IXMLRemittanceInformation5_GBIC;
begin
  Result := ChildNodes['RmtInf'] as IXMLRemittanceInformation5_GBIC;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_UltmtDbtr: IXMLPartyIdentification32_GBIC_4;
begin
  Result := ChildNodes['UltmtDbtr'] as IXMLPartyIdentification32_GBIC_4;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_Dbtr: IXMLPartyIdentification32_GBIC_5;
begin
  Result := ChildNodes['Dbtr'] as IXMLPartyIdentification32_GBIC_5;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_DbtrAcct: IXMLCashAccount16_GBIC_2;
begin
  Result := ChildNodes['DbtrAcct'] as IXMLCashAccount16_GBIC_2;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_DbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['DbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_CdtrAgt: IXMLBranchAndFinancialInstitutionIdentification4;
begin
  Result := ChildNodes['CdtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_Cdtr: IXMLPartyIdentification32_GBIC_6;
begin
  Result := ChildNodes['Cdtr'] as IXMLPartyIdentification32_GBIC_6;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_CdtrAcct: IXMLCashAccount16_GBIC_3;
begin
  Result := ChildNodes['CdtrAcct'] as IXMLCashAccount16_GBIC_3;
end;

function TXMLOriginalTransactionReference13_GBIC.Get_UltmtCdtr: IXMLPartyIdentification32_GBIC_4;
begin
  Result := ChildNodes['UltmtCdtr'] as IXMLPartyIdentification32_GBIC_4;
end;

{ TXMLPartyIdentification32_GBIC_2 }

procedure TXMLPartyIdentification32_GBIC_2.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLParty6Choice_GBIC_2);
  inherited;
end;

function TXMLPartyIdentification32_GBIC_2.Get_Id: IXMLParty6Choice_GBIC_2;
begin
  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_2;
end;

{ TXMLParty6Choice_GBIC_2 }

procedure TXMLParty6Choice_GBIC_2.AfterConstruction;
begin
  RegisterChildNode('PrvtId', TXMLPersonIdentification5_GBIC_2);
  inherited;
end;

function TXMLParty6Choice_GBIC_2.Get_PrvtId: IXMLPersonIdentification5_GBIC_2;
begin
  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5_GBIC_2;
end;

{ TXMLPersonIdentification5_GBIC_2 }

procedure TXMLPersonIdentification5_GBIC_2.AfterConstruction;
begin
  RegisterChildNode('Othr', TXMLGenericPersonIdentification1_GBIC);
  inherited;
end;

function TXMLPersonIdentification5_GBIC_2.Get_Othr: IXMLGenericPersonIdentification1_GBIC;
begin
  Result := ChildNodes['Othr'] as IXMLGenericPersonIdentification1_GBIC;
end;

{ TXMLGenericPersonIdentification1_GBIC }

procedure TXMLGenericPersonIdentification1_GBIC.AfterConstruction;
begin
  RegisterChildNode('SchmeNm', TXMLPersonIdentificationSchemeName1Choice_GBIC);
  inherited;
end;

function TXMLGenericPersonIdentification1_GBIC.Get_Id: UnicodeString;
begin
  Result := ChildNodes['Id'].Text;
end;

procedure TXMLGenericPersonIdentification1_GBIC.Set_Id(Value: UnicodeString);
begin
  ChildNodes['Id'].NodeValue := Value;
end;

function TXMLGenericPersonIdentification1_GBIC.Get_SchmeNm: IXMLPersonIdentificationSchemeName1Choice_GBIC;
begin
  Result := ChildNodes['SchmeNm'] as IXMLPersonIdentificationSchemeName1Choice_GBIC;
end;

{ TXMLPersonIdentificationSchemeName1Choice_GBIC }

function TXMLPersonIdentificationSchemeName1Choice_GBIC.Get_Prtry: UnicodeString;
begin
  Result := ChildNodes['Prtry'].Text;
end;

procedure TXMLPersonIdentificationSchemeName1Choice_GBIC.Set_Prtry(Value: UnicodeString);
begin
  ChildNodes['Prtry'].NodeValue := Value;
end;

{ TXMLPaymentTypeInformation22_GBIC }

procedure TXMLPaymentTypeInformation22_GBIC.AfterConstruction;
begin
  RegisterChildNode('SvcLvl', TXMLServiceLevel8Choice_GBIC);
  RegisterChildNode('LclInstrm', TXMLLocalInstrument2Choice_GBIC);
  RegisterChildNode('CtgyPurp', TXMLCategoryPurpose1Choice);
  inherited;
end;

function TXMLPaymentTypeInformation22_GBIC.Get_SvcLvl: IXMLServiceLevel8Choice_GBIC;
begin
  Result := ChildNodes['SvcLvl'] as IXMLServiceLevel8Choice_GBIC;
end;

function TXMLPaymentTypeInformation22_GBIC.Get_LclInstrm: IXMLLocalInstrument2Choice_GBIC;
begin
  Result := ChildNodes['LclInstrm'] as IXMLLocalInstrument2Choice_GBIC;
end;

function TXMLPaymentTypeInformation22_GBIC.Get_SeqTp: UnicodeString;
begin
  Result := ChildNodes['SeqTp'].Text;
end;

procedure TXMLPaymentTypeInformation22_GBIC.Set_SeqTp(Value: UnicodeString);
begin
  ChildNodes['SeqTp'].NodeValue := Value;
end;

function TXMLPaymentTypeInformation22_GBIC.Get_CtgyPurp: IXMLCategoryPurpose1Choice;
begin
  Result := ChildNodes['CtgyPurp'] as IXMLCategoryPurpose1Choice;
end;

{ TXMLServiceLevel8Choice_GBIC }

function TXMLServiceLevel8Choice_GBIC.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLServiceLevel8Choice_GBIC.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLLocalInstrument2Choice_GBIC }

function TXMLLocalInstrument2Choice_GBIC.Get_Cd: UnicodeString;
begin
  Result := ChildNodes['Cd'].Text;
end;

procedure TXMLLocalInstrument2Choice_GBIC.Set_Cd(Value: UnicodeString);
begin
  ChildNodes['Cd'].NodeValue := Value;
end;

{ TXMLMandateRelatedInformation6_GBIC }

procedure TXMLMandateRelatedInformation6_GBIC.AfterConstruction;
begin
  RegisterChildNode('AmdmntInfDtls', TXMLAmendmentInformationDetails6_GBIC);
  inherited;
end;

function TXMLMandateRelatedInformation6_GBIC.Get_MndtId: UnicodeString;
begin
  Result := ChildNodes['MndtId'].Text;
end;

procedure TXMLMandateRelatedInformation6_GBIC.Set_MndtId(Value: UnicodeString);
begin
  ChildNodes['MndtId'].NodeValue := Value;
end;

function TXMLMandateRelatedInformation6_GBIC.Get_DtOfSgntr: UnicodeString;
begin
  Result := ChildNodes['DtOfSgntr'].Text;
end;

procedure TXMLMandateRelatedInformation6_GBIC.Set_DtOfSgntr(Value: UnicodeString);
begin
  ChildNodes['DtOfSgntr'].NodeValue := Value;
end;

function TXMLMandateRelatedInformation6_GBIC.Get_AmdmntInd: Boolean;
begin
  Result := ChildNodes['AmdmntInd'].NodeValue;
end;

procedure TXMLMandateRelatedInformation6_GBIC.Set_AmdmntInd(Value: Boolean);
begin
  ChildNodes['AmdmntInd'].NodeValue := Value;
end;

function TXMLMandateRelatedInformation6_GBIC.Get_AmdmntInfDtls: IXMLAmendmentInformationDetails6_GBIC;
begin
  Result := ChildNodes['AmdmntInfDtls'] as IXMLAmendmentInformationDetails6_GBIC;
end;

function TXMLMandateRelatedInformation6_GBIC.Get_ElctrncSgntr: UnicodeString;
begin
  Result := ChildNodes['ElctrncSgntr'].Text;
end;

procedure TXMLMandateRelatedInformation6_GBIC.Set_ElctrncSgntr(Value: UnicodeString);
begin
  ChildNodes['ElctrncSgntr'].NodeValue := Value;
end;

{ TXMLAmendmentInformationDetails6_GBIC }

procedure TXMLAmendmentInformationDetails6_GBIC.AfterConstruction;
begin
  RegisterChildNode('OrgnlCdtrSchmeId', TXMLPartyIdentification32_GBIC_3);
  RegisterChildNode('OrgnlDbtrAcct', TXMLCashAccount16_GBIC);
  RegisterChildNode('OrgnlDbtrAgt', TXMLBranchAndFinancialInstitutionIdentification4_GBIC);
  inherited;
end;

function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlMndtId: UnicodeString;
begin
  Result := ChildNodes['OrgnlMndtId'].Text;
end;

procedure TXMLAmendmentInformationDetails6_GBIC.Set_OrgnlMndtId(Value: UnicodeString);
begin
  ChildNodes['OrgnlMndtId'].NodeValue := Value;
end;

function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlCdtrSchmeId: IXMLPartyIdentification32_GBIC_3;
begin
  Result := ChildNodes['OrgnlCdtrSchmeId'] as IXMLPartyIdentification32_GBIC_3;
end;

function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlDbtrAcct: IXMLCashAccount16_GBIC;
begin
  Result := ChildNodes['OrgnlDbtrAcct'] as IXMLCashAccount16_GBIC;
end;

function TXMLAmendmentInformationDetails6_GBIC.Get_OrgnlDbtrAgt: IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
begin
  Result := ChildNodes['OrgnlDbtrAgt'] as IXMLBranchAndFinancialInstitutionIdentification4_GBIC;
end;

{ TXMLPartyIdentification32_GBIC_3 }

procedure TXMLPartyIdentification32_GBIC_3.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLParty6Choice_GBIC_2);
  inherited;
end;

function TXMLPartyIdentification32_GBIC_3.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentification32_GBIC_3.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentification32_GBIC_3.Get_Id: IXMLParty6Choice_GBIC_2;
begin
  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_2;
end;

{ TXMLCashAccount16_GBIC }

procedure TXMLCashAccount16_GBIC.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentification4Choice);
  inherited;
end;

function TXMLCashAccount16_GBIC.Get_Id: IXMLAccountIdentification4Choice;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice;
end;

{ TXMLRemittanceInformation5_GBIC }

procedure TXMLRemittanceInformation5_GBIC.AfterConstruction;
begin
  RegisterChildNode('Strd', TXMLStructuredRemittanceInformation7);
  inherited;
end;

function TXMLRemittanceInformation5_GBIC.Get_Ustrd: UnicodeString;
begin
  Result := ChildNodes['Ustrd'].Text;
end;

procedure TXMLRemittanceInformation5_GBIC.Set_Ustrd(Value: UnicodeString);
begin
  ChildNodes['Ustrd'].NodeValue := Value;
end;

function TXMLRemittanceInformation5_GBIC.Get_Strd: IXMLStructuredRemittanceInformation7;
begin
  Result := ChildNodes['Strd'] as IXMLStructuredRemittanceInformation7;
end;

{ TXMLPartyIdentification32_GBIC_4 }

procedure TXMLPartyIdentification32_GBIC_4.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLParty6Choice_GBIC_3);
  inherited;
end;

function TXMLPartyIdentification32_GBIC_4.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentification32_GBIC_4.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentification32_GBIC_4.Get_Id: IXMLParty6Choice_GBIC_3;
begin
  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_3;
end;

{ TXMLParty6Choice_GBIC_3 }

procedure TXMLParty6Choice_GBIC_3.AfterConstruction;
begin
  RegisterChildNode('OrgId', TXMLOrganisationIdentification4_GBIC);
  RegisterChildNode('PrvtId', TXMLPersonIdentification5_GBIC);
  inherited;
end;

function TXMLParty6Choice_GBIC_3.Get_OrgId: IXMLOrganisationIdentification4_GBIC;
begin
  Result := ChildNodes['OrgId'] as IXMLOrganisationIdentification4_GBIC;
end;

function TXMLParty6Choice_GBIC_3.Get_PrvtId: IXMLPersonIdentification5_GBIC;
begin
  Result := ChildNodes['PrvtId'] as IXMLPersonIdentification5_GBIC;
end;

{ TXMLPartyIdentification32_GBIC_5 }

procedure TXMLPartyIdentification32_GBIC_5.AfterConstruction;
begin
  RegisterChildNode('PstlAdr', TXMLPostalAddress6_GBIC);
  RegisterChildNode('Id', TXMLParty6Choice_GBIC_3);
  inherited;
end;

function TXMLPartyIdentification32_GBIC_5.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentification32_GBIC_5.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentification32_GBIC_5.Get_PstlAdr: IXMLPostalAddress6_GBIC;
begin
  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6_GBIC;
end;

function TXMLPartyIdentification32_GBIC_5.Get_Id: IXMLParty6Choice_GBIC_3;
begin
  Result := ChildNodes['Id'] as IXMLParty6Choice_GBIC_3;
end;

{ TXMLPostalAddress6_GBIC }

procedure TXMLPostalAddress6_GBIC.AfterConstruction;
begin
  FAdrLine := CreateCollection(TXMLMax70TextList, IXMLNode, 'AdrLine') as IXMLMax70TextList;
  inherited;
end;

function TXMLPostalAddress6_GBIC.Get_Ctry: UnicodeString;
begin
  Result := ChildNodes['Ctry'].Text;
end;

procedure TXMLPostalAddress6_GBIC.Set_Ctry(Value: UnicodeString);
begin
  ChildNodes['Ctry'].NodeValue := Value;
end;

function TXMLPostalAddress6_GBIC.Get_AdrLine: IXMLMax70TextList;
begin
  Result := FAdrLine;
end;

{ TXMLCashAccount16_GBIC_2 }

procedure TXMLCashAccount16_GBIC_2.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentification4Choice_GBIC);
  inherited;
end;

function TXMLCashAccount16_GBIC_2.Get_Id: IXMLAccountIdentification4Choice_GBIC;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice_GBIC;
end;

{ TXMLAccountIdentification4Choice_GBIC }

function TXMLAccountIdentification4Choice_GBIC.Get_IBAN: UnicodeString;
begin
  Result := ChildNodes['IBAN'].Text;
end;

procedure TXMLAccountIdentification4Choice_GBIC.Set_IBAN(Value: UnicodeString);
begin
  ChildNodes['IBAN'].NodeValue := Value;
end;

{ TXMLPartyIdentification32_GBIC_6 }

procedure TXMLPartyIdentification32_GBIC_6.AfterConstruction;
begin
  RegisterChildNode('PstlAdr', TXMLPostalAddress6_GBIC);
  inherited;
end;

function TXMLPartyIdentification32_GBIC_6.Get_Nm: UnicodeString;
begin
  Result := ChildNodes['Nm'].Text;
end;

procedure TXMLPartyIdentification32_GBIC_6.Set_Nm(Value: UnicodeString);
begin
  ChildNodes['Nm'].NodeValue := Value;
end;

function TXMLPartyIdentification32_GBIC_6.Get_PstlAdr: IXMLPostalAddress6_GBIC;
begin
  Result := ChildNodes['PstlAdr'] as IXMLPostalAddress6_GBIC;
end;

{ TXMLCashAccount16_GBIC_3 }

procedure TXMLCashAccount16_GBIC_3.AfterConstruction;
begin
  RegisterChildNode('Id', TXMLAccountIdentification4Choice_GBIC);
  inherited;
end;

function TXMLCashAccount16_GBIC_3.Get_Id: IXMLAccountIdentification4Choice_GBIC;
begin
  Result := ChildNodes['Id'] as IXMLAccountIdentification4Choice_GBIC;
end;

function TXMLCashAccount16_GBIC_3.Get_Ccy: UnicodeString;
begin
  Result := ChildNodes['Ccy'].Text;
end;

procedure TXMLCashAccount16_GBIC_3.Set_Ccy(Value: UnicodeString);
begin
  ChildNodes['Ccy'].NodeValue := Value;
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