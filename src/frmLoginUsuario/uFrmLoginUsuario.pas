unit uFrmLoginUsuario;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
   FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
   FireDAC.Stan.Async, FireDAC.DApt, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, ufrmBaseDm;

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
      BtnConectar: TSpeedButton;
      BtnSair: TSpeedButton;
    Button1: TButton;
      procedure BtnConectarClick (Sender: TObject);
      procedure BtnSairClick (Sender: TObject);
   private
      Function ValidarLoginUsuario: Boolean;
      function GetConnection: TFDConnection;
      Procedure ValidarCampos;
      Procedure SimularBarraProgresso;
   public
      constructor Create (AOwner: TComponent); override;
      destructor Destroy; override;
   end;

Var
   frmLoginUsuario: TfrmLoginUsuario;

implementation

Uses
   Sistema.Utils.Forms;

{$R *.dfm}


{ --------------------------------------------------
  @Autor     Djonatan
  @Objetive
  -------------------------------------------------- }
procedure TfrmLoginUsuario.BtnConectarClick (Sender: TObject);
Const
   CMsgLoginAprovado = 'Bem vindo %s !!';
   CMsgLoginIncorreto = 'Nome de usuário ou senha está incorreto!!';
begin
   // Verifica se os campos usuário e senha estão com informações.
   ValidarCampos;
   if ValidarLoginUsuario then
   Begin
      ShowMessage (Format(CMsgLoginAprovado, [
      { 0 } fdSql.FieldByName('USU_NOME').AsString]));
      ModalResult := mrOk;
      Close;
   End
   else
   Begin
      ShowMessage (CMsgLoginIncorreto);
      // Validar se podera receber o foco.
      if edtUsuario.CanFocus then
         edtUsuario.SetFocus;
   End;
end;

{ --------------------------------------------------
  @Autor     Djonatan
  @Objetive
  -------------------------------------------------- }
procedure TfrmLoginUsuario.BtnSairClick (Sender: TObject);
begin
   if MessageDlg ('Deseja fechar o sistema?', mtConfirmation, mbYesNo, 1) = mrYes then
   begin
      ModalResult := mrCancel;
      Close;
   end;
end;

constructor TfrmLoginUsuario.Create (AOwner: TComponent);
begin
   inherited;
   fdSql.Connection := GetConnection;
end;

destructor TfrmLoginUsuario.Destroy;
begin
   fdSql.Connection.Free;
   inherited;
end;

function TfrmLoginUsuario.GetConnection: TFDConnection;
var
   vCustom: TFDConnection;
begin
   if FileExists ('..\\DB\Config.ini') then
   begin
      vCustom := TFDConnection.Create (nil);
      vCustom.Params.LoadFromFile ('..\\DB\Config.ini');
      vCustom.Connected := True;
      Result := vCustom;
   end;
end;

procedure TfrmLoginUsuario.SimularBarraProgresso;
var
   I: Integer;
begin
   For I := 1 to 100 do
   Begin
      pgbProgresso.Position := pgbProgresso.Position + 1;
      Sleep (100);
   end;
end;

procedure TfrmLoginUsuario.ValidarCampos;
begin

   if Trim (edtUsuario.Text) = EmptyStr then
   Begin

      ShowMessage ('O campo "Nome de usuário" é de preenchimento obrigatório!');

      if edtUsuario.CanFocus then
         edtUsuario.SetFocus;

      Abort;
   End;

   if Trim (EdtSenha.Text) = EmptyStr then
   Begin

      ShowMessage ('O campo "Senha" é de preenchimento obrigatório!');

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
   CSqlValidarLogin =
     'SELECT USUARIO.USU_ID,      ' +
     '       USUARIO.USU_LOGIN,   ' + '       USUARIO.USU_SENHA,   ' +
     '       USUARIO.USU_NOME,    ' + '       USUARIO.USU_TIPO     ' +
     '  FROM USUARIO              ' +
     ' WHERE UPPER(USUARIO.USU_LOGIN) = UPPER(%0:S) ' +
     '   AND UPPER(USUARIO.USU_SENHA) = UPPER(%1:S) ';
Begin
   fdSql.Open (Format(CSqlValidarLogin, [
      { 0 } QuotedStr(edtUsuario.Text),
      { 1 } QuotedStr(EdtSenha.Text)]));
   Result := Not fdSql.IsEmpty;
end;

end.
