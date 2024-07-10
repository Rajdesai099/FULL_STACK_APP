/* checksum : 5bea69fab04f592efd83ad723a075882 */
@cds.external : true
type ZR_TRAVEL_SER.zr_travelOperationControl {
  @Common.Label : 'Dyn. Action Control'
  @Common.Heading : 'Dynamic Action Control'
  @Common.QuickInfo : 'Dynamic Action Property'
  Activate : Boolean not null;
  @Common.Label : 'Dyn. Action Control'
  @Common.Heading : 'Dynamic Action Control'
  @Common.QuickInfo : 'Dynamic Action Property'
  Discard : Boolean not null;
  @Common.Label : 'Dyn. Action Control'
  @Common.Heading : 'Dynamic Action Control'
  @Common.QuickInfo : 'Dynamic Action Property'
  Edit : Boolean not null;
  @Common.Label : 'Dyn. Action Control'
  @Common.Heading : 'Dynamic Action Control'
  @Common.QuickInfo : 'Dynamic Action Property'
  Prepare : Boolean not null;
  @Common.Label : 'Dyn. Action Control'
  @Common.Heading : 'Dynamic Action Control'
  @Common.QuickInfo : 'Dynamic Action Property'
  Resume : Boolean not null;
};

@cds.external : true
type ZR_TRAVEL_SER.EntityControl {
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  Deletable : Boolean not null;
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  Updatable : Boolean not null;
};

@cds.external : true
type ZR_TRAVEL_SER.SAP__Message {
  code : LargeString not null;
  message : LargeString not null;
  target : LargeString;
  additionalTargets : many LargeString not null;
  transition : Boolean not null;
  @odata.Type : 'Edm.Byte'
  numericSeverity : Integer not null;
  longtextUrl : LargeString;
};

@cds.external : true
@CodeList.CurrencyCodes : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'Currencies'
}
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@PDF.Features : {
  DocumentDescriptionReference: '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat: true,
  Border: true,
  CoverPage: true,
  FitToPage: true,
  FontName: true,
  FontSize: true,
  Margin: true,
  Padding: true,
  Signature: true,
  HeaderFooter: true,
  ResultSizeDefault: 20000,
  ResultSizeMaximum: 20000,
  IANATimezoneFormat: true,
  Treeview: true
}
@Capabilities.KeyAsSegmentSupported : true
@Capabilities.AsynchronousRequestsSupported : true
service ZR_TRAVEL_SER {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Travel Detail'
@UI.Facets : [
  {
    $Type: 'SAP__UI.ReferenceFacet',
    Label: 'Overview',
    Target: @UI.![FieldGroup#TEXT]
  }
]
@UI.FieldGroup#TEXT : { Data: [
  {
    $Type: 'SAP__UI.DataField',
    Value: TravelId
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: AgencyId
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: CustomerId
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: BeginDate
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: EndDate
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: BookingFee
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: TotalPrice
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: CurrencyCode
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: Description
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: LocalCreatedBy
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: LocalCreatedAt
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: LocalLastChangedBy
  },
  {
    $Type: 'SAP__UI.DataField',
    Value: LastChangedAt
  }
] }
@UI.HeaderInfo : {
  TypeName: 'Flight Data',
  Title: {
    $Type: 'SAP__UI.DataField',
    Value: Description
  },
  Description: {
    $Type: 'SAP__UI.DataField',
    Value: CustomerId
  }
}
@UI.HeaderInfo.@Core.Messages : [
  {
    message: 'UI.HEADERINFO: TypeNamePlural is mandatory',
    severity: 'error'
  }
]
@UI.LineItem : [
  {
    $Type: 'SAP__UI.DataField',
    Value: carpng,
    @HTML5.CssDefaults: { width: '4rem' }
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Travel Id',
    Value: TravelId
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Agency Id',
    Value: AgencyId
  },
  {
    $Type: 'SAP__UI.DataFieldWithIntentBasedNavigation',
    Label: 'Customer ID',
    SemanticObject: 'Customer',
    Action: 'Display',
    Value: CustomerId
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Begin Date',
    Value: BeginDate
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'End Date',
    Value: EndDate
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Booking Fee',
    Value: BookingFee
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Total Price',
    Value: TotalPrice
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Currency',
    Value: CurrencyCode
  },
  {
    $Type: 'SAP__UI.DataField',
    Criticality: StatusCriticality,
    Value: StatusText
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Description',
    Value: Description
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Created By',
    Value: LocalCreatedBy
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Crated At',
    Value: LocalCreatedAt
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Last Changed By',
    Value: LocalLastChangedBy
  },
  {
    $Type: 'SAP__UI.DataField',
    Label: 'Last Changed At',
    Value: LastChangedAt
  }
]
@UI.PresentationVariant : { SortOrder: [
  {
    $Type: 'SAP__common.SortOrderType',
    Property: TravelId,
    Descending: false
  }
] }
@UI.SelectionFields : [ 'TravelId', 'AgencyId', 'CustomerId', 'BookingFee', 'CurrencyCode' ]
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : true
@Capabilities.SearchRestrictions.UnsupportedExpressions : #phrase
@Capabilities.FilterRestrictions.Filterable : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: Description,
    AllowedExpressions: 'SearchExpression'
  }
]
@Capabilities.FilterRestrictions.NonFilterableProperties : [ '__EntityControl', '__OperationControl' ]
@Capabilities.SortRestrictions.NonSortableProperties : [ 'Description', '__EntityControl', '__OperationControl' ]
@Capabilities.InsertRestrictions.RequiredProperties : [ 'TravelId' ]
@Capabilities.DeleteRestrictions.Deletable : ![__EntityControl/Deletable]
@Capabilities.UpdateRestrictions.Updatable : ![__EntityControl/Updatable]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity ZR_TRAVEL_SER.zr_travel {
  @Core.Immutable : true
  @Common.Label : 'UUID'
  @Common.QuickInfo : '16 Byte UUID in 16 Bytes (Raw Format)'
  key TravelUuid : UUID not null;
  @Core.Computed : true
  @UI.IsImageURL : true
  carpng : String(120) not null;
  @Common.IsDigitSequence : true
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/zsaitravel_joincds/0001;ps=''srvd-zr_travel_ser-0001'';va=''com.sap.gateway.srvd.zr_travel_ser.v0001.et-zr_travel_final.travelid''/$metadata'
  ]
  @Common.Label : 'Travel ID'
  @Common.QuickInfo : 'Flight Reference Scenario: Travel ID'
  TravelId : String(8) not null;
  @Common.IsDigitSequence : true
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/zsaitravel_joincds/0001;ps=''srvd-zr_travel_ser-0001'';va=''com.sap.gateway.srvd.zr_travel_ser.v0001.et-zr_travel_final.agencyid''/$metadata'
  ]
  @Common.Label : 'Agency ID'
  @Common.QuickInfo : 'Flight Reference Scenario: Agency ID'
  AgencyId : String(6) not null;
  @Common.IsDigitSequence : true
  @Common.ValueListReferences : [
    '../../../../srvd_f4/sap/zsaitravel_joincds/0001;ps=''srvd-zr_travel_ser-0001'';va=''com.sap.gateway.srvd.zr_travel_ser.v0001.et-zr_travel_final.customerid''/$metadata'
  ]
  @Common.SemanticObject : 'Customer'
  @Common.SemanticObjectMapping : [
    {
      LocalProperty: CustomerId,
      SemanticObjectProperty: 'CustomerID'
    }
  ]
  @Common.Label : 'Customer ID'
  @Common.QuickInfo : 'Flight Reference Scenario: Customer ID'
  CustomerId : String(6) not null;
  @Common.Label : 'Starting Date'
  @Common.Heading : 'Start Date'
  @Common.QuickInfo : 'Flight Reference Scenario: Start Date'
  BeginDate : Date;
  @Common.Label : 'End Date'
  @Common.QuickInfo : 'Flight Reference Scenario: End Date'
  EndDate : Date;
  @Common.Label : 'Booking Fee'
  @Common.QuickInfo : 'Flight Reference Scenario: Booking Fee'
  BookingFee : Decimal(precision: 16) not null;
  @Measures.ISOCurrency : CurrencyCode
  @Common.Label : 'Total Price'
  @Common.QuickInfo : 'Flight Reference Scenario: Total Price'
  TotalPrice : Decimal(precision: 16) not null;
  @Common.IsCurrency : true
  @Common.Label : 'Currency Code'
  @Common.QuickInfo : 'Flight Reference Scenario: Currency Code'
  CurrencyCode : String(5) not null;
  @odata.Type : 'Edm.Byte'
  @Core.Computed : true
  StatusCriticality : Integer not null;
  StatusText : String(10) not null;
  @Common.Label : 'Description'
  @Common.QuickInfo : 'Flight Reference Scenario: Description'
  Description : String(1024) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  @Common.QuickInfo : 'Created By User'
  LocalCreatedBy : String(12) not null;
  @odata.Precision : 7
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created On'
  @Common.QuickInfo : 'Creation Date Time'
  LocalCreatedAt : Timestamp;
  @Common.IsUpperCase : true
  @Common.Label : 'Changed By'
  @Common.QuickInfo : 'Local Instance Last Changed By User'
  LocalLastChangedBy : String(12) not null;
  @odata.Precision : 7
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Changed On'
  @Common.QuickInfo : 'Last Change Date Time'
  LastChangedAt : Timestamp;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dyn. Method Control'
  @Common.Heading : 'Dynamic Method Control'
  @Common.QuickInfo : 'Dynamic Method Property'
  __EntityControl : ZR_TRAVEL_SER.EntityControl;
  @Core.Computed : true
  @UI.HiddenFilter : true
  @UI.Hidden : true
  @Common.Label : 'Dyn. Action Control'
  @Common.Heading : 'Dynamic Action Control'
  @Common.QuickInfo : 'Dynamic Action Property'
  __OperationControl : ZR_TRAVEL_SER.zr_travelOperationControl;
  SAP__Messages : many ZR_TRAVEL_SER.SAP__Message not null;
} actions {
  @Core.OperationAvailable : ![_it/__OperationControl/Edit]
  action Edit(
    _it : $self not null
  );
  @Core.OperationAvailable : ![_it/__OperationControl/Resume]
  action Resume(
    _it : $self not null
  );
  @Core.OperationAvailable : ![_it/__OperationControl/Prepare]
  action Prepare(
    _it : $self not null
  );
  @Core.OperationAvailable : ![_it/__OperationControl/Discard]
  action Discard(
    _it : $self not null
  );
  @Core.OperationAvailable : ![_it/__OperationControl/Activate]
  action Activate(
    _it : $self not null
  );
};

