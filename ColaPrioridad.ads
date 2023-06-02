generic
   type Telemento is private;
   with function ">" (Izq, Der: in Telemento) return Boolean;
   
   package ColaPrioridad is
      type Tcolap (Max: Positive) is private;
      Overflow: exception;
      Underflow: exception;
      procedure Inicializar (Colap: in out Tcolap);
      procedure Insertar (Colap: in out Tcolap; Elemento: in Telemento);
      procedure Suprimir (Colap: in out Tcolap; Elemento: out Telemento);
      function Llena (Colap: in Tcolap) return Boolean;
      function Vacia (Colap: in Tcolap) return Boolean;
      
      private
      type Veccola is array (Positive range <>) of Telemento;
      type Tcolap (Max: Positive) is record
         Final: Natural:= 0;
         Elementos: Veccola (1..Max);
      end record;
      
   end ColaPrioridad;
   
