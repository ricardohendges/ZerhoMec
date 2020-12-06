unit ufrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmBaseCrud, Data.DB, frxClass, frxDBSet, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask;

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
    dbedtMUN_ID: TDBEdit;
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
  protected
    procedure InitializeForm; override;
    function GetSQLPadrao: string; override;
    procedure AfterOpen(DataSet: TDataSet); override;
  end;

var
  frmClientes: TfrmClientes;

implementation
    {$R *.dfm}

procedure TfrmClientes.InitializeForm;
begin

end;

function TfrmClientes.GetSQLPadrao: string;
begin

end;

procedure TfrmClientes.AfterOpen(DataSet: TDataSet);
begin

end;

end.

