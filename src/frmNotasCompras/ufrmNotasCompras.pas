unit ufrmNotasCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask;

type
  TfrmNotasCompras = class(TfrmBaseCrud)
    edtNTC_ID: TDBEdit;
    lbl1: TLabel;
    edtFOR_ID: TDBEdit;
    lbl2: TLabel;
    edtFPA_ID: TDBEdit;
    lbl3: TLabel;
    lbl6: TLabel;
    edtNTC_AVISTA: TDBEdit;
    lbl7: TLabel;
    edtNTC_DATA: TDBEdit;
    lbl4: TLabel;
    edtNTC_SITUACAO: TDBEdit;
    lbl5: TLabel;
    edtNTC_VALOR: TDBEdit;
    DBGrid1: TDBGrid;
    dbnvgr1: TDBNavigator;
    dsItens: TDataSource;
    qryItens: TFDQuery;
    procedure actSalvarExecute(Sender: TObject);
  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;


implementation

uses   Sistema.Utils.Grid, Sistema.Utils.Types;

{$R *.dfm}

{ TfrmNotasCompras }

procedure TfrmNotasCompras.actSalvarExecute(Sender: TObject);
begin
  inherited;
  dsPadrao.DataSet.Close;
  dsPadrao.DataSet.Open;
end;

procedure TfrmNotasCompras.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  inherited;
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('NTC_ID', 'ID');
    vCampos.Add('FOR_ID', 'ID Forn.');
    vCampos.Add('FOR_NOME', 'Nome');
    vCampos.Add('NTC_DATA', 'Data');
    vCampos.Add('NTC_VALOR', 'Valor');
  finally
    vCampos.Free;
  end;
end;

function TfrmNotasCompras.GetSQLPadrao: string;
begin
  Result :=
  'SELECT NOTA_COMPRA.NTC_ID,     ' +
  '     NOTA_COMPRA.FOR_ID,       ' +
  '     FORNECEDOR.FOR_NOME,      ' +
  '     NOTA_COMPRA.FPA_ID,       ' +
  '     NOTA_COMPRA.NTC_AVISTA,   ' +
  '     NOTA_COMPRA.NTC_DATA,     ' +
  '     NOTA_COMPRA.NTC_SITUACAO, ' +
  '     NOTA_COMPRA.NTC_VALOR     ' +
  '  FROM NOTA_COMPRA             ' +
  '  INNER JOIN FORNECEDOR        ' +
  '     ON FORNECEDOR.FOR_ID = NOTA_COMPRA.FOR_ID ';
end;

procedure TfrmNotasCompras.InitializeForm;
begin
  inherited;
//  FControlFocus.CompFocusInsert := ;
//  FControlFocus.CompFocusEdit := ;
  dsItens.DataSet.Open;
end;

initialization

RegisterClass (TfrmNotasCompras);

finalization

UnRegisterClass (TfrmNotasCompras);

end.
