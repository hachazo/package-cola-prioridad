with Monticulo_franco_garcia;

package body ColaPrioridad is
   
   package Monticulocp is new Monticulo(Telemento, Veccola, ">");
   use Monticulocp;
   
   procedure Inicializar (Colap: in out Tcolap) is
   begin
      Colap.Final:= 0;
   end Inicializar;
   
   procedure Insertar (Colap: in out Tcolap; Elemento: in Telemento) is
   begin
      if Colap.Final = Colap.Max then
         raise Overflow;
      else
         Colap.Final:= Colap.Final+1;
         Colap.Elementos(Colap.Final):= Elemento;
         Restaurararriba(Colap.Elementos(1..Colap.Final));
      end if;
   end Insertar;
   
   procedure Suprimir (Colap: in out Tcolap; Elemento: out Telemento) is
   begin
      if Colap.Final= 0 then
         raise Underflow;
      else
         Elemento:= Colap.Elementos(1);
         Colap.Elementos(1):= Colap.Elementos(Colap.Final);
         Restaurarabajo(Colap.Elementos(1..Colap.Final));
      end if;
   end Suprimir;
   
   function Llena (Colap: in Tcolap) return Boolean is
   begin
      return Colap.Final=Colap.Max;
   end Llena;
   
   function Vacia (Colap: in Tcolap) return Boolean is
   begin
      return Colap.Final =0;
   end Vacia;

end ColaPrioridad;
