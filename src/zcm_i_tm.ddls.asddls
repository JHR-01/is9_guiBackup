@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '대상 매핑'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCM_I_TM as select from /ui2/pb_c_tm
{   
    @EndUserText.label: 'ID'
    key id as Id,
    @EndUserText.label: '카탈로그 ID'
    parentid as Parentid,
    domainid as Domainid,
    @EndUserText.label: '참조 ID'
    referencechipid as Referencechipid,
    url as Url,
    @EndUserText.label: '시맨틱 오브젝트'
    sem_obj as SemObj,
    @EndUserText.label: '액션'
    sem_act as SemAct,
    app_type as AppType,
    wd_appl_id as WdApplId,
    wd_conf_id as WdConfId,
    wd_compability_mode as WdCompabilityMode,
    ui5_component_id as Ui5ComponentId,
    tcode as Tcode,
    wcf_target_id as WcfTargetId,
    form_factor_desktop as FormFactorDesktop,
    form_factor_tablet as FormFactorTablet,
    form_factor_phone as FormFactorPhone,
    parameters as Parameters,
    add_params_allowed as AddParamsAllowed,
    system_alias as SystemAlias,
    information as Information,
    conf_text as ConfText,
    referenceparentid as Referenceparentid,
    short_guid as ShortGuid,
    urlt_id as UrltId,
    urlt_parameters as UrltParameters
}
