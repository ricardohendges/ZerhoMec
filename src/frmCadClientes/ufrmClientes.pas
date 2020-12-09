unit ufrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmBaseCrud, Data.DB, frxClass, frxDBSet, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmClientes = class(TfrmBaseCrud)
    lblCLIC_COD: TLabel;
    dbedtCLI_ID: TDBEdit;
    dbedtCLI_NOME: TDBEdit;
    dbedtCLI_CPF: TDBEdit;
    dbedtCLI_NASCIMENTO: TDBEdit;
    dbedtCLI_SEXO: TDBEdit;
    dbedtCLI_TELEFONE: TDBEdit;
    dbedtCLI_EMAIL: TDBEdit;
    edtMUN_NOME: TDBEdit;
    lblCLI_NOME: TLabel;
    lblCLI_CPF: TLabel;
    lblNASCIMENTO: TLabel;
    lblSEXO: TLabel;
    lblTELEFONE: TLabel;
    lblEMAIL: TLabel;
    btnBUSCA_MUN: TSpeedButton;
    lblMUNICIPIO: TLabel;
    lblENDERECO: TLabel;
    dbedtCLI_ENDERECO: TDBEdit;
    dbedtMUN_ID: TDBEdit;
    procedure btnBUSCA_MUNClick(Sender: TObject);
  protected
    procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
  end;

var
  frmClientes: TfrmClientes;

implementation

uses
  Sistema.Utils.Busca, Sistema.Utils.Grid, Sistema.Utils.Types;
    {$R *.dfm}

procedure TfrmClientes.InitializeForm;
begin
 inherited;
end;

procedure TfrmClientes.btnBUSCA_MUNClick(Sender: TObject);
var
  vResult: TResBusca;
begin
  inherited;
  vResult := GSisBusca.BuscaDescricao(tbMUNICIPIO);
  try
    if vResult.Ok then
    begin
      dsPadrao.DataSet.FieldByName('MUN_ID').AsString := vResult.Fields['MUN_ID'];
      dsPadrao.DataSet.FieldByName('MUN_NOME').AsString := vResult.Fields['MUN_NOME'];
    end;
  finally
    FreeAndNil(vResult.Fields);
  end;
end;

function TfrmClientes.GetSQLPadrao: string;
begin
  Result := 'SELECT  C.cli_id, c.cli_nome, c.cli_cpf, c.cli_nascimento, c.cli_sexo,' + 'c.cli_telefone, c.cli_email, c.cli_endereco,' + 'c.mun_id, M.mun_nome' + ' FROM CLIENTE C' + ' JOIN MUNICIPIO M ON M.mun_id = C.mun_id';
end;

procedure TfrmClientes.AfterOpen(DataSet: TDataSet);
var
  vColunas: TGridColunas;
begin
  vColunas := TGridColunas.Create(dbgrdPrincipal);
  try
    vColunas.Add('CLI_ID', 'Código');
    vColunas.Add('CLI_NOME', 'Nome');
    vColunas.Add('CLI_CPF', 'CPF');
    vColunas.Add('CLI_NASCIMENTO', 'Nascimento');
    vColunas.Add('CLI_SEXO', 'Sexo');
    vColunas.Add('CLI_TELEFONE', 'Telefone');
    vColunas.Add('CLI_EMAIL', 'Email');
    vColunas.Add('CLI_ENDERECO', 'Endereco');
    vColunas.Add('MUN_ID', 'ID Municipio');
    vColunas.Add('MUN_NOME', 'Municipio');

  finally
    vColunas.Free;
  end;
end;

initialization
  RegisterClass(TfrmClientes);

finalization
  UnRegisterClass(TfrmClientes);

end.

