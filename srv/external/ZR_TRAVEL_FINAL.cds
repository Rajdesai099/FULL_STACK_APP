/* checksum : 9d754d24daff73279c6088ec9be4ed29 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx pdf'
service ZR_TRAVEL_FINAL {};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.deletable.path : 'Delete_mc'
@sap.updatable.path : 'Update_mc'
@sap.label : 'Travel Detail'
entity ZR_TRAVEL_FINAL.zr_travel {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  @sap.updatable : 'false'
  key TravelUuid : UUID not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Activate_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Discard_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Prepare_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Resume_ac : Boolean;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Delete_mc : Boolean;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Update_mc : Boolean;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  carpng : String(120);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Travel ID'
  @sap.quickinfo : 'Flight Reference Scenario: Travel ID'
  @sap.value.list : 'standard'
  TravelId : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Agency ID'
  @sap.quickinfo : 'Flight Reference Scenario: Agency ID'
  @sap.value.list : 'standard'
  AgencyId : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Customer ID'
  @sap.quickinfo : 'Flight Reference Scenario: Customer ID'
  @sap.value.list : 'standard'
  CustomerId : String(6);
  @sap.display.format : 'Date'
  @sap.label : 'Starting Date'
  @sap.quickinfo : 'Flight Reference Scenario: Start Date'
  BeginDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.quickinfo : 'Flight Reference Scenario: End Date'
  EndDate : Date;
  @sap.label : 'Booking Fee'
  @sap.quickinfo : 'Flight Reference Scenario: Booking Fee'
  BookingFee : Decimal(17, 3);
  @sap.unit : 'CurrencyCode'
  @sap.variable.scale : 'true'
  @sap.label : 'Total Price'
  @sap.quickinfo : 'Flight Reference Scenario: Total Price'
  TotalPrice : Decimal(16, 3);
  @sap.label : 'Currency Code'
  @sap.quickinfo : 'Flight Reference Scenario: Currency Code'
  @sap.semantics : 'currency-code'
  CurrencyCode : String(5);
  @odata.Type : 'Edm.Byte'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StatusCriticality : Integer;
  StatusText : String(10);
  @sap.label : 'Description'
  @sap.quickinfo : 'Flight Reference Scenario: Description'
  Description : String(1024);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'Created By User'
  LocalCreatedBy : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Created On'
  @sap.quickinfo : 'Creation Date Time'
  LocalCreatedAt : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Local Instance Last Changed By User'
  LocalLastChangedBy : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Last Change Date Time'
  LastChangedAt : Timestamp;
} actions {
  action Activate() returns ZR_TRAVEL_FINAL.DummyFunctionImportResult;
  action Discard() returns ZR_TRAVEL_FINAL.DummyFunctionImportResult;
  action Edit() returns ZR_TRAVEL_FINAL.DummyFunctionImportResult;
  action Prepare() returns ZR_TRAVEL_FINAL.DummyFunctionImportResult;
  action Resume() returns ZR_TRAVEL_FINAL.DummyFunctionImportResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'travel data join with booking data'
@sap.value.list : 'true'
entity ZR_TRAVEL_FINAL.zsaitravel_joincds {
  @sap.label : 'UUID'
  @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key uuid : UUID not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Travel ID'
  @sap.quickinfo : 'Flight Reference Scenario: Travel ID'
  key travelid : String(8) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Booking Number'
  @sap.quickinfo : 'Flight Reference Scenario: Booking ID'
  key bookingid : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Agency ID'
  @sap.quickinfo : 'Flight Reference Scenario: Agency ID'
  agency : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Customer ID'
  @sap.quickinfo : 'Flight Reference Scenario: Customer ID'
  customerid : String(6);
  @sap.label : 'First Name'
  @sap.quickinfo : 'Flight Reference Scenario: First Name'
  travellername : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  travellercountry : String(3);
  status : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__Currencies {
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  key CurrencyCode : String(5) not null;
  @sap.label : 'ISO code'
  ISOCode : String(3) not null;
  @sap.label : 'Short text'
  Text : String(15) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimals'
  DecimalPlaces : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__UnitsOfMeasure {
  @sap.label : 'Internal UoM'
  @sap.semantics : 'unit-of-measure'
  key UnitCode : String(3) not null;
  @sap.label : 'ISO Code'
  ISOCode : String(3) not null;
  @sap.label : 'Commercial'
  ExternalCode : String(3) not null;
  @sap.label : 'Meas. Unit Text'
  Text : String(30) not null;
  @sap.label : 'Decimal Places'
  DecimalPlaces : Integer;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__MyDocumentDescriptions {
  @sap.label : 'UUID'
  key Id : UUID not null;
  CreatedBy : String(12) not null;
  @odata.Type : 'Edm.DateTime'
  @sap.label : 'Time Stamp'
  CreatedAt : DateTime not null;
  FileName : String(256) not null;
  Title : String(256) not null;
  @cds.ambiguous : 'missing on condition?'
  Format : Association to ZR_TRAVEL_FINAL.SAP__FormatSet on Format.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  TableColumns : Association to many ZR_TRAVEL_FINAL.SAP__TableColumnsSet on TableColumns.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  CoverPage : Association to many ZR_TRAVEL_FINAL.SAP__CoverPageSet on CoverPage.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  Signature : Association to ZR_TRAVEL_FINAL.SAP__SignatureSet on Signature.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  PDFStandard : Association to ZR_TRAVEL_FINAL.SAP__PDFStandardSet on PDFStandard.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  Hierarchy : Association to ZR_TRAVEL_FINAL.SAP__HierarchySet on Hierarchy.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  Header : Association to ZR_TRAVEL_FINAL.SAP__PDFHeaderSet on Header.Id = Id;
  @cds.ambiguous : 'missing on condition?'
  Footer : Association to ZR_TRAVEL_FINAL.SAP__PDFFooterSet on Footer.Id = Id;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__FormatSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  FitToPage : ZR_TRAVEL_FINAL.SAP__FitToPage not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FontSize : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Orientation : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PaperSize : String(10) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BorderSize : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarginSize : Integer not null;
  @sap.label : 'Font Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FontName : String(255) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Padding : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__PDFStandardSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  UsePDFAConformance : Boolean not null;
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoEnableAccessibility : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__TableColumnsSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Header : String(256) not null;
  Format : ZR_TRAVEL_FINAL.SAP__TableColumnFormat not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  HorizontalAlignment : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__CoverPageSet {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Title : String(256) not null;
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Name : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Value : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__SignatureSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DoSign : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Reason : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__HierarchySet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DistanceFromRootElement : String(256) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DrillStateElement : String(256) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__PDFHeaderSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  Right : ZR_TRAVEL_FINAL.SAP__HeaderFooterField not null;
  Left : ZR_TRAVEL_FINAL.SAP__HeaderFooterField not null;
  Center : ZR_TRAVEL_FINAL.SAP__HeaderFooterField not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__PDFFooterSet {
  @sap.label : 'UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Id : UUID not null;
  Right : ZR_TRAVEL_FINAL.SAP__HeaderFooterField not null;
  Left : ZR_TRAVEL_FINAL.SAP__HeaderFooterField not null;
  Center : ZR_TRAVEL_FINAL.SAP__HeaderFooterField not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZR_TRAVEL_FINAL.SAP__ValueHelpSet {
  key VALUEHELP : LargeString not null;
  FIELD_VALUE : String(10) not null;
  DESCRIPTION : LargeString;
};

@cds.external : true
type ZR_TRAVEL_FINAL.DummyFunctionImportResult {
  @sap.label : 'TRUE'
  IsInvalid : Boolean;
};

@cds.external : true
type ZR_TRAVEL_FINAL.SAP__FitToPage {
  @sap.label : 'Error behavior'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ErrorRecoveryBehavior : String(8) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsEnabled : Boolean not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MinimumFontSize : Integer not null;
};

@cds.external : true
type ZR_TRAVEL_FINAL.SAP__TableColumnFormat {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DisplayFormat : String(40) not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IANATimezone : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IANATimezoneProperty : LargeString not null;
};

@cds.external : true
type ZR_TRAVEL_FINAL.SAP__HeaderFooterField {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Type : String(256) not null;
};

