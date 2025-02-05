@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cust Target'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCM_I_TMM
  as select from /ui2/pb_c_tmm
{
  key id                  as Id,
      parentid            as Parentid,
      domainid            as Domainid,
      referencechipid     as Referencechipid,
      url                 as Url,
      sem_obj             as SemObj,
      sem_act             as SemAct,
      app_type            as AppType,
      wd_appl_id          as WdApplId,
      wd_conf_id          as WdConfId,
      wd_compability_mode as WdCompabilityMode,
      ui5_component_id    as Ui5ComponentId,
      tcode               as Tcode,
      wcf_target_id       as WcfTargetId,
      form_factor_desktop as FormFactorDesktop,
      form_factor_tablet  as FormFactorTablet,
      form_factor_phone   as FormFactorPhone,
      parameters          as Parameters,
      add_params_allowed  as AddParamsAllowed,
      system_alias        as SystemAlias,
      information         as Information,
      conf_text           as ConfText,
      referenceparentid   as Referenceparentid,
      short_guid          as ShortGuid,
      urlt_id             as UrltId,
      urlt_parameters     as UrltParameters,
case
    when referencechipid is not initial then referencechipid
    when referencechipid is initial then id
    else null
end as TargetId
}
where
  sem_obj != 'Shell'
