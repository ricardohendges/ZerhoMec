unit Sistema.Utils.UtilsDB;

interface

type
  TUitlsDB = class

    class function BuscarProximoID(ANomeTabela, ANomeCampo: String): String;
  end;

implementation

uses
  ufrmBaseDm, System.SysUtils, Vcl.Dialogs;

class function TUitlsDB.BuscarProximoID(ANomeTabela,
  ANomeCampo: String): String;
const
  CSql = 'SELECT MAX(%0:S) FROM %1:S';
begin

  try

    frmBaseDM.FDSqlUtilsDB.Open(Format(CSql, [ANomeCampo, ANomeTabela]));

    result := frmBaseDM.FDSqlUtilsDB.FieldByName(ANomeCampo).AsInteger;

  Except
    on e: Exception do
      ShowMessage('Erro, ao tentar realizar a consulta do ID!!');
  end;

end;

end.
