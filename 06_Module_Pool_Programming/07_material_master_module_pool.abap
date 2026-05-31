*&---------------------------------------------------------------------*
*& Include ZSAKSHI3_TOP                                      Module Pool      ZSAKSHI_MMP_3
*&
*&---------------------------------------------------------------------*

PROGRAM ZSAKSHI_MMP_3.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0500  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0500 INPUT.

  TABLES : MARA.

  CASE SY-UCOMM.
    WHEN 'ABC3'.
      LEAVE PROGRAM.

    WHEN 'ABC1'.
      SELECT SINGLE ERSDA ERNAM PSTAT MBRSH BISMT
        FROM MARA
        INTO (MARA-ERSDA, MARA-ERNAM, MARA-PSTAT, MARA-MBRSH, MARA-BISMT)
        WHERE MATNR = MARA-MATNR.

    WHEN 'ABC2'.

      CLEAR: MARA-MATNR,
             MARA-ERSDA,
             MARA-ERNAM,
             MARA-PSTAT,
             MARA-MBRSH,
             MARA-BISMT.

   ENDCASE.

ENDMODULE.                 " USER_COMMAND_0500  INPUT
