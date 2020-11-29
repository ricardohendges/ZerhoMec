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
      procedure Button1Click (Sender: TObject);
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   frmCadLogin: TfrmCadLogin;

implementation

uses
   Sistema.Utils.Busca, Sistema.Utils.Types;

{$R *.dfm}


procedure TfrmCadLogin.Button1Click (Sender: TObject);
var
   vResult: TResBusca;
begin
   inherited;
   vResult := GSisBusca.BuscaDescricao (tbSQL);
   try
      dsPadrao.DataSet.FieldByName ('').AsString := vResult.Fields['DESCRICAO'];
   finally
      FreeAndNil (vResult.Fields);
      FreeAndNil (vResult);
   end;
end;

initialization

RegisterClass (TfrmCadLogin);

finalization

UnRegisterClass (TfrmCadLogin);

end.
