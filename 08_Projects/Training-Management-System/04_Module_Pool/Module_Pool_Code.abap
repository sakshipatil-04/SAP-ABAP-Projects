*&---------------------------------------------------------------------*
*& Include ZTRAINING_HDR_TOP                                 Module Pool      ZTRAINING_HDR
*&
*&---------------------------------------------------------------------*

PROGRAM ZTRAINING_HDR.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0500  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE USER_COMMAND_0500 INPUT.

  TABLES : ZTRAINING_HDR.

  DATA : TRN_ID TYPE NUM8.

  CASE SY-UCOMM.
    WHEN 'ABC6'.
      LEAVE PROGRAM.

    WHEN 'ABC1'.
      INSERT ZTRAINING_HDR FROM ZTRAINING_HDR.

    WHEN 'ABC2'.
      SELECT SINGLE *
  FROM ZTRAINING_HDR
  INTO ZTRAINING_HDR
  WHERE TRN_ID = ZTRAINING_HDR-TRN_ID.

    WHEN 'ABC3'.
      UPDATE ZTRAINING_HDR FROM ZTRAINING_HDR.

      IF SY-SUBRC = 0.
        MESSAGE 'Record Updated Successfully' TYPE 'I'.
      ENDIF.

    WHEN 'ABC4'.
    DELETE FROM ZTRAINING_HDR
  WHERE TRN_ID = ZTRAINING_HDR-TRN_ID.

IF SY-SUBRC = 0.
  MESSAGE 'Record Deleted Successfully' TYPE 'I'.

ENDIF.
    WHEN 'ABC5'.
      CLEAR:
              ZTRAINING_HDR-TRN_ID,
              ZTRAINING_HDR-TRN_NAME,
              ZTRAINING_HDR-TRAINERR,
              ZTRAINING_HDR-TRN_DATE,
              ZTRAINING_HDR-LOCATION_1.


  ENDCASE.



ENDMODULE.                 " USER_COMMAND_0500  INPUT
