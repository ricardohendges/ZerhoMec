unit ufrmPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
   TfrmPrincipal = class(TForm)
      mmPrincipal: TMainMenu;
      Cadastro1: TMenuItem;
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
