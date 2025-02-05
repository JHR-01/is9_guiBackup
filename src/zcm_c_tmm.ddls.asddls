@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '유저별 Cust 대상매핑'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCM_C_TMM
  as select from ZCM_I_TMM          as a
    inner join   ZCM_I_USER_CATAL_D as Catal on a.Parentid = Catal.Catal
{
  key a.Id,
      a.Parentid,
      a.Domainid,
      a.Referencechipid,
      a.Url,
      a.SemObj,
      a.SemAct,
      //    AppType,
      //    WdApplId,
      //    WdConfId,
      //    WdCompabilityMode,
      //    Ui5ComponentId,
      //    Tcode,
      //    WcfTargetId,
      //    FormFactorDesktop,
      //    FormFactorTablet,
      //    FormFactorPhone,
      //    Parameters,
      //    AddParamsAllowed,
      //    SystemAlias,
      //    Information,
      //    ConfText,
      //    Referenceparentid,
      //    ShortGuid,
      //    UrltId,
      //    UrltParameters,
      a.TargetId,
      Catal.Catal
}
