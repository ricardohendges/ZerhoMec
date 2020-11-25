unit uFrmEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TFrmEstado = class(TfrmBaseCrud)
    EditEstID: TDBEdit;
    LabelEstID: TLabel;
    LabelEstSigla: TLabel;
    LabelEstNome: TLabel;
    LabelEstPaisNome: TLabel;
    EditEstNome: TDBEdit;
    EditEstSigla: TDBEdit;
    EditEstPaisNome: TDBEdit;
  protected
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid;
{ TFrmEstado }

procedure TFrmEstado.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('EST_ID', 'ID');
    vCampos.Add('EST_NOME', 'Nome Estado');
    vCampos.Add('EST_SIGLA', 'Sigla');
    vCampos.Add('PAIS_NOME', 'País Nome');
  finally
    vCampos.Free;
  end;
end;

function TFrmEstado.GetSQLPadrao: String;
begin
  'SELECT ESTADO.EST_ID,' +
          'ESTADO.EST_NOME,' +
          'ESTADO.EST_SIGLA,' +
          'ESTADO.PAIS_NOME' +
    'FROM ESTADO';
end;

procedure TFrmEstado.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := EditEstID;
  FControlFocus.CompFocusEdit := EditEstNome;
end;

initialization

RegisterClass(TFrmEstado);

finalization

UnRegisterClass(TFrmEstado);

end.
