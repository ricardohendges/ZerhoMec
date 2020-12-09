unit ufrmNotaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmNotaVenda = class(TfrmBaseCrud)
    dbedtNvCliID: TDBEdit;
    dbedtNvFpID: TDBEdit;
    dbedtNvAvista: TDBEdit;
    dbedtNvSituacao: TDBEdit;
    dbedtNvValor: TDBEdit;
    dbedtNvData: TDBEdit;
    dbedtNvID: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    tsNotaItemVenda: TTabSheet;
    pnlItemNTV: TPanel;
    pnlItemNTVGrid: TPanel;
    dbgrdItemVenda: TDBGrid;
    FDQueryItemNTV: TFDQuery;
    dsItemNTV: TDataSource;
    dbedtItvNvID: TDBEdit;
    dbedtItvProID: TDBEdit;
    dbedtItvUndAbr: TDBEdit;
    dbedtItvValor: TDBEdit;
    dbedtItvQtde: TDBEdit;
    dbedtItvTotal: TDBEdit;
    dbedtItvID: TDBEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    dbnvgr1: TDBNavigator;
    frxdbdtItem: TfrxDBDataset;
    procedure pgcPrincipalChange(Sender: TObject);
    procedure FDQueryItemNTVNewRecord(DataSet: TDataSet);
    procedure FDQueryItemNTVAfterOpen(DataSet: TDataSet);

  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
    function GetDataSetAtivo: TFDQuery; override;
    function GetGridAtiva: TDBGrid; override;
    function GetPanelCad: TPanel; override;

  end;

implementation

uses
  Sistema.Utils.Grid, Sistema.Utils.Types, ufrmBaseDM;

{$R *.dfm}
{ TfrmBaseCrud1 }

procedure TfrmNotaVenda.AfterOpen(DataSet: TDataSet);
var
  vColunas: TGridColunas;
begin
  vColunas := TGridColunas.Create(dbgrdPrincipal);

  try
    vColunas.Add('NTV_ID', 'ID', 0, '0');
    vColunas.Add('FPA_ID', 'Forma Pgto', 0, '0');
    vColunas.Add('CLI_ID', 'ID Cliente', 0, '0');
    vColunas.Add('NTV_DATA', 'Data');
    vColunas.Add('NTV_SITUACAO', 'Situação');
    vColunas.Add('CLI_NOME', 'Cliente');
    vColunas.Add('CLI_CPF', 'CPF');
    vColunas.Add('CLI_TELEFONE', 'Telefone');
    vColunas.Add('FPA_DESC', 'Descrição');
    vColunas.Add('NTV_ID', 'Valor');
  finally
    vColunas.Free;
  end;
end;

procedure TfrmNotaVenda.FDQueryItemNTVAfterOpen(DataSet: TDataSet);
var
vColunas : TGridColunas;
begin
  vColunas := TGridColunas.Create(dbgrdItemVenda);

  try
    vColunas.Add('ITV_ID', 'ID Item', 0, '0');
    vColunas.Add('NTV_ID', 'ID Nota Venda', 0, '0');
    vColunas.Add('PRO_ID', 'ID Produto', 0, '0');
    vColunas.Add('UND_ABR', 'Unidade');
    vColunas.Add('ITV_VALOR', 'Preço');
    vColunas.Add('ITV_QTDE', 'Quantidade');
    vColunas.Add('ITV_TOTAL', 'Valor Total');
    vColunas.Add('PRO_NOME', 'Produto');
    vColunas.Add('CLI_NOME', 'Cliente');
  finally
    vColunas.Free;
  end;
end;

procedure TfrmNotaVenda.FDQueryItemNTVNewRecord(DataSet: TDataSet);
begin
  inherited;
DataSet.FieldByName('NTV_ID').AsString := FDPadrao.FieldByName('NTV_ID').AsString;
end;

function TfrmNotaVenda.GetDataSetAtivo: TFDQuery;
begin
  Result := FDPadrao;
  if pgcPrincipal.ActivePage = tsNotaItemVenda then
    Result := FDQueryItemNTV;
end;

function TfrmNotaVenda.GetGridAtiva: TDBGrid;
begin
  Result := dbgrdPrincipal;
  if pgcPrincipal.ActivePage = tsNotaItemVenda then
    Result := dbgrdItemVenda;
end;

function TfrmNotaVenda.GetPanelCad: TPanel;
begin
  Result := pnlPrincipal;
  if pgcPrincipal.ActivePage = tsNotaItemVenda then
    Result := pnlItemNTV;
end;

function TfrmNotaVenda.GetSQLPadrao: string;
begin
  Result := ' SELECT NOTA_VENDA.NTV_ID, NOTA_VENDA.FPA_ID, ' +
    '        NOTA_VENDA.CLI_ID, NOTA_VENDA.NTV_AVISTA, ' +
    '        NOTA_VENDA.NTV_DATA, NOTA_VENDA.NTV_SITUACAO, ' +
    '        NOTA_VENDA.NTV_VALOR, ' +
    '        CLI.CLI_NOME, CLI.CLI_CPF, CLI.CLI_TELEFONE, ' +
    '        FP.FPA_DESC ' + '     FROM NOTA_VENDA ' +
    '     INNER JOIN FORMA_PAGTO FP ON (FP.FPA_ID = NOTA_VENDA.FPA_ID) ' +
    '     INNER JOIN CLIENTE CLI ON (CLI.CLI_ID = NOTA_VENDA.CLI_ID) ';
end;

procedure TfrmNotaVenda.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := dbedtNvCliID;
  FControlFocus.CompFocusEdit := dbedtNvCliID;
end;

procedure TfrmNotaVenda.pgcPrincipalChange(Sender: TObject);
begin
  inherited;
  if pgcPrincipal.ActivePage = tsNotaItemVenda then
    FDQueryItemNTV.Open;
end;

initialization

RegisterClass(TfrmNotaVenda);

finalization

UnRegisterClass(TfrmNotaVenda);

end.
