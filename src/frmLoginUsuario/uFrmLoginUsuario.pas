unit uFrmLoginUsuario;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, System.UITypes,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, ufrmBaseDm, System.ImageList,
   Vcl.ImgList;

type
   TfrmLoginUsuario = class(TForm)
      tmLogin: TTimer;
      pgbProgresso: TProgressBar;
      fdSql: TFDQuery;
      imgSistema: TImage;
      GroupBox1: TGroupBox;
      edtUsuario: TEdit;
      lblUsuario: TLabel;
      EdtSenha: TEdit;
      Label1: TLabel;
      btnSair: TButton;
      btnEntrar: TButton;
      procedure BtnSairClick (Sender: TObject);
      procedure btnEntrarClick (Sender: TObject);
   private
      Function ValidarLoginUsuario: Boolean;
      Procedure ValidarCampos;
   public
      constructor Create (AOwner: TComponent); override;
      destructor Destroy; override;
   end;

implementation

Uses
  Sistema.Utils.Forms, Sistema.Utils.Connection;

{$R *.dfm}

{ --------------------------------------------------
  @Autor     Djonatan
  @Objetive
  -------------------------------------------------- }
procedure TfrmLoginUsuario.btnEntrarClick(Sender: TObject);
Const
  CMsgLoginIncorreto = 'Nome de usu�rio ou senha est� incorreto!!';
begin

  // Verifica se os campos usu�rio e senha est�o com informa��es.
  ValidarCampos;

  if not ValidarLoginUsuario then
  Begin

    ShowMessage(CMsgLoginIncorreto);
    // Validar se podera receber o foco.

    if edtUsuario.CanFocus then
      edtUsuario.SetFocus;

    ModalResult := mrNone;

  End;

end;

procedure TfrmLoginUsuario.BtnSairClick(Sender: TObject);
begin
  if MessageDlg('Deseja fechar o sistema?', mtConfirmation, mbYesNo, 1) = mrYes
  then
    Close;
end;

constructor TfrmLoginUsuario.Create(AOwner: TComponent);
begin
  inherited;
  fdSql.Connection := GbaseConnection.GetConnection;
end;

destructor TfrmLoginUsuario.Destroy;
begin
  fdSql.Connection.Free;
  inherited;
end;

procedure TfrmLoginUsuario.ValidarCampos;
begin

  if Trim(edtUsuario.Text) = EmptyStr then
  Begin

    ShowMessage('O campo "Nome de usu�rio" � de preenchimento obrigat�rio!');

    if edtUsuario.CanFocus then
      edtUsuario.SetFocus;

    Abort;

  End;

  if Trim(EdtSenha.Text) = EmptyStr then
  Begin

    ShowMessage('O campo "Senha" � de preenchimento obrigat�rio!');

    if EdtSenha.CanFocus then
      EdtSenha.SetFocus;

    Abort;

  End;

end;

{ --------------------------------------------------
  @Autor     Djonatan
  @Objetive  Validar dados informados no form de Login
  -------------------------------------------------- }
function TfrmLoginUsuario.ValidarLoginUsuario: Boolean;
Const
  CSqlValidarLogin = 'SELECT USUARIO.USU_ID,      ' +
    '       USUARIO.USU_LOGIN,   ' + '       USUARIO.USU_SENHA,   ' +
    '       USUARIO.USU_NOME,    ' + '       USUARIO.USU_TIPO     ' +
    '  FROM USUARIO              ' +
    ' WHERE UPPER(USUARIO.USU_LOGIN) = UPPER(%0:S) ' +
    '   AND UPPER(USUARIO.USU_SENHA) = UPPER(%1:S) ';
Begin

  fdSql.Open(Format(CSqlValidarLogin, [
    { 0 } QuotedStr(edtUsuario.Text),
    { 1 } QuotedStr(EdtSenha.Text)]));

  Result := Not fdSql.IsEmpty;

end;

end.
