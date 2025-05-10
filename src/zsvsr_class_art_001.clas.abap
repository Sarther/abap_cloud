CLASS zsvsr_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsvsr_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lit_art TYPE STANDARD TABLE OF zsvsr_tab_art.

     lit_art = VALUE #(
    ( client = sy-mandt id_art = 1  descr = 'Mini colores' descr2 = 'Un mini estuche, con mini colores'
      color  = 'varios' piezas = 12 stock = 10
      url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_600x.jpg?v=1676577703' )
    ( client = sy-mandt id_art = 2  descr = 'Monthly Planner' descr2 = 'Deal para planificar tus metas y proyectos.'
      color  = 'negro' piezas = 1 stock = 100
      url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-1_c5c1f533-8cbd-4cab-b7d8-8fe1125dff3c_600x.jpg?v=1700616264' )

    ( client = sy-mandt id_art = 3  descr = 'Marcadores' descr2 = 'Zebra Mildliner Colores Suaves.'
      color  = 'varios' piezas = 5 stock = 20
      url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-pasteles-02_e027eb64-5d57-4825-ac1a-d09b8032e091_600x.jpg?v=1741728081' )

    ( client = sy-mandt id_art = 4  descr = 'Lapíz' descr2 = 'Tombow 2558 #HB.'
      color  = 'negro' piezas = 1 stock = 1
      url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-tombow2558-1_600x.jpg?v=1711139173' )
    ).

    INSERT zsvsr_tab_art FROM TABLE @lit_art.

*    DELETE zsvsr_tab_art FROM TABLE @lit_art.

    if sy-subrc IS INITIAL.
      out->write( 'Datos insertados exitosamente.' ).
    else.
      out->write( 'Datos no insertados.' ).
    endif.

  ENDMETHOD.
ENDCLASS.
