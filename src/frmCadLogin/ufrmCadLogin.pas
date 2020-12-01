unit ufrmCadLogin;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
   frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
   Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
   TfrmCadLogin = class(TfrmBaseCrud)
      lblCodigo: TLabel;
      edtCodigo: TEdit;
      edtDescCliente: TEdit;
      lblBuscarCliente: TLabel;
      btnBuscarCliente: TButton;
      procedure btnBuscarClienteClick (Sender: TObject);
   protected
      function GetSQLPadrao: string; override;
   end;

var
   frmCadLogin: TfrmCadLogin;

implementation

uses
   Sistema.Utils.Busca, Sistema.Utils.Types;

{$R *.dfm}


procedure TfrmCadLogin.btnBuscarClienteClick (Sender: TObject);
var
   vResult: TResBusca;
begin
   inherited;
   vResult := GSisBusca.BuscaDescricao (tbCLIENTE);
   try
      if vResult.Ok then
      begin
         // dsPadrao.DataSet.FieldByName ('').AsString := vResult.Fields['DESCRICAO'];
         edtDescCliente.Text := vResult.Fields['DESCRICAO'];
      end;
   finally
      FreeAndNil (vResult.Fields);
   end;
end;

function TfrmCadLogin.GetSQLPadrao: string;
begin
   Result :=
     ' SELECT USUARIO.USU_ID, USUARIO.USU_LOGIN, USUARIO.USU_SENHA, ' +
     '        USUARIO.USU_NOME, USUARIO.USU_TIPO ' +
     '   FROM USUARIO ';
end;

initialization

RegisterClass (TfrmCadLogin);

finalization

UnRegisterClass (TfrmCadLogin);

end.
