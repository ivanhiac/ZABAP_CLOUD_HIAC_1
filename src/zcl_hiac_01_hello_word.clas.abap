CLASS zcl_hiac_01_hello_word DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hiac_01_hello_word IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( |hola pablo| ).
  ENDMETHOD.
ENDCLASS.
