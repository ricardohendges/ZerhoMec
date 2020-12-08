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

   TTpBusca = (tbCLIENTE, tbMunicipio);

const
   cSQL_CLIENTE =
     ' SELECT CLI.CLI_ID AS ID, CLI.CLI_NOME AS D  ESCRICAO, ' +
     '        M.MUN_NOME AS MUNICIPIO, E.EST_SIGLA AS UF ' +
     '   FROM CLIENTE CLI ' +
     '        INNER JOIN MUNICIPIO M ON M.MUN_ID = CLI.MUN_ID ' +
     '        INNER JOIN ESTADO E ON E.EST_ID = M.EST_ID ';

   cSQL_MUNICIPIO =
     ' SELECT MUN_ID AS ID, MUN_NOME AS DESCRICAO FROM MUNICIPIO ';

implementation

end.
