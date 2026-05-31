*&---------------------------------------------------------------------*
*& Report  ZSAKSHI_FM
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSAKSHI_FM.

PARAMETERS : P_A TYPE I DEFAULT 300 OBLIGATORY,
             P_B TYPE I DEFAULT 200 OBLIGATORY.

CALL FUNCTION 'ZSAKSHI_FM'
  EXPORTING
    P_X = P_A
    P_Y = P_B.
