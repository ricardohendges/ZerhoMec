unit Sistema.Utils.Busca;

interface

uses
   Sistema.Utils.Types, System.Classes, FireDAC.Comp.Client, System.SysUtils, Data.DB;

type
   TSisBusca = class
   private
      function GetSQLBusca (ATpBusca: TTpBusca): string;
   public
      function BuscaDescricao (ATpBusca: TTpBusca): TResBusca;
      function GetDescricao (ATpBusca: TTpBusca; ACondicao: string): TResBusca;
   end;

var
   GSisBusca: TSisBusca;

implementation

uses
   UFRMBusca, System.Generics.Collections, Sistema.Utils.Connection, Sistema.Utils.Helpers;

{ TSisBusca }

function TSisBusca.BuscaDescricao (ATpBusca: TTpBusca): TResBusca;
begin
   Result := TFRMBusca.Exibir (GetSQLBusca(ATpBusca));
end;

function TSisBusca.GetDescricao (ATpBusca: TTpBusca; ACondicao: string): TResBusca;
var
   vQuery: TFDQuery;
   vFields: TDictionary< string, string >;
   I: Integer;
begin
   vFields := TDictionary< string, string >.Create;
   vQuery := GbaseConnection.GetQueryWithConnection;
   try
      vQuery.LoadSQL (GetSQLBusca(ATpBusca) + ACondicao);
      Result.Ok := not vQuery.IsEmpty;
      if Result.Ok then
      begin
         for I := 0 to Pred(vQuery.Fields.Count) do
            vFields.Add (vQuery.Fields[I].FieldName, vQuery.Fields[I].Text);
         Result.Fields := vFields;
      end;
   finally
      vQuery.Connection.Free;
      vQuery.Free;
      Freeandnil (vFields);
   end;
end;

function TSisBusca.GetSQLBusca (ATpBusca: TTpBusca): string;
begin
   case ATpBusca of
      tbCLIENTE:
         Result := cSQL_CLIENTE;
   end;
end;

end.
