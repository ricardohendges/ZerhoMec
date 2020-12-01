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
  ufrwUtilsForms in '..\src\Framework\Utils\ufrwUtilsForms.pas',
  ufrmPrincipal in '..\src\ufrmPrincipal.pas' {frmPrincipal},
  UFRMBusca in '..\src\Framework\Busca\UFRMBusca.pas' {FRMBusca};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBaseDM, frmBaseDM);
  Application.CreateForm(TfrmLoginUsuario, frmLoginUsuario);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
