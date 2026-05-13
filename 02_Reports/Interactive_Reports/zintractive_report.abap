*&---------------------------------------------------------------------*
*& Report  ZINTRACTIVE_REPORT
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZINTRACTIVE_REPORT LINE-COUNT 30(10).



DATA : LV_ORDER TYPE ZORD_NO.

TYPES : BEGIN OF TY_ORDER,
          ORD_NO    TYPE ZORD_NO,
          ORD_DATE  TYPE ZORD_DATE,
          PAY_MODE  TYPE ZPAY_MODE,
          CURR      TYPE ZCURR,
        END OF TY_ORDER.

DATA : IT_ORDER TYPE TABLE OF TY_ORDER,
       WA_ORDER TYPE TY_ORDER.


TYPES : BEGIN OF TY_ITEM,
          ORD_NO TYPE ZORD_NO,
          OIN    TYPE ZOIN,
          ICOST  TYPE ZICOST,
        END OF TY_ITEM.

DATA : IT_ITEM TYPE TABLE OF TY_ITEM,
       WA_ITEM TYPE TY_ITEM.


SELECT-OPTIONS : S_ORD_NO FOR LV_ORDER.

SELECT ORD_NO
       ORD_DATE
       PAY_MODE
       CURR
  FROM ZORDER_1
  INTO TABLE IT_ORDER
  WHERE ORD_NO IN S_ORD_NO.


IF IT_ORDER IS NOT INITIAL.

  SELECT ORD_NO
         OIN
         ICOST
    FROM ZORDER_ITEM_1
    INTO TABLE IT_ITEM
    FOR ALL ENTRIES IN IT_ORDER
    WHERE ORD_NO = IT_ORDER-ORD_NO.

ENDIF.


LOOP AT IT_ORDER INTO WA_ORDER.

  WRITE : / SY-VLINE,
            WA_ORDER-ORD_NO,
           20 SY-VLINE,
            WA_ORDER-ORD_DATE,
           40 SY-VLINE,
            WA_ORDER-PAY_MODE,
           60 SY-VLINE,
            WA_ORDER-CURR,
           80 SY-VLINE.

  HIDE WA_ORDER-ORD_NO.

  WRITE : / SY-ULINE(80).

ENDLOOP.

TOP-OF-PAGE.

  FORMAT COLOR 5.

  WRITE : / SY-VLINE, 'ORDER NO',
           20 SY-VLINE, 'ORDER DATE',
           40 SY-VLINE, 'PAY MODE',
           60 SY-VLINE, 'CURRENCY',
           80 SY-VLINE,
         / SY-ULINE(80).

END-OF-PAGE.


AT LINE-SELECTION.

  FORMAT COLOR 3.

  LOOP AT IT_ITEM INTO WA_ITEM
       WHERE ORD_NO = WA_ORDER-ORD_NO.

    WRITE : / SY-VLINE,
               WA_ITEM-ORD_NO,
             20 SY-VLINE,
               WA_ITEM-OIN,
             40 SY-VLINE,
               WA_ITEM-ICOST,
             60 SY-VLINE.

    WRITE : / SY-ULINE(60).

  ENDLOOP.

TOP-OF-PAGE DURING LINE-SELECTION.

  FORMAT COLOR 2.

  WRITE : / SY-VLINE, 'ORDER NO',
           20 SY-VLINE, 'ITEM NO',
           40 SY-VLINE, 'ITEM COST',
           60 SY-VLINE,
         / SY-ULINE(60).
