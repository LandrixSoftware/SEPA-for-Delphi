
{*********************************************************************************************************************}
{                                                                                                                     }
{                                                  XML-Datenbindung                                                   }
{                                                                                                                     }
{         Generiert am: 27.03.2018 11:49:44                                                                           }
{       Generiert von: D:\projekte\src_lnxa6_3thParty\_git_SEPA-for-Delphi\Specification\pain.008.001.02_GBIC_2.xsd   }
{                                                                                                                     }
{*********************************************************************************************************************}

unit pain00800102_GBIC_2;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward-Deklarationen }

  IXMLDocument = interface;
  IXMLCustomerDirectDebitInitiationV02 = interface;
  IXMLGroupHeaderSDD = interface;
  IXMLPartyIdentificationSEPA1 = interface;
  IXMLPartySEPAChoice = interface;
  IXMLOrganisationIdentificationSEPAChoice = interface;
  IXMLGenericOrganisationIdentification1 = interface;
  IXMLOrganisationIdentificationSchemeName1Choice = interface;
  IXMLPersonIdentificationSEPA1Choice = interface;
  IXMLDateAndPlaceOfBirth = interface;
  IXMLGenericPersonIdentification1 = interface;
  IXMLPersonIdentificationSchemeName1Choice = interface;
  IXMLPaymentInstructionInformationSDD = interface;
  IXMLPaymentInstructionInformationSDDList = interface;
  IXMLPaymentTypeInformationSDD = interface;
  IXMLServiceLevel = interface;
  IXMLLocalInstrumentSEPA = interface;
  IXMLCategoryPurposeSEPA = interface;
  IXMLPartyIdentificationSEPA5 = interface;
  IXMLPostalAddressSEPA = interface;
  IXMLCashAccountSEPA1 = interface;
  IXMLAccountIdentificationSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA3 = interface;
  IXMLFinancialInstitutionIdentificationSEPA3 = interface;
  IXMLOthrIdentification = interface;
  IXMLPartyIdentificationSEPA3 = interface;
  IXMLPartySEPA2 = interface;
  IXMLPersonIdentificationSEPA2 = interface;
  IXMLRestrictedPersonIdentificationSEPA = interface;
  IXMLRestrictedPersonIdentificationSchemeNameSEPA = interface;
  IXMLDirectDebitTransactionInformationSDD = interface;
  IXMLDirectDebitTransactionInformationSDDList = interface;
  IXMLPaymentIdentificationSEPA = interface;
  IXMLActiveOrHistoricCurrencyAndAmountSEPA = interface;
  IXMLDirectDebitTransactionSDD = interface;
  IXMLMandateRelatedInformationSDD = interface;
  IXMLAmendmentInformationDetailsSDD = interface;
  IXMLPartyIdentificationSEPA4 = interface;
  IXMLCashAccountSEPAMandate = interface;
  IXMLAccountIdentificationSEPAMandate = interface;
  IXMLGenericAccountIdentificationSEPA = interface;
  IXMLBranchAndFinancialInstitutionIdentificationSEPA2 = interface;
  IXMLFinancialInstitutionIdentificationSEPA2 = interface;
  IXMLPartyIdentificationSEPA2 = interface;
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

{ IXMLPartyIdentificationSEPA1 }

  IXMLPartyIdentificationSEPA1 = interface(IXMLNode)
    ['{6E18B998-3974-47A7-80E9-24DD707FCDBA}']
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
    ['{EAD3BEBB-EBAB-4A4A-8504-DCEB7BEBC6D5}']
    { Eigenschaftszugriff }
    function Get_OrgId: IXMLOrganisationIdentificationSEPAChoice;
    function Get_PrvtId: IXMLPersonIdentificationSEPA1Choice;
    { Methoden & Eigenschaften }
    property OrgId: IXMLOrganisationIdentificationSEPAChoice read Get_OrgId;
    property PrvtId: IXMLPersonIdentificationSEPA1Choice read Get_PrvtId;
  end;

{ IXMLOrganisationIdentificationSEPAChoice }

  IXMLOrganisationIdentificationSEPAChoice = interface(IXMLNode)
    ['{E11875D2-10E3-4A37-932A-D81F578FE577}']
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
    ['{A4230CC5-A0EB-4185-B3B6-BF424EECC636}']
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
    ['{EAF84872-ABA7-4335-9AE7-2A9E7467AD66}']
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
    ['{32BC15F5-1E6D-41EE-A173-1EA284636040}']
    { Eigenschaftszugriff }
    function Get_DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth;
    function Get_Othr: IXMLGenericPersonIdentification1;
    { Methoden & Eigenschaften }
    property DtAndPlcOfBirth: IXMLDateAndPlaceOfBirth read Get_DtAndPlcOfBirth;
    property Othr: IXMLGenericPersonIdentification1 read Get_Othr;
  end;

{ IXMLDateAndPlaceOfBirth }

  IXMLDateAndPlaceOfBirth = interface(IXMLNode)
    ['{41C82523-4EDC-4AC3-813B-2CE0D9A7B329}']
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
    ['{6F470AF2-FD06-4968-9889-10ABD6E499D4}']
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
    ['{362243BD-109B-48CD-9A0F-EB0924139307}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    function Get_Prtry: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
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

{ IXMLServiceLevel }

  IXMLServiceLevel = interface(IXMLNode)
    ['{82F0EDF4-CF3B-4888-A18F-592EA5BF6701}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLLocalInstrumentSEPA }

  IXMLLocalInstrumentSEPA = interface(IXMLNode)
    ['{D35093B6-F1EC-4D8A-902D-BE4FD39087A2}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLCategoryPurposeSEPA }

  IXMLCategoryPurposeSEPA = interface(IXMLNode)
    ['{9486156C-1341-43D4-BEB8-9923C9FD9123}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
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

{ IXMLPostalAddressSEPA }

  IXMLPostalAddressSEPA = interface(IXMLNode)
    ['{5E843847-3D44-4EB1-9F66-D9593D8B25DE}']
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
    ['{23229E3B-3ED3-43E6-B01F-279FFB03D5D8}']
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
    ['{C005300B-050E-4609-A941-F9862051B559}']
    { Eigenschaftszugriff }
    function Get_IBAN: UnicodeString;
    procedure Set_IBAN(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property IBAN: UnicodeString read Get_IBAN write Set_IBAN;
  end;

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA3 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA3 = interface(IXMLNode)
    ['{96ED8D5B-B61F-4484-9979-43870B698E20}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA3 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA3 }

  IXMLFinancialInstitutionIdentificationSEPA3 = interface(IXMLNode)
    ['{0B63C85E-CF26-46EE-93AD-F9C298AF694B}']
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
    ['{25CAADF0-C7DF-4357-AED3-7378BB0776D6}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLPartyIdentificationSEPA3 }

  IXMLPartyIdentificationSEPA3 = interface(IXMLNode)
    ['{9BC61F49-4370-4AFD-A840-57B3B309067F}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLPartySEPA2;
    { Methoden & Eigenschaften }
    property Id: IXMLPartySEPA2 read Get_Id;
  end;

{ IXMLPartySEPA2 }

  IXMLPartySEPA2 = interface(IXMLNode)
    ['{E5C63EAB-6A37-4A4A-9610-D08DB915CCA9}']
    { Eigenschaftszugriff }
    function Get_PrvtId: IXMLPersonIdentificationSEPA2;
    { Methoden & Eigenschaften }
    property PrvtId: IXMLPersonIdentificationSEPA2 read Get_PrvtId;
  end;

{ IXMLPersonIdentificationSEPA2 }

  IXMLPersonIdentificationSEPA2 = interface(IXMLNode)
    ['{655F4E6B-3A7C-4110-B18E-7EB05DA749BE}']
    { Eigenschaftszugriff }
    function Get_Othr: IXMLRestrictedPersonIdentificationSEPA;
    { Methoden & Eigenschaften }
    property Othr: IXMLRestrictedPersonIdentificationSEPA read Get_Othr;
  end;

{ IXMLRestrictedPersonIdentificationSEPA }

  IXMLRestrictedPersonIdentificationSEPA = interface(IXMLNode)
    ['{1844F545-0ED5-4F47-BEC8-F7A91DA08B72}']
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
    ['{23B8A9C4-2FD1-4A28-87D5-F3750D1979A6}']
    { Eigenschaftszugriff }
    function Get_Prtry: UnicodeString;
    procedure Set_Prtry(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Prtry: UnicodeString read Get_Prtry write Set_Prtry;
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

{ IXMLPaymentIdentificationSEPA }

  IXMLPaymentIdentificationSEPA = interface(IXMLNode)
    ['{E1856B54-4DF2-4033-BE64-9E51FCC435AD}']
    { Eigenschaftszugriff }
    function Get_InstrId: UnicodeString;
    function Get_EndToEndId: UnicodeString;
    procedure Set_InstrId(Value: UnicodeString);
    procedure Set_EndToEndId(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property InstrId: UnicodeString read Get_InstrId write Set_InstrId;
    property EndToEndId: UnicodeString read Get_EndToEndId write Set_EndToEndId;
  end;

{ IXMLActiveOrHistoricCurrencyAndAmountSEPA }

  IXMLActiveOrHistoricCurrencyAndAmountSEPA = interface(IXMLNode)
    ['{34FFA9DF-3442-4061-BDAD-9038F4BAE449}']
    { Eigenschaftszugriff }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Ccy: UnicodeString read Get_Ccy write Set_Ccy;
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

{ IXMLPartyIdentificationSEPA4 }

  IXMLPartyIdentificationSEPA4 = interface(IXMLNode)
    ['{C3C8F6FC-1129-4FA6-8CED-6B5F13337C6B}']
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
    ['{4F3EFCE8-FA83-447F-BA7D-D6D3E7B93898}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentificationSEPAMandate;
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentificationSEPAMandate read Get_Id;
  end;

{ IXMLAccountIdentificationSEPAMandate }

  IXMLAccountIdentificationSEPAMandate = interface(IXMLNode)
    ['{0EEB2704-0709-4C20-A58E-874FAA19F055}']
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
    ['{81CE745E-719D-4ACD-89BB-A7CDFF3CA839}']
    { Eigenschaftszugriff }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLBranchAndFinancialInstitutionIdentificationSEPA2 }

  IXMLBranchAndFinancialInstitutionIdentificationSEPA2 = interface(IXMLNode)
    ['{5603ABC3-7F59-41F7-891C-2F3FCE1906AA}']
    { Eigenschaftszugriff }
    function Get_FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2;
    { Methoden & Eigenschaften }
    property FinInstnId: IXMLFinancialInstitutionIdentificationSEPA2 read Get_FinInstnId;
  end;

{ IXMLFinancialInstitutionIdentificationSEPA2 }

  IXMLFinancialInstitutionIdentificationSEPA2 = interface(IXMLNode)
    ['{C48EA871-677A-4DAA-A047-2ECF59647A06}']
    { Eigenschaftszugriff }
    function Get_BIC: UnicodeString;
    procedure Set_BIC(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property BIC: UnicodeString read Get_BIC write Set_BIC;
  end;

{ IXMLPartyIdentificationSEPA2 }

  IXMLPartyIdentificationSEPA2 = interface(IXMLNode)
    ['{35B31250-4D2F-4DE3-8C4D-C3BF612502B5}']
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

{ IXMLCashAccountSEPA2 }

  IXMLCashAccountSEPA2 = interface(IXMLNode)
    ['{47219F08-E344-4853-A4FA-89AA50C2A99D}']
    { Eigenschaftszugriff }
    function Get_Id: IXMLAccountIdentificationSEPA;
    { Methoden & Eigenschaften }
    property Id: IXMLAccountIdentificationSEPA read Get_Id;
  end;

{ IXMLPurposeSEPA }

  IXMLPurposeSEPA = interface(IXMLNode)
    ['{1A67F3EA-DF09-4A19-B423-19D63CCB97E3}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLRemittanceInformationSEPA1Choice }

  IXMLRemittanceInformationSEPA1Choice = interface(IXMLNode)
    ['{2818CD31-D167-4706-9DEE-519EE9B6A28E}']
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
    ['{23768F95-D03A-4150-AFED-677F7ABD9F64}']
    { Eigenschaftszugriff }
    function Get_CdtrRefInf: IXMLCreditorReferenceInformationSEPA1;
    { Methoden & Eigenschaften }
    property CdtrRefInf: IXMLCreditorReferenceInformationSEPA1 read Get_CdtrRefInf;
  end;

{ IXMLCreditorReferenceInformationSEPA1 }

  IXMLCreditorReferenceInformationSEPA1 = interface(IXMLNode)
    ['{F772A404-4417-47A8-9336-2B206C4A8CFF}']
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
    ['{04828409-8843-4DFA-9831-12CB2719B094}']
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
    ['{96EFE4A3-4929-4B8D-9F0E-69C68F2C3F12}']
    { Eigenschaftszugriff }
    function Get_Cd: UnicodeString;
    procedure Set_Cd(Value: UnicodeString);
    { Methoden & Eigenschaften }
    property Cd: UnicodeString read Get_Cd write Set_Cd;
  end;

{ IXMLMax70TextList }

  IXMLMax70TextList = interface(IXMLNodeCollection)
    ['{F5047201-DD74-4E3F-A2C8-5F9CE28CBF3A}']
    { Methoden & Eigenschaften }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward-Deklarationen }

  TXMLDocument = class;
  TXMLCustomerDirectDebitInitiationV02 = class;
  TXMLGroupHeaderSDD = class;
  TXMLPartyIdentificationSEPA1 = class;
  TXMLPartySEPAChoice = class;
  TXMLOrganisationIdentificationSEPAChoice = class;
  TXMLGenericOrganisationIdentification1 = class;
  TXMLOrganisationIdentificationSchemeName1Choice = class;
  TXMLPersonIdentificationSEPA1Choice = class;
  TXMLDateAndPlaceOfBirth = class;
  TXMLGenericPersonIdentification1 = class;
  TXMLPersonIdentificationSchemeName1Choice = class;
  TXMLPaymentInstructionInformationSDD = class;
  TXMLPaymentInstructionInformationSDDList = class;
  TXMLPaymentTypeInformationSDD = class;
  TXMLServiceLevel = class;
  TXMLLocalInstrumentSEPA = class;
  TXMLCategoryPurposeSEPA = class;
  TXMLPartyIdentificationSEPA5 = class;
  TXMLPostalAddressSEPA = class;
  TXMLCashAccountSEPA1 = class;
  TXMLAccountIdentificationSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA3 = class;
  TXMLFinancialInstitutionIdentificationSEPA3 = class;
  TXMLOthrIdentification = class;
  TXMLPartyIdentificationSEPA3 = class;
  TXMLPartySEPA2 = class;
  TXMLPersonIdentificationSEPA2 = class;
  TXMLRestrictedPersonIdentificationSEPA = class;
  TXMLRestrictedPersonIdentificationSchemeNameSEPA = class;
  TXMLDirectDebitTransactionInformationSDD = class;
  TXMLDirectDebitTransactionInformationSDDList = class;
  TXMLPaymentIdentificationSEPA = class;
  TXMLActiveOrHistoricCurrencyAndAmountSEPA = class;
  TXMLDirectDebitTransactionSDD = class;
  TXMLMandateRelatedInformationSDD = class;
  TXMLAmendmentInformationDetailsSDD = class;
  TXMLPartyIdentificationSEPA4 = class;
  TXMLCashAccountSEPAMandate = class;
  TXMLAccountIdentificationSEPAMandate = class;
  TXMLGenericAccountIdentificationSEPA = class;
  TXMLBranchAndFinancialInstitutionIdentificationSEPA2 = class;
  TXMLFinancialInstitutionIdentificationSEPA2 = class;
  TXMLPartyIdentificationSEPA2 = class;
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

{ TXMLPaymentIdentificationSEPA }

  TXMLPaymentIdentificationSEPA = class(TXMLNode, IXMLPaymentIdentificationSEPA)
  protected
    { IXMLPaymentIdentificationSEPA }
    function Get_InstrId: UnicodeString;
    function Get_EndToEndId: UnicodeString;
    procedure Set_InstrId(Value: UnicodeString);
    procedure Set_EndToEndId(Value: UnicodeString);
  end;

{ TXMLActiveOrHistoricCurrencyAndAmountSEPA }

  TXMLActiveOrHistoricCurrencyAndAmountSEPA = class(TXMLNode, IXMLActiveOrHistoricCurrencyAndAmountSEPA)
  protected
    { IXMLActiveOrHistoricCurrencyAndAmountSEPA }
    function Get_Ccy: UnicodeString;
    procedure Set_Ccy(Value: UnicodeString);
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
  TargetNamespace = 'urn:iso:std:iso:20022:tech:xsd:pain.008.001.02';

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
  RegisterChildNode('CstmrDrctDbtInitn', TXMLCustomerDirectDebitInitiationV02);
  inherited;
end;

function TXMLDocument.Get_CstmrDrctDbtInitn: IXMLCustomerDirectDebitInitiationV02;
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

{ TXMLActiveOrHistoricCurrencyAndAmountSEPA }

function TXMLActiveOrHistoricCurrencyAndAmountSEPA.Get_Ccy: UnicodeString;
begin
  Result := AttributeNodes['Ccy'].Text;
end;

procedure TXMLActiveOrHistoricCurrencyAndAmountSEPA.Set_Ccy(Value: UnicodeString);
begin
  SetAttribute('Ccy', Value);
end;

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