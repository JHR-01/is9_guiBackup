@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join Chip ccc'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true

define view entity ZCM_C_CHIP
  as select from ZCM_I_CHIP
{
  key TargetId,
      ChipId,
      ChipMId,
      ChipSelectId,
      ChipConf,
      ChipMConf,
      @ObjectModel: {readOnly: true,
                 virtualElement: true,
                 virtualElementCalculatedBy: 'ABAP:ZCL_CREATE_CATAL'}
      cast('' as abap.char( 255 )) as ResultUrl
}
