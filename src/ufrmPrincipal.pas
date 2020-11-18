unit ufrmPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
   TfrmPrincipal = class(TForm)
      mmPrincipal: TMainMenu;
      Cadastro1: TMenuItem;
      Login1: TMenuItem;
      procedure Login1Click (Sender: TObject);
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   frmPrincipal: TfrmPrincipal;

implementation

uses
   Sistema.Utils.Forms;

{$R *.dfm}


procedure TfrmPrincipal.Login1Click (Sender: TObject);
begin
   AbrirForm ('TfrmCadLogin');
end;

end.
