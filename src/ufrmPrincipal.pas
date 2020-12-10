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
    Marcas1: TMenuItem;
    Estado1: TMenuItem;
    UnidadeMedidas1: TMenuItem;
    Fornecedor1: TMenuItem;
      procedure tmMenuTimer (Sender: TObject);
      procedure ActCadUsuarioExecute (Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure UnidadeMedidas1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
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

procedure TfrmPrincipal.Estado1Click(Sender: TObject);
begin
 AbrirForm ('TfrmEstado');
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
 AbrirForm ('TfrmFornecedor');
end;

procedure TfrmPrincipal.Marcas1Click(Sender: TObject);
begin
 AbrirForm ('TfrmMarca');
end;

procedure TfrmPrincipal.tmMenuTimer (Sender: TObject);
begin
   lblDataHora.Caption := DateToStr (now());;
end;

procedure TfrmPrincipal.UnidadeMedidas1Click(Sender: TObject);
begin
 AbrirForm ('TFrmUnidadeMedidas');
end;

end.
