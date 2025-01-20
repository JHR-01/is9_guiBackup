@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '유저별 대상매핑'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true

define view entity ZCM_C_TM
  as select from ZCM_I_TM           as a
    inner join   ZCM_I_USER_CATAL_D as Catal on a.Parentid = Catal.Catal
{
  key       a.Id,
            a.Parentid,
            a.Domainid,
            a.Referencechipid,
            //    a.Url,
            a.SemObj,
            a.SemAct
            //    ,
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
  ,
            Catal.Catal,
            @ObjectModel: {readOnly: true,
                       virtualElement: true,
                       virtualElementCalculatedBy: 'ABAP:ZCL_CREATE_CATAL'}
            cast('' as abap.char( 255 )) as Test
}
