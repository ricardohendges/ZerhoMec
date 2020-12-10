unit uFrmMunicipios;

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
  TfrmMunicipio = class(TfrmBaseCrud)
    EdtIDMunicipio: TDBEdit;
    EdtIDEstado: TDBEdit;
    EdtMunicipio: TDBEdit;
    EdtIGBE: TDBEdit;
    ID_Município: TLabel;
    ID_Estado: TLabel;
    Município: TLabel;
    IBGE: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  protected
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid, Sistema.Utils.Busca, Sistema.Utils.Types;


procedure TfrmMunicipio.AfterOpen(DataSet: TDataSet);
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

procedure TfrmMunicipio.Button1Click(Sender: TObject);
var
   vResult: TResBusca;
begin
   inherited;
   vResult := GSisBusca.BuscaDescricao (tbEstado);
   try
      if vResult.Ok then
      begin
         dsPadrao.DataSet.FieldByName ('est_nome').AsString := vResult.Fields['DESCRICAO'];
          dsPadrao.DataSet.FieldByName ('est_ID').AsString := vResult.Fields['ID'];

      end;
   finally
      FreeAndNil (vResult.Fields);
   end;
end;

function TfrmMunicipio.GetSQLPadrao: string;
begin
Result :=
'SELECT MUNICIPIO.MUN_ID, MUNICIPIO.EST_ID, MUNICIPIO.MUN_NOME, MUNICIPIO.MUN_IBGE, e.EST_NOME FROM MUNICIPIO  JOIN estado e on e.EST_ID = municipio.EST_ID';

end;

procedure TfrmMunicipio.InitializeForm;
begin
  inherited;
FControlFocus.CompFocusInsert := EdtIDMunicipio;
FControlFocus.CompFocusEdit := EdtIDEstado;

end;

initialization

RegisterClass(TfrmMunicipio);

finalization

UnRegisterClass(TfrmMunicipio);

end.
