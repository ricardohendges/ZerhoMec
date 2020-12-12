unit ufrmCadVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmBaseCrud, Data.DB, frxClass, frxDBSet, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmVeiculos = class(TfrmBaseCrud)
    lblVEI_ID: TLabel;
    dbedtVEI_ID: TDBEdit;
    lblCLI_ID: TLabel;
    lblMARCA_VEICULO: TLabel;
    lblANO: TLabel;
    dbedtVEI_ANO: TDBEdit;
    lblVEI_MODELO: TLabel;
    dbedtVEI_MODELO: TDBEdit;
    lblVEI_PLACA: TLabel;
    dbedtVEI_PLACA: TDBEdit;
    btnPesquisaMarca: TButton;
    dbedtNomeMarca: TDBEdit;
    btnPesquisarCliente: TButton;
    dbedtMAR_ID: TDBEdit;
    dbedtCLI_COD: TDBEdit;
    dbedtCLI_NOME: TDBEdit;
    procedure btnPesquisarClienteClick(Sender: TObject);
    procedure btnPesquisaMarcaClick(Sender: TObject);
  protected
    procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
  end;

var
  frmVeiculos: TfrmVeiculos;

implementation

uses
  Sistema.Utils.Busca, Sistema.Utils.Types, Sistema.Utils.Grid;

{$R *.dfm}
procedure TfrmVeiculos.InitializeForm;
begin
  inherited;
  // ????????? wtf!
end;

function TfrmVeiculos.GetSQLPadrao: string;
begin
  Result := 'SELECT v.vei_id,v.mar_id, m.mar_nome, m.mar_nome, v.vei_modelo, v.vei_ano, ' + 'v.vei_placa, V.cli_id, c.cli_nome' + ' FROM VEICULO V' + ' JOIN MARCA M ON M.mar_id = V.mar_id' + ' join cliente C ON C.cli_id = V.cli_id';

  dsPadrao.DataSet.Open;
end;

procedure TfrmVeiculos.AfterOpen(DataSet: TDataSet);
var
  vColunas: TGridColunas;
begin
  vColunas := TGridColunas.Create(dbgrdPrincipal);
  try
    vColunas.Add('VEI_ID', 'Código');
    vColunas.Add('MAR_NOME', 'Marca');
    vColunas.Add('VEI_MODELO', 'Modelo');
    vColunas.Add('VEI_ANO', 'Ano');
    vColunas.Add('VEI_PLACA', 'Placa');
    vColunas.Add('CLI_ID', 'Código Cliente');
    vColunas.Add('CLI_NOME', 'Nome');
  finally
    vColunas.Free;
  end;
end;

procedure TfrmVeiculos.btnPesquisaMarcaClick(Sender: TObject);
var
  vResult: TResBusca;
begin
  inherited;
  vResult := GSisBusca.BuscaDescricao(tbMARCA);
  try
    if vResult.Ok then
    begin
      dsPadrao.DataSet.FieldByName('MAR_ID').AsString := vResult.Fields['MAR_ID'];
      dsPadrao.DataSet.FieldByName('MAR_NOME').AsString := vResult.Fields['MAR_NOME'];
    end;
  finally
    FreeAndNil(vResult.Fields);
  end;
end;

procedure TfrmVeiculos.btnPesquisarClienteClick(Sender: TObject);
var
  vResult: TResBusca;
begin
  inherited;
  vResult := GSisBusca.BuscaDescricao(tbCLIENTE);
  try
    if vResult.Ok then
    begin
      dsPadrao.DataSet.FieldByName('CLI_ID').AsString := vResult.Fields['CLI_ID'];
      dsPadrao.DataSet.FieldByName('CLI_NOME').AsString := vResult.Fields['CLI_NOME'];
    end;
  finally
    FreeAndNil(vResult.Fields);
  end;
end;

initialization
  RegisterClass(TfrmVeiculos);

finalization
  UnRegisterClass(TfrmVeiculos);

end.

