with Ada.Text_IO; use Ada.Text_IO;

package body Digit is
   procedure Display_Ring (Ring : T_Ring) is
   begin
      for Index_Line in Ring'Range loop
         for Index_Column in Ring(Index_Line)'Range loop
            Put (Ring(Index_Line)(Index_Column));
            if Index_Column mod 3 = 0 then
               Put (' ');
            end if;
         end loop;
         New_Line;
      end loop;
   end Display_Ring;

   procedure Set_Digit (Ring  : in out T_Ring;
                        Pos   :        Natural;
                        Digit :        T_Digit) is
      First : Natural := Pos * 3 - 2;
      Last : Natural  := Pos * 3;
   begin
      Ring (1)(First .. Last) := Digit (1)(1 .. 3);
      Ring (2)(First .. Last) := Digit (2)(1 .. 3);
      Ring (3)(First .. Last) := Digit (3)(1 .. 3);
   end Set_Digit;

end Digit;
