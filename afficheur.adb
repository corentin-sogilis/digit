with Digit; use Digit;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line; use  Ada.Command_Line;

procedure Afficheur is
   Ring : T_Ring := (others => (others => ' '));
   I : Integer := 1;
begin
   if Argument_Count /= 1 then
      Put_Line ("USAGE: ./afficheur NUMBER");
   else
      for C of Argument(1) loop
         case C is
            when '0' => Set_Digit (Ring, I, Zero);
            when '1' => Set_Digit (Ring, I, One);
            when '2' => Set_Digit (Ring, I, Two);
            when '3' => Set_Digit (Ring, I, Three);
            when '4' => Set_Digit (Ring, I, Four);
            when '5' => Set_Digit (Ring, I, Five);
            when '6' => Set_Digit (Ring, I, Six);
            when '7' => Set_Digit (Ring, I, Seven);
            when '8' => Set_Digit (Ring, I, Eight);
            when '9' => Set_Digit (Ring, I, Nine);
            when others => Set_Digit (Ring, I, Zero);
         end case;
         I := I + 1;
         if I > 10 then
            exit;
         end if;
      end loop;
      Display_Ring (Ring);
   end if;
end Afficheur;
