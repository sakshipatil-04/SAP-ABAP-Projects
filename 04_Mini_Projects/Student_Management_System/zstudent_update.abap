*&---------------------------------------------------------------------*
*& Report  ZSTUDENT_UPDATE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSTUDENT_UPDATE.

DATA : WA_ZSTUDENTS_1 TYPE ZSTUDENTS_1.

PARAMETERS : P_ID TYPE ZSTUDENTS_1-STUD_ID1,
             P_MARKS TYPE ZSTUDENTS_1-S_MARKS.

SELECT SINGLE *
  FROM ZSTUDENTS_1
  INTO WA_ZSTUDENTS_1
  WHERE STUD_ID1 = P_ID.


IF SY-SUBRC = 0.

  WA_ZSTUDENTS_1-S_MARKS = P_MARKS.

  UPDATE ZSTUDENTS_1 FROM WA_ZSTUDENTS_1.

  WRITE : / 'DATA UPDATED SUCCESSFULLY'.

ELSE.

  WRITE : / 'STUDENT NOT FOUND'.

ENDIF.
