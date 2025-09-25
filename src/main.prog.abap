REPORT zmain.

TYPES: BEGIN OF ty_data,
         field1 TYPE string,
         field2 TYPE i,
       END OF ty_data.

DATA: lt_data TYPE TABLE OF ty_data,
      ls_data TYPE ty_data.

START-OF-SELECTION.
  " 悪い例: SELECT * (レビューで検出される)
  SELECT * FROM usr02 INTO TABLE lt_data UP TO 10 ROWS.
  
  " ネストしたループ（警告対象）
  LOOP AT lt_data INTO ls_data.
    LOOP AT lt_data INTO ls_data WHERE field2 > 0.
      WRITE: / ls_data-field1, ls_data-field2.
    ENDLOOP.
  ENDLOOP.
