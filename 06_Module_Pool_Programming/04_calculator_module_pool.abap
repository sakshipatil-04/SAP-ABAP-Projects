*&---------------------------------------------------------------------*
*& Include ZSAKSHI2_TOP                                      Module Pool      ZSAKSHI_MMP_2
*&
*&---------------------------------------------------------------------*

PROGRAM ZSAKSHI_MMP_2.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0300  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0300 INPUT.

  DATA : IF1 TYPE I,
         IF2 TYPE I,
         IF3 TYPE I.

  CASE SY-UCOMM.
    WHEN 'ABC6'.
      LEAVE PROGRAM.

    WHEN 'ABC1'.
      IF3 = IF1 + IF2.

    WHEN 'ABC2'.
      IF3 = IF2 - IF1.

    WHEN 'ABC3'.
      IF3 = IF1 * IF2.

    WHEN 'ABC4'.
      IF3 = IF1 / IF2.

    WHEN 'ABC5'.
      CLEAR : IF1,
              IF2,
              IF3.


  ENDCASE.

ENDMODULE.                 " USER_COMMAND_0300  INPUT
