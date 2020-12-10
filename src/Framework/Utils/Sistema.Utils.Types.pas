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

   TTpBusca = (tbCLIENTE, tbMunicipio, tbEstado, tbMarca, tbNotaCompra, tbUndMedida);

const
   cSQL_CLIENTE =
     ' SELECT CLI.CLI_ID AS ID, CLI.CLI_NOME AS DESCRICAO, ' +
     '        M.MUN_NOME AS MUNICIPIO, E.EST_SIGLA AS UF ' +
     '   FROM CLIENTE CLI ' +
     '        INNER JOIN MUNICIPIO M ON M.MUN_ID = CLI.MUN_ID ' +
     '        INNER JOIN ESTADO E ON E.EST_ID = M.EST_ID ';

   cSQL_MUNICIPIO =
     ' SELECT MUN_ID AS ID, MUN_NOME AS DESCRICAO FROM MUNICIPIO ';

   cSQL_Estado =
     ' SELECT ESTADO.EST_ID, ESTADO.EST_NOME, ESTADO.EST_SIGLA, ' +
     '        ESTADO.PAIS_NOME ' +
     '   FROM ESTADO ';

   cSQL_MARCA =
     'SELECT MARCA.MAR_ID, MARCA.MAR_NOME, MARCA.MAR_TIPO FROM MARCA';

   cSQL_NotaCompra =
     'SELECT NOTA_COMPRA.NTC_ID AS ID, NOTA_COMPRA.ntc_situacao AS DESCRICAO ' +
     '  FROM NOTA_COMPRA';

   cSQL_UndMedida =
     'SELECT UNIDADE_MEDIDA.UND_ABR AS ID, UNIDADE_MEDIDA.UND_NOME AS DESCRICAO ' +
     '  FROM UNIDADE_MEDIDA ';

implementation

end.
