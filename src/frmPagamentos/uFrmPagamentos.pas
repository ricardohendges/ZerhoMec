unit uFrmPagamentos;

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
  TfrmPagamentos = class(TfrmBaseCrud)
    EdtPagamento: TDBEdit;
    EdtDescricao: TDBEdit;
    EdtObservacao: TDBEdit;
    LabelIDPagamento: TLabel;
    LabelDesconto: TLabel;
    LabelObservacao: TLabel;
  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid;
{ TfrmPagamentos }

procedure TfrmPagamentos.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('FPA_ID', 'Código ID');
    vCampos.Add('FPA_DESC', 'Descrição');
    vCampos.Add('FPA_OBS', 'Observação');
  finally
    vCampos.Free;
  end;

end;

function TfrmPagamentos.GetSQLPadrao: string;
begin
Result :=
   'SELECT FORMA_PAGTO.FPA_ID, FORMA_PAGTO.FPA_DESC, FORMA_PAGTO.FPA_OBS FROM FORMA_PAGTO';

end;

procedure TfrmPagamentos.InitializeForm;
begin
  inherited;
FControlFocus.CompFocusInsert := EdtPagamento;
FControlFocus.CompFocusEdit := EdtDescricao;

end;

initialization

RegisterClass(TfrmPagamentos);

finalization

UnRegisterClass(TfrmPagamentos);

end.
