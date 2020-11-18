unit ufrmCadLogin;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass, FireDAC.Comp.Client,
   frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
   Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
   TfrmCadLogin = class(TfrmBaseCrud)
      Label1: TLabel;
      dbedtCodigo: TDBEdit;
    Label2: TLabel;
   protected
      function GetSQLPrincipal: string; override;
      procedure AfterOpen (DataSet: TDataSet); override;
      procedure InitializeForm; override;
   end;

implementation

uses
   Sistema.Utils.Grid;

{$R *.dfm}

{ TfrmCadLogin }

procedure TfrmCadLogin.AfterOpen (DataSet: TDataSet);
var
   vCampos: TGridColunas;
begin
   vCampos := TGridColunas.Create (dbgrdPrincipal);
   try
      vCampos.Add ('cli_codigo', 'Fornecedor');
      vCampos.Add ('cli_codigo', 'cli_codigo');
   finally
      vCampos.Free;
   end;
end;

function TfrmCadLogin.GetSQLPrincipal: string;
begin
   Result := 'select cli_codigo, cli_nome, ..... from clientes';
end;

procedure TfrmCadLogin.InitializeForm;
begin
   inherited;
   FControlFocus.CompFocusInsert := dbedtCodigo;
   FControlFocus.CompFocusEdit := dbedtCodigo;
end;

initialization

RegisterClass (TfrmCadLogin);

finalization

UnRegisterClass (TfrmCadLogin);

end.
