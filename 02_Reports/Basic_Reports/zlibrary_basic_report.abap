*&---------------------------------------------------------------------*
*& Report  ZLIBRARY_REPORT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZLIBRARY_REPORT.

WRITE 'Hello Pune'.
WRITE 'Welcome to Pune' COLOR 1.

ULINE.

WRITE / 'HELLO MUMBAI'.

WRITE /'WELCOME TO MUMBAI.'.
WRITE / 'WELCOME TO MAHARASHTRA.' COLOR 5.
WRITE /'HELLO SANGLI.' COLOR 4.

SKIP 1.
WRITE:/ 'HELLO SANGLI' ,'HELLO INDIA', 'HELLO PUNE.' COLOR 2.
ULINE.

WRITE :/ 'WELOCOME TO INDIA..' COLOR 3,
/ 'HELLO SANGLI..' COLOR 6,
/ 'WELCOME TO SANGLI.'.

ULINE.
WRITE :/'SYSTEM DATE...',SY-DATUM COLOR 7.
WRITE :/'SYSTEM DATE..',SY-DATUM USING EDIT MASK'__/__/____/'.
SKIP 1.

FORMAT COLOR 3.
WRITE : / 'SYSTEM TIME..',SY-UZEIT.
WRITE : / 'SYSTEM TIME..',SY-UZEIT USING EDIT MASK '__.__.__'.
