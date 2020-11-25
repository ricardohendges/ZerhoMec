unit uFrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TFrmFornecedor = class(TfrmBaseCrud)
    edtForneID: TDBEdit;
    edtForneMunID: TDBEdit;
    edtForneNome: TDBEdit;
    edtForneCNPJ: TDBEdit;
    edtForneSitua: TDBEdit;
    edtForneInsc: TDBEdit;
    edtForneTelefone: TDBEdit;
    edtForneEmail: TDBEdit;
    LabelForneID: TLabel;
    LabelForneMunID: TLabel;
    LabelForneNome: TLabel;
    LabelForneCNPJ: TLabel;
    LabelForneSitua: TLabel;
    LabelForneInsc: TLabel;
    LabelForneTelefone: TLabel;
    LabelForneEmail: TLabel;
    edtForneEndere: TDBEdit;
    LabelForneEndere: TLabel;

  protected
    procedure AfterOpen(DataSet: TDataSet); override;
    procedure InitializeForm; override;
  end;

implementation

{$R *.dfm}

uses Sistema.Utils.Grid;
{ TFrmFornecedor }

procedure TFrmFornecedor.AfterOpen(DataSet: TDataSet);
var
  vCampos: TGridColunas;
begin
  vCampos := TGridColunas.Create(dbgrdPrincipal);
  try
    vCampos.Add('FOR_ID', 'ID Fornecedor');
    vCampos.Add('MUN_ID', 'ID Endereço');
    vCampos.Add('FOR_NOME', 'Nome');
    vCampos.Add('FOR_CNPJ', 'CNJP');
    vCampos.Add('FOR_SITUACAO', 'Situação');
    vCampos.Add('FOR_INSCRICAO', 'Inscrição');
    vCampos.Add('FOR_TELEFONE', 'Telefone');
    vCampos.Add('FOR_EMAIL', 'E-Mail');
    vCampos.Add('FOR_ENDERECO', 'Endereço');
  finally
    vCampos.Free;
  end;
end;

function TfrmEstado.GetSQLPadrao: String;
begin
   'SELECT FORNECEDOR.FOR_ID,' +
   'FORNECEDOR.MUN_ID,' +
   'FORNECEDOR.FOR_NOME,' +
   'FORNECEDOR.FOR_CNPJ,' +
   'FORNECEDOR.FOR_SITUACAO,' +
   'FORNECEDOR.FOR_INSCRICAO,' +
   'FORNECEDOR.FOR_TELEFONE,' +
   'FORNECEDOR.FOR_EMAIL,' +
   'FORNECEDOR.FOR_ENDERECO' +
   'FROM FORNECEDOR';
end;


procedure TFrmFornecedor.InitializeForm;
begin
  inherited;
  FControlFocus.CompFocusInsert := edtForneID;
  FControlFocus.CompFocusEdit := edtForneNome;
end;

initialization

RegisterClass(TFrmFornecedor);

finalization

UnRegisterClass(TFrmFornecedor);

end.
