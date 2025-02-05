@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Union TM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCM_C_TMU as select from ZCM_C_TM
{
    key TargetId
}

union 

select from
  ZCM_C_TMM
    {
    key TargetId
    }
//define view entity ZCM_C_TMU as select from ZCM_C_TM
//{
//    key Id,
//    Parentid,
//    Domainid,
//    Referencechipid,
//    SemObj,
//    SemAct,
//    TargetId,
//    Catal
//}
//
//union all select from
//  ZCM_C_TMM
//    {
//    key Id,
//    Parentid,
//    Domainid,
//    Referencechipid,
//    SemObj,
//    SemAct,
//    TargetId,
//    Catal
//    }
