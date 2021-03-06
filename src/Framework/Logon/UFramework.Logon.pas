unit UFramework.Logon;

interface

uses
   System.Classes, System.SysUtils, Vcl.Controls;

type
   TLogin = class
   public
      class function Logou: Boolean;
   end;

implementation

uses
   uFrmLoginUsuario;

{ TLogin }

class function TLogin.Logou: Boolean;
var
   vLogin: TfrmLoginUsuario;
begin
   vLogin := TfrmLoginUsuario.Create (nil);
   try
      Result := (vLogin.ShowModal = mrOk);
   finally
      FreeAndNil (vLogin);
   end;
end;

end.
