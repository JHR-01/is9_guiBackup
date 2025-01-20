@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '유저별 카탈로그 롤'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCM_I_AUTH
  as select from agr_users
{
@EndUserText.label: '역할 이름'
  key    agr_name as Role_id,
  @EndUserText.label: '사용자'
  key    uname    as User_id,
  @EndUserText.label: '변경 시작일'
  key    from_dat as FromDat,
  @EndUserText.label: '변경 종료일'
  key    to_dat   as ToDat

}
where
        uname    = $session.user
  and(
        from_dat <= $session.system_date
    and to_dat   >= $session.system_date
  ) //현재 유효한 역할

