unit ufrmItemVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmItemVenda = class(TfrmBaseCrud)
  protected

    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

var
  frmItemVenda: TfrmItemVenda;

implementation

uses
  Sistema.Utils.Grid, Sistema.Utils.Types;

{$R *.dfm}
{ TfrmItemVenda }

procedure TfrmItemVenda.AfterOpen(DataSet: TDataSet);
var
  vColunas: TGridColunas;
begin
  vColunas := TGridColunas.Create(dbgrdPrincipal);

   try
     vColunas.Add('ITV_ID', 'ID', 0, '0');
     vColunas.Add('NTV_ID', 'Nota Venda ID', 0, '0');
     vColunas.Add('PRO_ID', 'Produto ID', 0, '0');
     vColunas.Add('UND_ABR', 'Unidade de Medida', 0, '0');
     vColunas.Add('ITV_VALOR', 'Valor do Item', 0, '0');
     vColunas.Add('ITV_QTDE', 'Quantidade do Item');
     vColunas.Add('ITV_TOTAL', 'Valor Total do Item');
     vColunas.Add('PRO_NOME', 'Nome do Produto', 0, '0');
     vColunas.Add('UND_NOME', 'Unidade', 0, '0');
     vColunas.Add('NTV_VALOR', 'Valor da Nota de Venda', 0, '0');
   finally
     vColunas.Free;
   end;


end;

function TfrmItemVenda.GetSQLPadrao: string;
begin
  result := '  SELECT ITEM_VENDA.ITV_ID, ITEM_VENDA.NTV_ID, ' +
    '    ITEM_VENDA.PRO_ID, ITEM_VENDA.UND_ABR, ITEM_VENDA.ITV_VALOR, ' +
    '    ITEM_VENDA.ITV_QTDE, ITEM_VENDA.ITV_TOTAL, ' +
    '    PRO.PRO_NOME, PRO.PRO_VALOR, UND.UND_NOME, NTV.NTV_VALOR ' +
    '       FROM ITEM_VENDA ' +
    '  INNER JOIN NOTA_VENDA NTV ON (NTV.NTV_ID = ITEM_VENDA.ITV_ID)  ' +
    '  INNER JOIN PRODUTO_SERVICO PRO ON (PRO.PRO_ID = ITEM_VENDA.PRO_ID) ' +
    '  INNER JOIN UNIDADE_MEDIDA UND ON (UND.UND_ABR = ITEM_VENDA.UND_ABR)  ';
end;

procedure TfrmItemVenda.InitializeForm;
begin
  inherited;
  // FControlFocus.CompFocusInsert := dbedNvCliID;
  // FControlFocus.CompFocusEdit := dbedtNvCliID;
end;

end.
