
*&---------------------------------------------------------------------*
*& Report  ZSTUDENT_ALV
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSTUDENT_ALV.

DATA : IT_STUDENT TYPE TABLE OF ZSTUDENTS_1.

SELECT *
  FROM ZSTUDENTS_1
  INTO TABLE IT_STUDENT.


CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    I_STRUCTURE_NAME = 'ZSTUDENTS_1'
  TABLES
    T_OUTTAB         = IT_STUDENT.
