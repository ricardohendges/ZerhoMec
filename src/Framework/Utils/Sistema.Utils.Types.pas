unit Sistema.Utils.Types;

interface

uses
   Vcl.DBCtrls, System.Classes, System.Generics.Collections;

type
   TFormActive = record
      CompFocusInsert: TDBEdit;
      CompFocusEdit: TDBEdit;
   end;

   TResBusca = record
      Ok: Boolean;
      Fields: TDictionary< String, string >;
   end;

   TTpBusca = (tbCLIENTE);

const
   cSQL_CLIENTE =
     ' SELECT CLI.CLI_ID AS ID, CLI.CLI_NOME AS DESCRICAO, ' +
     '        M.MUN_NOME AS MUNICIPIO, E.EST_SIGLA AS UF ' +
     '   FROM CLIENTE CLI ' +
     '        INNER JOIN MUNICIPIO M ON M.MUN_ID = CLI.MUN_ID ' +
     '        INNER JOIN ESTADO E ON E.EST_ID = M.EST_ID ';

implementation

end.
