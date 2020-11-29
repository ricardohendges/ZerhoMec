unit Sistema.Utils.Busca;

interface

uses
   Sistema.Utils.Types, System.Classes, FireDAC.Comp.Client;

type
   TSisBusca = class
   public
      function BuscaDescricao (ATpBusca: TTpBusca): TResBusca;
   end;

var
   GSisBusca: TSisBusca;

implementation

uses
   UFRMBusca;

{ TSisBusca }

function TSisBusca.BuscaDescricao (ATpBusca: TTpBusca): TResBusca;
begin
   Result := TFRMBusca.Exibir (ATpBusca);
end;

end.
