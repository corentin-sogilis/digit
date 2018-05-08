package Digit is
   type T_Char_Array is array (Natural range <>) of Character;
   type T_Digit is array (1 .. 3) of T_Char_Array (1 .. 3);
   type T_Ring is array (1 .. 3) of T_Char_Array (1 .. 30);

   Zero : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( '|', ' ', '|' ),
      ( '|', '_', '|' )
     );

   One : constant T_Digit :=
     (
      ( ' ', ' ', ' ' ),
      ( ' ', ' ', '|' ),
      ( ' ', ' ', '|' )
     );

   Two : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( ' ', '_', '|' ),
      ( '|', '_', ' ' )
     );

   Three : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( ' ', '_', '|' ),
      ( ' ', '_', '|' )
     );

   Four : constant T_Digit :=
     (
      ( ' ', ' ', ' ' ),
      ( '|', '_', '|' ),
      ( ' ', ' ', '|' )
     );

   Five : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( '|', '_', ' ' ),
      ( ' ', '_', '|' )
     );

   Six : constant T_Digit :=
     (
      ( ' ', ' ', ' ' ),
      ( '|', '_', ' ' ),
      ( '|', '_', '|' )
     );

   Seven : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( ' ', ' ', '|' ),
      ( ' ', ' ', '|' )
     );

   Eight : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( '|', '_', '|' ),
      ( '|', '_', '|' )
     );

   Nine : constant T_Digit :=
     (
      ( ' ', '_', ' ' ),
      ( '|', '_', '|' ),
      ( ' ', ' ', '|' )
     );

   procedure Display_Ring (Ring : T_Ring);
   procedure Set_Digit (Ring  : in out T_Ring;
                        Pos   :        Natural;
                        Digit :        T_Digit);
end Digit;
