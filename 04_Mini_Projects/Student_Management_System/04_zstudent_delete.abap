*&---------------------------------------------------------------------*
*& Report  ZSTUDENT_DELETE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSTUDENT_DELETE.



PARAMETERS : P_ID TYPE ZSTUDENTS_1-STUD_ID1.

DELETE FROM ZSTUDENTS_1
WHERE STUD_ID1 = P_ID.

IF SY-SUBRC = 0.

  WRITE : / 'DATA DELETED SUCCESSFULLY'.

ELSE.

  WRITE : / 'STUDENT NOT FOUND'.

ENDIF.
