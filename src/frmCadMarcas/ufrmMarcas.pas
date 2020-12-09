unit ufrmMarcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmMarca = class(TfrmBaseCrud)
    edtCodigo: TDBEdit;
    edtNome: TDBEdit;
    edtTipo: TDBEdit;
    LabelMarCOD: TLabel;
    LabelMarTipo: TLabel;
    LabelMarNome: TLabel;
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
    vCampos.Add('MAR_ID', 'Código');
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
