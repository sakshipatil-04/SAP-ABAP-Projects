*&---------------------------------------------------------------------*
*& Include ZSAKSHI5_TOP                                      Module Pool      ZSAKSHI_MMP_5
*&
*&---------------------------------------------------------------------*

PROGRAM ZSAKSHI_MMP_5.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0500  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0500 INPUT.

  TABLES : ZORDER_1.

  CASE SY-UCOMM.
    WHEN 'ABC3'.
      LEAVE PROGRAM.

    WHEN 'ABC1'.
      SELECT SINGLE ORD_DATE PAY_MODE TOTAL_AMO
        FROM ZORDER_1
        INTO ( ZORDER_1-ORD_DATE, ZORDER_1-PAY_MODE, ZORDER_1-TOTAL_AMO )
        WHERE ORD_NO = ZORDER_1-ORD_NO.

    WHEN 'ABC2'.
      CLEAR : ZORDER_1-ORD_NO,
              ZORDER_1-ORD_DATE,
              ZORDER_1-PAY_MODE,
              ZORDER_1-TOTAL_AMO.
  ENDCASE.




ENDMODULE.                 " USER_COMMAND_0500  INPUT
