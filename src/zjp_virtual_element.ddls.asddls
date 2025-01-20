@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Virtual Elements in CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define root view entity ZJP_Virtual_element
  as select from sflight
{
  key carrid                     as Carrid,
  key connid                     as Connid,
  key fldate                     as Fldate,
      @Semantics.amount.currencyCode: 'Currency'
      price                      as Price,
      currency                   as Currency,
      planetype                  as Planetype,
      seatsmax                   as Seatsmax,
      seatsocc                   as Seatsocc,
      @Semantics.amount.currencyCode: 'Currency'
      paymentsum                 as Paymentsum,
      seatsmax_b                 as SeatsmaxB,
      seatsocc_b                 as SeatsoccB,
      seatsmax_f                 as SeatsmaxF,
      seatsocc_f                 as SeatsoccF,
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELEMENT_CALC'
      @EndUserText.label: 'Available Seats'
      @ObjectModel.virtualElement: true
      cast( 0 as abap.int4 )     as SeatsAvailable,
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_ELEMENT_CALC'
      @EndUserText.label: 'Week Day'
      @ObjectModel.virtualElement: true
      cast( '' as abap.char(9) ) as dayOfTheFlight
}
