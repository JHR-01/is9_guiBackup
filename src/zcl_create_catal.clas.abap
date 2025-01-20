CLASS ZCL_CREATE_CATAL DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES IF_SADL_EXIT.
    INTERFACES IF_SADL_EXIT_CALC_ELEMENT_READ .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS ZCL_CREATE_CATAL IMPLEMENTATION.

  METHOD IF_SADL_EXIT_CALC_ELEMENT_READ~CALCULATE.

    CHECK NOT IT_ORIGINAL_DATA IS INITIAL.

*    DATA: LT_PROCESSDATA TYPE TABLE OF ZCM_I_CATALOG WITH DEFAULT KEY,
**          LT_SPLIT       TYPE TABLE OF ZCM_I_CATALOG-Catal.
*          LS_SPLIT_01    TYPE ZCM_I_CATALOG-URL,
*          LS_SPLIT_02    TYPE ZCM_I_CATALOG-URL.
*
*    LT_PROCESSDATA = CORRESPONDING #( IT_ORIGINAL_DATA ).
*
*    LOOP AT LT_PROCESSDATA ASSIGNING FIELD-SYMBOL(<FS_RESULT>).
*      IF <FS_RESULT>-URL IS NOT INITIAL.
**        SPLIT <FS_RESULT>-URL AT ':' INTO TABLE LT_SPLIT.
**        IF LT_SPLIT IS NOT INITIAL.
**          READ TABLE LT_SPLIT INTO DATA(LS_SPLIT) INDEX 2 .
**          IF SY-SUBRC EQ 0.
**            CLEAR : LT_SPLIT, LS_SPLIT.
**            SPLIT LS_SPLIT AT '?' INTO TABLE LT_SPLIT.
**            IF LT_SPLIT IS NOT INITIAL.
**              READ TABLE LT_SPLIT INTO LS_SPLIT INDEX 1.
**              IF SY-SUBRC EQ 0.
**                <FS_RESULT>-Catal = LS_SPLIT.
**              ENDIF.
**            ENDIF.
**          ENDIF.
**        ENDIF.
**        SPLIT <FS_RESULT>-URL AT '?' INTO TABLE LT_SPLIT.
**        IF LT_SPLIT IS NOT INITIAL.
**          READ TABLE LT_SPLIT INTO DATA(LS_SPLIT) INDEX 1.
**          IF SY-SUBRC EQ 0.
**            <FS_RESULT>-Catal = LS_SPLIT.
**          ENDIF.
**        ENDIF.
**        SPLIT <FS_RESULT>-URL AT '?' INTO LS_SPLIT_01 LS_SPLIT_02.
**        IF LS_SPLIT_01 IS NOT INITIAL.
**            <FS_RESULT>-Catal = LS_SPLIT_01.
**        ENDIF.
*
*        <FS_RESULT>-Catal = 'Test'.
*      ENDIF.
*
**      MODIFY LT_PROCESSDATA FROM <FS_RESULT> TRANSPORTING Catal.
*    ENDLOOP.
*
*
*    CT_CALCULATED_DATA = CORRESPONDING #( LT_PROCESSDATA ).

  ENDMETHOD.


  METHOD IF_SADL_EXIT_CALC_ELEMENT_READ~GET_CALCULATION_INFO.
  ENDMETHOD.
ENDCLASS.
