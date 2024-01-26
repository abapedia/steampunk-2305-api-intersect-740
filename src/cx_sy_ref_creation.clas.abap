CLASS cx_sy_ref_creation DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_type_creation
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_ref_creation TYPE c LENGTH 32 VALUE '5F78653FE175B425E10000000A114BF5'. "#EC NOTEXT
    CONSTANTS empty_type TYPE c LENGTH 32 VALUE '6478653FE175B425E10000000A114BF5'. "#EC NOTEXT
    CONSTANTS generic_type TYPE c LENGTH 32 VALUE '6E78653FE175B425E10000000A114BF5'. "#EC NOTEXT
    CONSTANTS no_struct_type TYPE c LENGTH 32 VALUE '001560AA0E0802DBADB3F30BCF52C499'. "#EC NOTEXT
    CONSTANTS boxed_comps_not_supported TYPE c LENGTH 32 VALUE '001560AA0E0802DC8A89E23CEDE1C357'. "#EC NOTEXT
    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_ref_creation IMPLEMENTATION.
ENDCLASS.