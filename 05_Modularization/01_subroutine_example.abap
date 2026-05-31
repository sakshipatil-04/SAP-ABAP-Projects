*&---------------------------------------------------------------------*
*& Report  ZSAKSHII_SUBROUINES
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZSAKSHII_SUBROUINES.


PERFORM SUB1.
ULINE.

PERFORM SUB1.
ULINE.

PERFORM SUB1.
ULINE.

FORMAT COLOR 4.
PERFORM SUB2.
ULINE.

FORMAT COLOR 7.
PERFORM SUB3.
ULINE.

FORM SUB1.

  WRITE : /'welcome to India.'.
  WRITE: /'Welcome to Sangli.'.

ENDFORM.


FORM SUB2.

  WRITE :/ 'Hello Pune'.

ENDFORM.


FORM SUB3.

  WRITE :/ 'Hello Pune'.
  WRITE :/ 'WELCOME TO PUNE'.
  WRITE :/ 'WELCOME TO INDIA...'.

ENDFORM.
