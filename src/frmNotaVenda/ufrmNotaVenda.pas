unit ufrmNotaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmNotaVenda = class(TfrmBaseCrud)
    dbedtNvCliID: TDBEdit;
    dbedtNvFpID: TDBEdit;
    dbedtNvAvista: TDBEdit;
    dbedtNvSituacao: TDBEdit;
    dbedtNvValor: TDBEdit;
    dbedtNvData: TDBEdit;
    dbedtNvID: TDBEdit;

  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

uses
  Sistema.Utils.Grid, Sistema.Utils.Types;

{$R *.dfm}
{ TfrmBaseCrud1 }

procedure TfrmNotaVenda.AfterOpen(DataSet: TDataSet);
var
  vColunas: TGridColunas;
begin
  vColunas := TGridColunas.Create(dbgrdPrincipal);

  try
    vColunas.Add('NTV_ID', 'ID', 0, '0');
    vColunas.Add('FPA_ID', 'Forma Pgto');
    vColunas.Add('CLI_ID', 'ID Cliente');
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

function TfrmNotaVenda.GetSQLPadrao: string;
begin
  result := ' SELECT NOTA_VENDA.NTV_ID, NOTA_VENDA.FPA_ID, ' +
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

initialization

RegisterClass(TfrmNotaVenda);

finalization

UnRegisterClass(TfrmNotaVenda);

end.
