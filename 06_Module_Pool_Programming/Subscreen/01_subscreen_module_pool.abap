*---------------------------------------------------------------------*
* Flow Logic
*---------------------------------------------------------------------*

PROCESS BEFORE OUTPUT.
  MODULE STATUS_0100.
  CALL SUBSCREEN SUB_SCREEN INCLUDING 'ZSAKSHI_MMP_6' V_SCRNO.

PROCESS AFTER INPUT.
  MODULE USER_COMMAND_0100.

*---------------------------------------------------------------------*
* PAI Module
*---------------------------------------------------------------------*

MODULE USER_COMMAND_0100 INPUT.

  DATA : V_SCRNO TYPE SY-DYNNR VALUE 1000.

  CONTROLS TABSTRIP TYPE TABSTRIP.

  CASE SY-UCOMM.

    WHEN 'FC1'.
      LEAVE PROGRAM.

    WHEN 'ABC1'.
      TABSTRIP-ACTIVETAB = 'ABC1'.
      V_SCRNO = 1000.

    WHEN 'ABC2'.
      TABSTRIP-ACTIVETAB = 'ABC2'.
      V_SCRNO = 2000.

    WHEN 'ABC3'.
      TABSTRIP-ACTIVETAB = 'ABC3'.
      V_SCRNO = 3000.

    WHEN 'FC2'.
      LEAVE PROGRAM.

  ENDCASE.

ENDMODULE.

*---------------------------------------------------------------------*
* PBO Module
*---------------------------------------------------------------------*

MODULE STATUS_0100 OUTPUT.

  SET PF-STATUS 'ABCD'.
  SET TITLEBAR 'PQR'.

ENDMODULE.
