*&---------------------------------------------------------------------*
*& Report  ZCLASSICAL_REPORT_1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZCLASSICAL_REPORT_1 LINE-COUNT 35(5).

TYPES : BEGIN OF TY_EKKO,
        EBELN TYPE EBELN,
        BUKRS TYPE BUKRS,
        BSTYP TYPE EBSTYP,
        BSART TYPE ESART,
        ERNAM TYPE ERNAM,
  END OF TY_EKKO.

DATA : IT_EKKO TYPE TABLE OF TY_EKKO,
       WA_EKKO TYPE TY_EKKO.

PARAMETERS : P_ERNAM TYPE EKKO-ERNAM.

START-OF-SELECTION.

  SELECT EBELN BUKRS BSTYP BSART ERNAM
    FROM EKKO
    INTO TABLE IT_EKKO
    WHERE ERNAM = P_ERNAM.

END-OF-SELECTION.

  LOOP AT IT_EKKO INTO WA_EKKO.

    WRITE :/ SY-VLINE,
            WA_EKKO-EBELN,
            20 SY-VLINE,
            WA_EKKO-BUKRS,
            40 SY-VLINE,
            WA_EKKO-BSTYP,
            60 SY-VLINE,
            WA_EKKO-BSART,
            80 SY-VLINE,
            WA_EKKO-ERNAM,
            100 SY-VLINE,
            / SY-ULINE(100).
  ENDLOOP.

TOP-OF-PAGE.

  FORMAT COLOR 5.

TOP-OF-PAGE.

  WRITE :/ SY-VLINE, 'PURCHASE DOC',
           20 SY-VLINE, 'COMP CODE',
           40 SY-VLINE, 'DOC TYPE',
           60 SY-VLINE, 'ORDER TYPE',
           80 SY-VLINE, 'CREATED BY',
           100 SY-VLINE,
           / SY-ULINE(100).


END-OF-PAGE.
  WRITE :/ 'PAGE NO :', SY-PAGNO.
