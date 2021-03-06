unit uFrmUnidadeMedidas;

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
  TFrmUnidadeMedidas = class(TfrmBaseCrud)
    edtUndMedidaABR: TDBEdit;
    edtUndMedidaNome: TDBEdit;
    LabelUndMedidaABR: TLabel;
    LabelUndMedidaNome: TLabel;

  protected
    function GetSQLPadrao: string; override;

    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid;
{ TFrmUnidadeMedidas }

procedure TFrmUnidadeMedidas.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('UND_ABR', 'Abreviação');
    vCampos.Add('UND_NOME', 'Nome');
  finally
    vCampos.Free;
  end;
end;

function TFrmUnidadeMedidas.GetSQLPadrao: string;
begin
  Result := 'SELECT UNIDADE_MEDIDA.UND_ABR,' + 'UNIDADE_MEDIDA.UND_NOME' +
    ' FROM UNIDADE_MEDIDA ';
end;

procedure TFrmUnidadeMedidas.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := edtUndMedidaABR;
  FControlFocus.CompFocusEdit := edtUndMedidaNome;
end;

initialization

RegisterClass(TFrmUnidadeMedidas);

finalization

UnRegisterClass(TFrmUnidadeMedidas);

end.
