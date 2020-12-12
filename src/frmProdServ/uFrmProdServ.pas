unit uFrmProdServ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmProdServ = class(TfrmBaseCrud)
    EdtIDProduto: TDBEdit;
    EdtUndMedida: TDBEdit;
    EdtMarca: TDBEdit;
    EdtNomeProduto: TDBEdit;
    EdtTipoProduto: TDBEdit;
    EdtValorProduto: TDBEdit;
    EdtCustoProduto: TDBEdit;
    EdtSitProduto: TDBEdit;
    LabelProdutoID: TLabel;
    LabelUndMed: TLabel;
    LabelMarca: TLabel;
    LabelProNome: TLabel;
    LabelProTipo: TLabel;
    LabelProValor: TLabel;
    LabelProCusto: TLabel;
    LabelProSituacao: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid, Sistema.Utils.Busca, Sistema.Utils.Types;

procedure TfrmProdServ.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('PRO_ID', 'Produto ID');
    vCampos.Add('UND_ABR', 'Unidade de Medida');
    vCampos.Add('MAR_ID', 'Marca');
    vCampos.Add('PRO_NOME', 'Nome Produto');
    vCampos.Add('PRO_TIPO', 'Tipo Produto');
    vCampos.Add('PRO_VALOR', 'Valor Produto');
    vCampos.Add('PRO_CUSTO', 'Custo Produto');
    vCampos.Add('PRO_SITUACAO', 'Situação Produto');
  finally
    vCampos.Free;
  end;

end;

procedure TfrmProdServ.Button1Click(Sender: TObject);
var
   vResult: TResBusca;
begin
   inherited;
   vResult := GSisBusca.BuscaDescricao (tbNotaCompra);
   try
      if vResult.Ok then
      begin
         dsPadrao.DataSet.FieldByName ('UND_NOME').AsString := vResult.Fields['DESCRICAO'];
         dsPadrao.DataSet.FieldByName ('UND_ABR').AsString := vResult.Fields['ID'];

      end;
   finally
      FreeAndNil (vResult.Fields);
   end;
end;

function TfrmProdServ.GetSQLPadrao: string;
begin
Result :=
' SELECT PRODUTO_SERVICO.PRO_ID,' +
' PRODUTO_SERVICO.UND_ABR, PRODUTO_SERVICO.MAR_ID, PRODUTO_SERVICO.PRO_NOME,' +
' PRODUTO_SERVICO.PRO_TIPO, PRODUTO_SERVICO.PRO_VALOR, PRODUTO_SERVICO.PRO_CUSTO, PRODUTO_SERVICO.PRO_SITUACAO, UNIDADE_MEDIDA.UND_NOME ' +
' FROM PRODUTO_SERVICO' +
' JOIN UNIDADE_MEDIDA  on PRODUTO_SERVICO.UND_ABR = UNIDADE_MEDIDA.UND_ABR';

end;

procedure TfrmProdServ.InitializeForm;
begin
  inherited;
FControlFocus.CompFocusInsert := EdtIDProduto;
FControlFocus.CompFocusEdit := EdtUndMedida;

end;

initialization

RegisterClass(TfrmProdServ);

finalization

UnRegisterClass(TfrmProdServ);

end.
