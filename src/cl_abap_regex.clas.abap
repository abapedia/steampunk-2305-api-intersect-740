CLASS cl_abap_regex DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA pattern TYPE string READ-ONLY.

    CLASS-METHODS create_posix
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex.
    CLASS-METHODS create_pcre
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(enable_jit) TYPE abap_bool DEFAULT abap_true
      VALUE(enable_multiline) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      VALUE(newline_mode) TYPE newline_mode OPTIONAL
      VALUE(unicode_handling) TYPE unicode_handling OPTIONAL
      VALUE(extended) TYPE abap_bool DEFAULT abap_true
      VALUE(dot_all) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex
      cx_sy_invalid_regex_operation.
    CLASS-METHODS create_xsd
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(enable_jit) TYPE abap_bool DEFAULT abap_true
      VALUE(enable_multiline) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      VALUE(newline_mode) TYPE newline_mode OPTIONAL
      VALUE(unicode_handling) TYPE unicode_handling OPTIONAL
      VALUE(relaxed_escapes) TYPE abap_bool DEFAULT abap_true
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex
      cx_sy_invalid_regex_operation.
    CLASS-METHODS create_xpath2
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(enable_jit) TYPE abap_bool DEFAULT abap_true
      VALUE(enable_multiline) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      VALUE(relaxed_escapes) TYPE abap_bool DEFAULT abap_true
      VALUE(dot_all) TYPE abap_bool DEFAULT abap_false
      VALUE(extended) TYPE abap_bool DEFAULT abap_false
      RETURNING
      VALUE(regex) TYPE REF TO cl_abap_regex
      RAISING
      cx_sy_regex
      cx_sy_invalid_regex_operation.
    METHODS constructor
      IMPORTING
      !pattern TYPE clike
      VALUE(ignore_case) TYPE abap_bool DEFAULT abap_false
      VALUE(simple_regex) TYPE abap_bool DEFAULT abap_false
      VALUE(no_submatches) TYPE abap_bool DEFAULT abap_false
      RAISING
      cx_sy_regex.

    METHODS create_matcher
      IMPORTING
      !text TYPE clike OPTIONAL
      !table TYPE STANDARD TABLE OPTIONAL
      !callout TYPE REF TO if_abap_matcher_callout OPTIONAL
      RETURNING
      VALUE(matcher) TYPE REF TO cl_abap_matcher
      RAISING
      cx_sy_matcher.
    METHODS get_regex_standard
      RETURNING
      VALUE(standard) TYPE regex_standard.
  PROTECTED SECTION.
ENDCLASS.

CLASS cl_abap_regex IMPLEMENTATION.
ENDCLASS.