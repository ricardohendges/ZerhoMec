unit Sistema.Utils.Busca;

interface

uses
   Sistema.Utils.Types, System.Classes, FireDAC.Comp.Client;

type
   TSisBusca = class
   private
      function GetSQLBusca (ATpBusca: TTpBusca): string;
   public
      function BuscaDescricao (ATpBusca: TTpBusca): TResBusca;
      function GetDescricao (ATpBusca: TTpBusca; ACondicao, ACodigo: string): TResBusca;
   end;

var
   GSisBusca: TSisBusca;

implementation

uses
   UFRMBusca, System.Generics.Collections, Sistema.Utils.Connection;

{ TSisBusca }

function TSisBusca.BuscaDescricao (ATpBusca: TTpBusca): TResBusca;
begin
   Result := TFRMBusca.Exibir (GetSQLBusca(ATpBusca));
end;

function TSisBusca.GetDescricao (ATpBusca: TTpBusca; ACondicao,
  ACodigo: string): TResBusca;
begin
   Result.Fields :=
     GbaseConnection.GetResultFromSQL (GetSQLBusca(ATpBusca) + ACondicao);
   Result.Ok := Result.Fields.Count > 0;
end;

function TSisBusca.GetSQLBusca (ATpBusca: TTpBusca): string;
begin
   case ATpBusca of
      tbCLIENTE:
         Result := cSQL_CLIENTE;
      tbMunicipio:
         Result := cSQL_MUNICIPIO;
      tbEstado:
         Result := cSQL_Estado;
      tbMarca:
         Result := cSQL_MARCA;
      tbNotaCompra:
         Result := cSQL_NotaCompra;
      tbUndMedida:
         Result := cSQL_NotaCompra;
   end;
end;

end.
