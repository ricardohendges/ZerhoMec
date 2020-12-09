unit ufrmMarcas;

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
  TfrmMarca = class(TfrmBaseCrud)
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtTipo: TDBEdit;
    Label1: TLabel;
  protected
    procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen (DataSet: TDataSet); override;
  private
  public
  end;

implementation

uses
  Sistema.Utils.Grid;

{$R *.dfm}

{ TfrmMarca }

procedure TfrmMarca.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  inherited;
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('MAR_ID', 'C�digo');
    vCampos.Add('MAR_NOME', 'Nome');
    vCampos.Add('MAR_TIPO', 'Tipo');
  finally
    vCampos.Free;
  end;
end;

function TfrmMarca.GetSQLPadrao: string;
begin
  Result :=
    ' SELECT MARCA.MAR_ID, ' +
    '        MARCA.MAR_NOME, ' +
    '        MARCA.MAR_TIPO ' +
    '   FROM MARCA ';
end;

procedure TfrmMarca.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := edtCodigo;
  FControlFocus.CompFocusEdit := edtNome;
end;

initialization

RegisterClass(TfrmMarca);

finalization

unRegisterClass(TfrmMarca);

end.
