pragma Ada_2022;
package body Storage_Elements_Demo is
   function Offset_By
     (A : System.Address; N : SE.Storage_Offset) return System.Address
   is
      use type SE.Storage_Offset;
   begin
      return A + N;
   end Offset_By;
   function To_Addr_And_Back (N : Integer) return Boolean is
      A : constant System.Address := SE.To_Address
        (SE.Integer_Address (N));
      M : constant Integer := Integer (SE.To_Integer (A));
   begin
      return M = N;
   end To_Addr_And_Back;
end Storage_Elements_Demo;
