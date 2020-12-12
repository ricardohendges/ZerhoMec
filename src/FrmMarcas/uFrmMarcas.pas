unit uFrmMarcas;

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
  TFrmMarcas = class(TfrmBaseCrud)
    LabelMarcasID: TLabel;
    LabelMarcasNome: TLabel;
    LabelMarcasTipo: TLabel;
    edtMarcasNome: TDBEdit;
    edtMarcasTipo: TDBEdit;
    edtMarcasID: TDBEdit;

  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid;
{ TFrmMarcas }

procedure TFrmMarcas.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('MAR_ID', 'ID');
    vCampos.Add('MAR_NOME', 'Nome');
    vCampos.Add('MAR_TIPO', 'Tipo');
  finally
    vCampos.Free;
  end;
end;

function TFrmMarcas.GetSQLPadrao: string;
begin
  Result := ' SELECT MARCA.MAR_ID, ' + ' MARCA.MAR_NOME, ' + ' MARCA.MAR_TIPO ' +
    ' FROM MARCA ';
end;

procedure TFrmMarcas.InitializeForm;
begin
  inherited;
FControlFocus.CompFocusInsert := edtMarcasID ;
  FControlFocus.CompFocusEdit := edtMarcasNome;
end;

initialization

RegisterClass(TFrmMarcas);

finalization

UnRegisterClass(TFrmMarcas);

end.
