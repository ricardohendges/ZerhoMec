program prjTrabalhoFinal;

uses
  Vcl.Forms,
  ufrmPrincipal in '..\src\ufrmPrincipal.pas' {frmPrincipal},
  ufrmBaseCrud in '..\src\Framework\Base\ufrmBaseCrud.pas' {frmBaseCrud},
  ufrmBaseDM in '..\src\Framework\DataModule\ufrmBaseDM.pas' {frmBaseDM: TDataModule},
  Sistema.Utils.Forms in '..\src\Framework\Utils\Sistema.Utils.Forms.pas',
  Sistema.Utils.Grid in '..\src\Framework\Utils\Sistema.Utils.Grid.pas',
  Sistema.Utils.Helpers in '..\src\Framework\Utils\Sistema.Utils.Helpers.pas',
  Sistema.Utils.Types in '..\src\Framework\Utils\Sistema.Utils.Types.pas',
  ufrmCadLogin in '..\src\frmCadLogin\ufrmCadLogin.pas' {frmCadLogin},
  uFrmLoginUsuario in '..\src\frmLoginUsuario\uFrmLoginUsuario.pas' {frmLoginUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBaseDM, frmBaseDM);
  Application.CreateForm(TfrmLoginUsuario, frmLoginUsuario);
  Application.Run;
end.
