REPORT zhello_world_v1.

CLASS zcl_hello_world DEFINITION.
  PUBLIC SECTION.
    METHODS: say_hello.
ENDCLASS.

CLASS zcl_hello_world IMPLEMENTATION.
  METHOD say_hello.
    DATA(lv_name) = 'ABAP Developer'.
    cl_demo_output=>display( |Hello, { lv_name }!| ).
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(lo_hello) = NEW zcl_hello_world( ).
  lo_hello->say_hello( ).
