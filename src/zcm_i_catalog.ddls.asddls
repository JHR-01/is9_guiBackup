@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '카탈로그'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity ZCM_I_CATALOG
  as select from agr_buffi
{
      @EndUserText.label: '역할 이름'
  key agr_name                                        as Role_id,
      //      @EndUserText.label: '메뉴 ID 카운터'
  key object_id                                       as Object_id,
      @EndUserText.label: '링크 유형'
      link_type                                       as Link_type,
      @EndUserText.label: '링크'
      url                                             as URL,
      @EndUserText.label: '카탈로그'
      rtrim(substring(url, 1, instr(url, '?' )), '?') as Catal
}
where
  url like 'X-SAP-UI2-CATALOGPAGE:%'
