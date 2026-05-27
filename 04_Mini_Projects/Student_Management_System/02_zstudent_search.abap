*&---------------------------------------------------------------------*
*& Report  ZSTUDENT_SEARCH
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSTUDENT_SEARCH.

DATA : WA_ZSTUDENTS_1 TYPE ZSTUDENTS_1.

PARAMETERS : P_STID1 TYPE ZSTUDENTS_1-STUD_ID1.

SELECT SINGLE *
  FROM ZSTUDENTS_1
  INTO WA_ZSTUDENTS_1
  WHERE STUD_ID1 = P_STID1.

IF SY-SUBRC = 0.

  WRITE : / 'STUDENT ID : ',WA_ZSTUDENTS_1-STUD_ID1,
            'NAME       : ',WA_ZSTUDENTS_1-S_NAME,
            'COURSE     : ',WA_ZSTUDENTS_1-S_COURSE,
            'MARKS      : ',WA_ZSTUDENTS_1-S_MARKS.
ELSE.

  WRITE : / 'STUDENT NOT FOUND'.

ENDIF.
