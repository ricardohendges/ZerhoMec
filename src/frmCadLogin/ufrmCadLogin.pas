unit ufrmCadLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmCadLogin = class(TfrmBaseCrud)
    dbEdtCodigo: TDBEdit;
    dbEdtNome: TDBEdit;
    dbEdtUsername: TDBEdit;
    dbEdtSenha: TDBEdit;
    edtConfirmarSenha: TEdit;
    grpValidarSenha: TGroupBox;
    lblConfirmarSenha: TLabel;
    lblSenha: TLabel;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblUsuario: TLabel;
    dbCbTipoUsuario: TDBComboBox;
    lblTipoUsuario: TLabel;
    procedure actInserirExecute(Sender: TObject);
  protected
    function GetSQLPadrao: string; override;
  end;

var
  frmCadLogin: TfrmCadLogin;

implementation

uses
  Sistema.Utils.Busca, Sistema.Utils.Types, Sistema.Utils.UtilsDB;

{$R *.dfm}

procedure TfrmCadLogin.actInserirExecute(Sender: TObject);
begin

  inherited;

  dsPadrao.DataSet.FieldByName('USU_ID').AsInteger :=
    TUitlsDB.BuscarProximoID('USUARIO', 'USU_ID');

end;

function TfrmCadLogin.GetSQLPadrao: string;
begin
  Result := ' SELECT USUARIO.USU_ID, USUARIO.USU_LOGIN, USUARIO.USU_SENHA, ' +
    '        USUARIO.USU_NOME, USUARIO.USU_TIPO ' + '   FROM USUARIO ';
end;

initialization

RegisterClass(TfrmCadLogin);

finalization

UnRegisterClass(TfrmCadLogin);

end.
