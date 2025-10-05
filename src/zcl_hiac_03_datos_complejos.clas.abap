CLASS zcl_hiac_03_datos_complejos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hiac_03_datos_complejos IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    DATA angelo TYPE string VALUE 'pellegrino'.


    TYPES:BEGIN OF lty_employee, "DECLARAR (TEMPLATE) (EL PROGRAMA SABE QUE EXISTE)
            id           TYPE i,
            name         TYPE string,
            age          TYPE i,
            departamento TYPE String,

          END OF lty_employee.

    DATA ls_employe_limpieza TYPE lty_employee. "INSTANCIA DE UN OBJETO

    DATA ls_employe_fabrica TYPE lty_employee.

    ls_employe_limpieza = VALUE #(  id           = 1234
                                    name         = 'JP'
                                    age          = 30
                                    departamento = 'Limpieza'
                                             ).

    out->write(  | ID: { ls_employe_limpieza-age } DEPARTAMENTO: { ls_employe_limpieza-departamento } | ).




*    " out->write( |ID: { ls_employee-id } NAME: { ls_employee-name } AGE: { ls_employee-age }| ).
*
**    TYPES: BEGIN OF ENUM lty_status_payment,
**             pending_payment,
**             paid,
**           END OF ENUM lty_status_payment.
**
**    DATA lv_status TYPE lty_status_payment.
**
**    lv_status = paid.
**
**   " out->write( lv_status ).

  ENDMETHOD.
ENDCLASS.
