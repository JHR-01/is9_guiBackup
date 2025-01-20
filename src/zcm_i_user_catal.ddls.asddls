@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '유저별 카탈로그'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
//define view entity ZCM_I_USER_CATAL
//  as select from ZCM_I_CATALOG as _Catal inner join ZCM_I_AUTH as _AUTH on _Catal.Role_id = _AUTH.Role_id
//{
//  key _Catal.Role_id,
//  key _Catal.Object_id,
//      _Catal.Link_type,
//      _Catal.URL,
//      _Catal.Catal
//}

define view entity ZCM_I_USER_CATAL
  as select from ZCM_I_CATALOG as _Catal inner join ZCM_I_AUTH as Auth on _Catal.Role_id = Auth.Role_id
//    association [0..*] to ZCM_I_TM as _Tm on $projection.Catal = _Tm.Parentid
{
  key _Catal.Role_id,
  key _Catal.Object_id,
      _Catal.Link_type,
      _Catal.URL,
      _Catal.Catal
//      ,_Tm
}


//define view entity ZCM_I_USER_CATAL
//  as select from ZCM_I_AUTH as a
//  right outer join ZCM_I_CATALOG as _Catal on a.Role_id = _Catal.Role_id
////  association [0..*] to ZCM_I_CATALOG as _Catal on $projection.Role_id = _Catal.Role_id
//{
//
//  key    a.Role_id,
//  key    a.User_id,
//  key    a.FromDat,
//  key    a.ToDat,
//         _Catal.Role_id as CatId,
//         _Catal.URL as CatUrl,
//         _Catal.Catal
////         rtrim(substring(_Catal.URL, 1, instr( _Catal.URL, '?' )), '?') as Catal
////         _Catal
//}
//
//where 
////                                          _Catal.Role_id is not initial
////                                          and 
//                                          a.Role_id is not initial
