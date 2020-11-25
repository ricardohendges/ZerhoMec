unit Sistema.Utils.Busca;

interface

uses
   Sistema.Utils.Types, System.Classes, FireDAC.Comp.Client;

type
   TSisBusca = class
   public
      function Open (ATpBusca: TTpBusca): TResBusca;
   end;

var
   GSisBusca: TSisBusca;

implementation

uses
   UFRMBusca;

{ TSisBusca }

function TSisBusca.Open (ATpBusca: TTpBusca): TResBusca;
begin
   Result := TFRMBusca.Exibir ();
end;

end.
