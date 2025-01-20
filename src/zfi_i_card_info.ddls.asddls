@AbapCatalog.sqlViewName: 'ZFIICARDINFO'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Card Info'
@Metadata.ignorePropagatedAnnotations: true
define view ZFI_I_CARD_INFO as select from zfi_card_info
{    
    @EndUserText.label: '카드번호'
    key card_no as CardNo,
    @EndUserText.label: '카드사코드'
    fcode as Fcode,
    @EndUserText.label: '카드사명'
    fcode_nm as FcodeNm,
    @EndUserText.label: '삭제지시자'
    delflag as Delflag,
    @EndUserText.label: '생성일'
    erdat as Erdat,
    @EndUserText.label: '생성시간'
    erzet as Erzet,
    @EndUserText.label: '생성자'
    ernam as Ernam,
    @EndUserText.label: '변경일'
    aedat as Aedat,
    @EndUserText.label: '변경시간'
    aezet as Aezet,
    @EndUserText.label: '변경자'
    aenam as Aenam
}
