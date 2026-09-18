pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with System;
with System.Storage_Elements;
with Storage_Elements_Demo; use Storage_Elements_Demo;
procedure Tests is
   use type System.Address;
   use type System.Storage_Elements.Storage_Offset;
   Base : constant System.Address :=
     System.Storage_Elements.To_Address (1000);
begin
   Assert (Offset_By (Base, 8) =
           System.Storage_Elements.To_Address (1008));
   Assert (To_Addr_And_Back (42));
   Put_Line ("PASS Storage_Elements Address arithmetic / To_Address");
   Put_Line ("All Storage_Elements topic tests passed.");
end Tests;
