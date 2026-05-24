*&---------------------------------------------------------------------*
*& Report  ZSTUDENT_INSERT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSTUDENT_INSERT.

DATA : WA_ZSTUDENTS_1 TYPE ZSTUDENTS_1.

PARAMETERS : P_ID TYPE ZSTUDENTS_1-STUD_ID1,
             P_NAME TYPE ZSTUDENTS_1-S_NAME,
             P_COURSE TYPE ZSTUDENTS_1-S_COURSE,
             P_MARKS TYPE ZSTUDENTS_1-S_MARKS.

WA_ZSTUDENTS_1-STUD_ID1 = P_ID.
WA_ZSTUDENTS_1-S_NAME = P_NAME.
WA_ZSTUDENTS_1-S_COURSE = P_COURSE.
WA_ZSTUDENTS_1-S_MARKS = P_MARKS.

INSERT ZSTUDENTS_1 FROM WA_ZSTUDENTS_1.

IF SY-SUBRC = 0.

  WRITE : / 'DATA INSERTED SUCCESSFULLY'.

ELSE.

  WRITE : / 'STUDENT ID ALREADY EXISTS'.

ENDIF.
