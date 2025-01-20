@AbapCatalog.sqlViewName: 'ZFICCARDINFO'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Card Consumption'
define view ZFI_C_CARD_INFO as select from ZFI_I_CARD_INFO
{   
    key CardNo,
    @ObjectModel.text.element: ['FcodeNm']
    Fcode,
    FcodeNm,
    Delflag,
    Erdat,
    Erzet,
    Ernam,
    Aedat,
    Aezet,
    Aenam
}
