CLASS zcl_utils DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: calculate_total
      IMPORTING iv_amount TYPE p
      RETURNING VALUE(rv_total) TYPE p.

ENDCLASS.

CLASS zcl_utils IMPLEMENTATION.
  METHOD calculate_total.
    " マジックナンバー使用（警告対象）
    rv_total = iv_amount * 1.1.
  ENDMETHOD.
ENDCLASS.
