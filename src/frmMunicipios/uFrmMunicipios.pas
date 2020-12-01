unit uFrmMunicipios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmMunicípio = class(TfrmBaseCrud)
    EdtIDMunicipio: TDBEdit;
    EdtIDEstado: TDBEdit;
    EdtMunicipio: TDBEdit;
    EdtIGBE: TDBEdit;
    ID_Município: TLabel;
    ID_Estado: TLabel;
    Município: TLabel;
    IBGE: TLabel;
  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid;


procedure TfrmMunicípio.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('MUN_ID', 'Município ID');
    vCampos.Add('EST_ID', 'Estado ID');
    vCampos.Add('MUN_NOME', 'Município');
    vCampos.Add('MUN_IBGE', 'IBGE');
  finally
    vCampos.Free;
  end;

end;

function TfrmMunicípio.GetSQLPadrao: string;
begin
Result :=
'SELECT MUNICIPIO.MUN_ID, MUNICIPIO.EST_ID, MUNICIPIO.MUN_NOME, MUNICIPIO.MUN_IBGE FROM MUNICIPIO';

end;

procedure TfrmMunicípio.InitializeForm;
begin
  inherited;
FControlFocus.CompFocusInsert := EdtIDMunicipio;
FControlFocus.CompFocusEdit := EdtIDEstado;

end;

initialization

RegisterClass(TfrmMunicípio);

finalization

UnRegisterClass(TfrmMunicípio);

end.
