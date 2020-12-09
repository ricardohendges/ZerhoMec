unit ufrmCadLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    procedure actSalvarExecute(Sender: TObject);
    procedure edtConfirmarSenhaExit(Sender: TObject);
    procedure EdtPesquisarChange(Sender: TObject);
  protected
    function GetSQLPadrao: string; override;

  private

    Procedure ValidouSenha;

  end;

implementation

uses
  Sistema.Utils.Busca, Sistema.Utils.Types, Sistema.Utils.Connection;

{$R *.dfm}

procedure TfrmCadLogin.actSalvarExecute(Sender: TObject);
begin

  ValidouSenha;

  inherited;
end;

procedure TfrmCadLogin.edtConfirmarSenhaExit(Sender: TObject);
begin
  inherited;

  ValidouSenha;
end;

procedure TfrmCadLogin.EdtPesquisarChange(Sender: TObject);
var
  LCampoFiltro, LOperador: String;
begin

  inherited;

  case cbbCampos.ItemIndex of

    0:
      LCampoFiltro := 'UPPER(USU_ID) = ' + EdtPesquisar.Text;

    1:
      LCampoFiltro := 'UPPER(USU_NOME) LIKE(''%' +
        UpperCase(EdtPesquisar.Text) + '%'')';

    2:
      LCampoFiltro := 'UPPER(USU_TIPO) LIKE(''%' +
        UpperCase(EdtPesquisar.Text) + '%'')';

  end;

  FDPadrao.Filtered := False;
  FDPadrao.Filter := LCampoFiltro + LOperador;
  FDPadrao.Filtered := True;

end;

function TfrmCadLogin.GetSQLPadrao: string;
begin

  Result := ' SELECT USUARIO.USU_ID, USUARIO.USU_LOGIN, USUARIO.USU_SENHA, USUARIO.USU_NOME, USUARIO.USU_TIPO FROM USUARIO ';

end;

procedure TfrmCadLogin.ValidouSenha;
begin

  If (dbEdtSenha.Text <> edtConfirmarSenha.Text) And
    (dsPadrao.DataSet.State = dsInsert) then
  Begin

    ShowMessage('As senhas não são iguais');

    edtConfirmarSenha.Clear;

    if dbEdtSenha.CanFocus then
      dbEdtSenha.SetFocus;

    abort;

  End;

end;

initialization

RegisterClass(TfrmCadLogin);

finalization

UnRegisterClass(TfrmCadLogin);

end.
