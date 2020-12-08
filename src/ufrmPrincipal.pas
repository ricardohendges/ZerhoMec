unit ufrmPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
   Vcl.ExtCtrls, Vcl.StdCtrls, Sistema.Utils.Forms, System.Actions, Vcl.ActnList;

type
   TfrmPrincipal = class(TForm)
      mmPrincipal: TMainMenu;
      Cadastro1: TMenuItem;
      pnlBottonBar: TPanel;
      lblDataHora: TLabel;
      tmMenu: TTimer;
      lblUsuarioLogado: TLabel;
      actListMenu: TActionList;
      ActCadUsuario: TAction;
      miCadastroUsuario: TMenuItem;
      procedure tmMenuTimer (Sender: TObject);
      procedure ActCadUsuarioExecute (Sender: TObject);
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


{ ------------------------------------------
  @Autor    Djonatan
  @Objetive Abrir form de gerenciamento de usu�rios.
  ---------------------------------------------
}
procedure TfrmPrincipal.ActCadUsuarioExecute (Sender: TObject);
begin
   AbrirForm ('TfrmCadLogin');
end;

procedure TfrmPrincipal.tmMenuTimer (Sender: TObject);
begin
   lblDataHora.Caption := DateToStr (now());
end;

Initialization

RegisterClass (TfrmPrincipal);

finalization

UnRegisterClass (TfrmPrincipal);

end.
