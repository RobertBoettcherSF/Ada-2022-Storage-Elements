--  Ada 2022 topic: System.Storage_Elements.
pragma Ada_2022;
with System;
with System.Storage_Elements;
package Storage_Elements_Demo is
   package SE renames System.Storage_Elements;
   function Offset_By
     (A : System.Address; N : SE.Storage_Offset) return System.Address;
   function To_Addr_And_Back (N : Integer) return Boolean;
end Storage_Elements_Demo;
