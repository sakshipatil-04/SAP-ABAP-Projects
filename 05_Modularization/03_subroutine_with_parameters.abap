*&---------------------------------------------------------------------*
*& Report  ZSAKSHII_SUBROUINES_1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSAKSHII_SUBROUINES_1.

DATA : P_X TYPE I VALUE 500,
       P_Y TYPE I VALUE 300.

PERFORM SUB1 USING P_X P_Y.

FORM SUB1 USING P_A TYPE I
                P_B TYPE I.

  DATA : V_REST TYPE I.

  V_REST = P_A + P_B.

  WRITE : / 'FIRST NUMBER  :', P_A.
  WRITE : / 'SECOND NUMBER :', P_B.
  WRITE : / 'SUM           :', V_REST.

ENDFORM.
