@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join Chip'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCM_I_CHIP
  as select from    ZCM_C_TMU       as a
    left outer join /ui2/pb_c_chip  as Chip  on a.TargetId = Chip.id
    left outer join /ui2/pb_c_chipm as ChipM on a.TargetId = ChipM.id
{
  key a.TargetId,
      Chip.id                      as ChipId,
      ChipM.id                     as ChipMId,
      case
      when Chip.id is not initial then Chip.id
      when Chip.id is null then ChipM.id
      when Chip.id is not null and ChipM.id is not null then ChipM.id
      else null end                as ChipSelectId,

      Chip.configuration           as ChipConf, //String Type Case 적용 불가로 Virtual에서 처리
      ChipM.configuration          as ChipMConf

}
where
     Chip.id  is not null
  or ChipM.id is not null
