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
    NotadeCompra1: TMenuItem;
    Produtos1: TMenuItem;
    Marcas1: TMenuItem;
    Movimentaes1: TMenuItem;
    Financeiro1: TMenuItem;
    N1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    N3: TMenuItem;
    Pessoa1: TMenuItem;
    Localizao1: TMenuItem;
    Estado1: TMenuItem;
    Municipio1: TMenuItem;
    UnidadeMedida1: TMenuItem;
    FormaPagto1: TMenuItem;
    N2: TMenuItem;
    NotadeVenda1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContaPagar1: TMenuItem;
    Veculos1: TMenuItem;
    Cliente1: TMenuItem;
      procedure tmMenuTimer (Sender: TObject);
      procedure ActCadUsuarioExecute (Sender: TObject);
    procedure NotadeCompra1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Municipio1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure UnidadeMedida1Click(Sender: TObject);
    procedure FormaPagto1Click(Sender: TObject);
    procedure NotadeVenda1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ContaPagar1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
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

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  AbrirForm('TfrmClientes');
end;

procedure TfrmPrincipal.ContaPagar1Click(Sender: TObject);
begin
  AbrirForm('TfrmContasPagar');
end;

procedure TfrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  AbrirForm('TfrmContaReceber');
end;

procedure TfrmPrincipal.Estado1Click(Sender: TObject);
begin
  AbrirForm('TFrmEstado');
end;

procedure TfrmPrincipal.FormaPagto1Click(Sender: TObject);
begin
  AbrirForm('TfrmPagamentos');
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  AbrirForm('TFrmFornecedor');
end;

procedure TfrmPrincipal.Marcas1Click(Sender: TObject);
begin
  AbrirForm('TFrmMarcas');
end;

procedure TfrmPrincipal.Municipio1Click(Sender: TObject);
begin
  AbrirForm('TfrmMunicipio');
end;

procedure TfrmPrincipal.NotadeCompra1Click(Sender: TObject);
begin
  AbrirForm('TfrmNotasCompras');
end;

procedure TfrmPrincipal.NotadeVenda1Click(Sender: TObject);
begin
  AbrirForm('TfrmNotaVenda');
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  AbrirForm('TfrmProdServ');
end;

procedure TfrmPrincipal.tmMenuTimer (Sender: TObject);
begin
   lblDataHora.Caption := DateToStr (now());;
end;

procedure TfrmPrincipal.UnidadeMedida1Click(Sender: TObject);
begin
  AbrirForm('TFrmUnidadeMedidas');
end;

procedure TfrmPrincipal.Veculos1Click(Sender: TObject);
begin
  AbrirForm('TfrmVeiculos');
end;

end.
