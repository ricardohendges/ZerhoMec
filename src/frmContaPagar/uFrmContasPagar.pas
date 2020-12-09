unit uFrmContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, frxClass, frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxGradient, frxRich;

type
  TfrmContasPagar = class(TfrmBaseCrud)
    SpeedButton1: TSpeedButton;
    dbContaPagar_ID: TDBEdit;
    dbNotaCompra_ID: TDBEdit;
    dbContaPagar_Valor: TDBEdit;
    dbFornecedor_ID: TDBEdit;
    dbParcela: TDBEdit;
    dbSaldo: TDBEdit;
    lbCPG_ID: TLabel;
    lblValorCPG: TLabel;
    lblNFC_ID: TLabel;
    lblFornecedor_ID: TLabel;
    lblSaldo: TLabel;
    lblVencimento: TLabel;
    lblParcela: TLabel;
    dbDataVecto: TDBEdit;
    tbBaixaPgtos: TTabSheet;
    pnlBaixaPagtos: TPanel;
    DBBaixa_PgtosID: TDBEdit;
    BDCPG_ID_FK: TDBEdit;
    pnlgrdBaixaPgtos: TPanel;
    DBgrdBaixaPgtos: TDBGrid;
    FDBaixaPgtos: TFDQuery;
    dsBaixaPgtos: TDataSource;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    DBBPA_MULTA: TDBEdit;
    DBBPA_JUROS: TDBEdit;
    DBFPA_ID: TDBEdit;
    DBBPA_DATA: TDBEdit;
    DBBPA_DESCONTO: TDBEdit;
    DBBPA_VALOR: TDBEdit;
    lblCPG_ID_FK: TLabel;
    lblBPA_ID: TLabel;
    lblForma_PagtoID: TLabel;
    lblDataBaixa: TLabel;
    lblMulta_Pgto: TLabel;
    lblValor_Pgto: TLabel;
    lblJuros_Pgto: TLabel;
    lblDesconto_Pgto: TLabel;
    frxDBBaixaPgtos: TfrxDBDataset;
    procedure pgcPrincipalChange(Sender: TObject);
  protected
    procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    function GetDataSetAtivo: TFDQuery; override;
      function GetGridAtiva: TDBGrid; override;
      function GetPanelCad: TPanel; override;
  end;


implementation

{$R *.dfm}

uses Sistema.Utils.Grid, ufrmBaseDM, Sistema.Utils.Busca;

function TfrmContasPagar.GetDataSetAtivo: TFDQuery;
begin
  Result := FDPadrao;
  if pgcPrincipal.ActivePage = tbBaixaPgtos then
    Result := FDBaixaPgtos;
end;

function TfrmContasPagar.GetGridAtiva: TDBGrid;
begin
     Result := dbgrdPrincipal;
if pgcPrincipal.ActivePage = tbBaixaPgtos then
    Result := DBgrdBaixaPgtos;

end;

function TfrmContasPagar.GetPanelCad: TPanel;
begin
Result := pnlPrincipal;
if pgcPrincipal.ActivePage = tbBaixaPgtos then
    Result := pnlBaixaPagtos;

end;

function TfrmContasPagar.GetSQLPadrao: string;
begin
  Result := 'SELECT ' + ' CONTA_PAGAR.CPG_ID, ' + 'CONTA_PAGAR.NTC_ID, ' +
    'CONTA_PAGAR.FOR_ID, ' + 'CONTA_PAGAR.CPG_VALOR, ' +
    'CONTA_PAGAR.CPG_VENCIMENTO, ' + 'CONTA_PAGAR.CPG_SALDO, ' +
    'CONTA_PAGAR.CPG_PARCELA ' + 'FROM CONTA_PAGAR';
end;


procedure TfrmContasPagar.AfterOpen (DataSet: TDataSet);
var
   vColunas: TGridColunas;
begin
    inherited;
   vColunas := TGridColunas.Create (dbgrdPrincipal);
   try
      vColunas.Add ('CPG_ID', 'ID Conta Pagar');
      vColunas.Add ('NTC_ID', 'ID Nota Compra');
      vColunas.Add ('FOR_ID', 'ID Fornecedor');
      vColunas.Add ('CPG_VALOR', 'VALOR');
      vColunas.Add ('CPG_SALDO', 'SALDO');
      vColunas.Add ('CPG_VENCIMENTO', 'VENCIMENTO');
      vColunas.Add ('CPG_PARCELA', 'PARCELA');
   finally
      vColunas.Free;
   end;
end;

procedure TfrmContasPagar.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := dbContaPagar_ID;
  FControlFocus.CompFocusEdit := dbContaPagar_Valor;

end;

procedure TfrmContasPagar.pgcPrincipalChange(Sender: TObject);
begin
  inherited;
  if pgcPrincipal.ActivePage = tbBaixaPgtos then
    FDBaixaPgtos.Open;
end;

initialization

RegisterClass(TfrmContasPagar);

finalization

UnRegisterClass(TfrmContasPagar);

end.

