unit uFrmContaReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxGradient, frxRich;

type
  TfrmContaReceber = class(TfrmBaseCrud)
    lblCodigo: TLabel;
    lblNotaVenda: TLabel;
    lblCliente: TLabel;
    lblValor: TLabel;
    lblVencimento: TLabel;
    lvlSaldo: TLabel;
    lblParcela: TLabel;
    dbedtVencimento: TDBEdit;
    dbedtSaldo: TDBEdit;
    dbedtParcela: TDBEdit;
    dbedtCodigo: TDBEdit;
    dbedtNotaVenda: TDBEdit;
    dbedtValor: TDBEdit;
    tbBaixaReceber: TTabSheet;
    pnlBaixaReceber: TPanel;
    pnlGridFilhos: TPanel;
    dbgrdBaixaReceber: TDBGrid;
    dbedtCodigoBaixaReceber: TDBEdit;
    dbedtCodigoContaReceber: TDBEdit;
    dbedtFormaPagamentoCódigo: TDBEdit;
    dbedtDataBaixaReceber: TDBEdit;
    dbedtBaixaReceberMulta: TDBEdit;
    dbedtBaixaReceberJuros: TDBEdit;
    dbedt7: TDBEdit;
    dbedtBaixaReceberDesconto: TDBEdit;
    lblCodigoBaixaFilho: TLabel;
    lblCodigoContaReceber: TLabel;
    Label1: TLabel;
    lblFormaPagamentoCodigo: TLabel;
    lblBaixaReceberData: TLabel;
    lblBaixaReceberMulta: TLabel;
    lblBaixaReceberValor: TLabel;
    lblBaixaReceberDesconto: TLabel;
    dbedtCliente: TDBEdit;
    btnCliente: TButton;
    dbedtClienteNome: TDBEdit;
    fdBaixaReceber: TFDQuery;
    dsBaixaReceber: TDataSource;
    lblBaixaReceberJuros: TLabel;
    frxrchbjct1: TfrxRichObject;
    frxgrdntbjct1: TfrxGradientObject;
    frxdbBaixaReceber: TfrxDBDataset;
    procedure btnClienteClick(Sender: TObject);
    procedure pgcPrincipalChange(Sender: TObject);
  protected
     procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    function GetDataSetAtivo: TFDQuery; override;
    function GetGridAtiva: TDBGrid; override;
    function GetPanelCad: TPanel; override;
  end;

var
  frmContaReceber: TfrmContaReceber;

implementation

uses
  Sistema.Utils.Types, Sistema.Utils.Busca, Sistema.Utils.Grid, ufrmBaseDM;

procedure TfrmContaReceber.AfterOpen(DataSet: TDataSet);
var
   vColunas: TGridColunas;
begin
    inherited;
   vColunas := TGridColunas.Create (dbgrdPrincipal);
   try
      vColunas.Add ('CRB_ID', 'ID Conta Receber');
      vColunas.Add ('NTV_ID', 'ID Nota Venda');
      vColunas.Add ('CLI_ID', 'ID Fornecedor');
      vColunas.Add ('CRB_VALOR', 'VALOR');
      vColunas.Add ('CRB_SALDO', 'SALDO');
      vColunas.Add ('CRB_VENCIMENTO', 'VENCIMENTO');
      vColunas.Add ('CRB_PARCELA', 'PARCELA');
   finally
      vColunas.Free;
   end;
end;


procedure TfrmContaReceber.btnClienteClick(Sender: TObject);
var
   vResult: TResBusca;
begin
   inherited;
   vResult := GSisBusca.BuscaDescricao (tbCLIENTE);
   try
      if vResult.Ok then
      begin
         // dsPadrao.DataSet.FieldByName ('cli_nome').AsString := vResult.Fields['DESCRICAO'];
         dsPadrao.DataSet.FieldByName ('cli_id').AsString := vResult.Fields['ID'];
      end;
   finally
      FreeAndNil (vResult.Fields);
   end;
end;

function TfrmContaReceber.GetDataSetAtivo: TFDQuery;
begin
  Result := FDPadrao;
  if pgcPrincipal.ActivePage = tbBaixaReceber then
    Result := fdBaixaReceber;
end;

function TfrmContaReceber.GetGridAtiva: TDBGrid;
begin
  Result := dbgrdPrincipal;
  if pgcPrincipal.ActivePage = tbBaixaReceber then
    Result := dbgrdBaixaReceber;
end;

function TfrmContaReceber.GetPanelCad: TPanel;
begin
Result := pnlPrincipal;
if pgcPrincipal.ActivePage = tbBaixaReceber then
    Result := pnlBaixaReceber;
end;

function TfrmContaReceber.GetSQLPadrao: string;
begin
   result :='SELECT CONTA_RECEBER.crb_id, '+
            ' cliente.cli_nome, ' +
            'conta_receber.ntv_id, '+
            'conta_receber.cli_id, '+
            'conta_receber.crb_valor, '+
            'conta_receber.crb_vencimento, '+
            'conta_receber.crb_saldo, '+
            'conta_receber.crb_parcela '+
         'FROM CONTA_RECEBER '+
         'join cliente ' +
         'on cliente.cli_id=Conta_receber.cli_id ';
end;



procedure TfrmContaReceber.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := dbedtCodigo;
  FControlFocus.CompFocusEdit := dbedtValor;

end;
procedure TfrmContaReceber.pgcPrincipalChange(Sender: TObject);
begin
  inherited;
  if pgcPrincipal.ActivePage = tbBaixaReceber then
    fdBaixaReceber.Open;
end;

initialization

RegisterClass (TfrmContaReceber);

finalization

UnRegisterClass (TfrmContaReceber);

end.

