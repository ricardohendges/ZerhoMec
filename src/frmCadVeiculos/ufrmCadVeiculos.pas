unit ufrmCadVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmVeiculos = class(TfrmBaseCrud)
    lblVEI_ID: TLabel;
    dbedtVEI_ID: TDBEdit;
    lblCLI_ID: TLabel;
    edtCLI_COD: TEdit;
    lblMARCA_VEICULO: TLabel;
    dbedtMAR_ID: TDBEdit;
    lblANO: TLabel;
    dbedtVEI_ANO: TDBEdit;
    lblVEI_MODELO: TLabel;
    dbedtVEI_MODELO: TDBEdit;
    lblVEI_PLACA: TLabel;
    dbedtVEI_PLACA: TDBEdit;
    btnPesquisaMarca: TButton;
    dbedtNomeMarca: TDBEdit;
    btnPesquisarCliente: TButton;
    edtNomeCliente: TDBEdit;
    procedure btnPesquisarClienteClick(Sender: TObject);
  protected
    procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
  end;

var
  frmVeiculos: TfrmVeiculos;

implementation

uses
  Sistema.Utils.Busca, Sistema.Utils.Types;

{$R *.dfm}
procedure TfrmVeiculos.InitializeForm;
begin

end;

function TfrmVeiculos.GetSQLPadrao: string;
begin

end;

procedure TfrmVeiculos.AfterOpen(DataSet: TDataSet);
begin

end;

procedure TfrmVeiculos.btnPesquisarClienteClick(Sender: TObject);
var
   vResult: TResBusca;
begin
   inherited;
   vResult := GSisBusca.BuscaDescricao (tbCLIENTE);
   try
      if vResult.Ok then
      begin
         //dsPadrao.DataSet.FieldByName ('').AsString := vResult.Fields['DESCRICAO'];
         //.Text := vResult.Fields['DESCRICAO'];
      end;
   finally
      FreeAndNil (vResult.Fields);
   end;
end;

end.
