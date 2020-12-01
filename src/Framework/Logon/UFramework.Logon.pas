unit UFramework.Logon;

interface

uses
   System.Classes, System.SysUtils, Vcl.Controls;

function Logou: Boolean;

implementation

uses
   uFrmLoginUsuario;

{ TFrameworkLogon }

function Logou: Boolean;
var
   vLogin: TfrmLoginUsuario;
begin
   vLogin := TfrmLoginUsuario.Create (nil);
   try
      Result := vLogin.ShowModal = mrOk;
   finally
      FreeAndNil (vLogin);
   end;
end;

end.
