program prjTrabalhoFinal;

uses
  Vcl.Forms,
  ufrmBaseCrud in '..\src\Framework\Base\ufrmBaseCrud.pas' {frmBaseCrud},
  ufrmBaseDM in '..\src\Framework\DataModule\ufrmBaseDM.pas' {frmBaseDM: TDataModule},
  ufrmCadLogin in '..\src\frmCadLogin\ufrmCadLogin.pas' {frmCadLogin},
  uFrmLoginUsuario in '..\src\frmLoginUsuario\uFrmLoginUsuario.pas' {frmLoginUsuario},
  Sistema.Utils.Busca in '..\src\Framework\Utils\Sistema.Utils.Busca.pas',
  Sistema.Utils.Forms in '..\src\Framework\Utils\Sistema.Utils.Forms.pas',
  Sistema.Utils.Grid in '..\src\Framework\Utils\Sistema.Utils.Grid.pas',
  Sistema.Utils.Helpers in '..\src\Framework\Utils\Sistema.Utils.Helpers.pas',
  Sistema.Utils.Types in '..\src\Framework\Utils\Sistema.Utils.Types.pas',
  ufrmPrincipal in '..\src\ufrmPrincipal.pas' {frmPrincipal},
  UFRMBusca in '..\src\Framework\Busca\UFRMBusca.pas' {FRMBusca},
  UFramework.Logon in '..\src\Framework\Logon\UFramework.Logon.pas',
  Sistema.Utils.Connection in '..\src\Framework\Utils\Sistema.Utils.Connection.pas',
  Sistema.Utils.UtilsDB in '..\src\Framework\Utils\Sistema.Utils.UtilsDB.pas';

{$R *.res}


begin
   if TLogin.Logou then
   begin
      Application.Initialize;
      Application.MainFormOnTaskbar := True;
      Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBaseDM, frmBaseDM);
  Application.Run;
   end;

end.
