#
REPORT zbad_example.

DATA: lt_users TYPE TABLE OF usr02.

START-OF-SELECTION.
  " 問題1: SELECT * の使用
  SELECT * FROM usr02 INTO TABLE lt_users.
  
  " 問題2: ネストしたループ
  LOOP AT lt_users INTO DATA(ls_user).
    LOOP AT lt_users INTO DATA(ls_user2).
      LOOP AT lt_users INTO DATA(ls_user3).
        WRITE: ls_user-bname.
      ENDLOOP.
    ENDLOOP.
  ENDLOOP.
  
  " 問題3: マジックナンバー
  IF lines( lt_users ) > 100.
    MESSAGE 'Too many users' TYPE 'E'.
  ENDIF.
