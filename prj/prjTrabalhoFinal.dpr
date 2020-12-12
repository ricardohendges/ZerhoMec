program prjTrabalhoFinal;

uses
  Vcl.Forms,
  ufrmBaseCrud in '..\src\Framework\Base\ufrmBaseCrud.pas' {frmBaseCrud},
  ufrmBaseDM in '..\src\Framework\DataModule\ufrmBaseDM.pas' {frmBaseDM: TDataModule},
  Sistema.Utils.Busca in '..\src\Framework\Utils\Sistema.Utils.Busca.pas',
  Sistema.Utils.Forms in '..\src\Framework\Utils\Sistema.Utils.Forms.pas',
  Sistema.Utils.Grid in '..\src\Framework\Utils\Sistema.Utils.Grid.pas',
  Sistema.Utils.Helpers in '..\src\Framework\Utils\Sistema.Utils.Helpers.pas',
  Sistema.Utils.Types in '..\src\Framework\Utils\Sistema.Utils.Types.pas',
  ufrmPrincipal in '..\src\ufrmPrincipal.pas' {frmPrincipal},
  UFRMBusca in '..\src\Framework\Busca\UFRMBusca.pas' {FRMBusca},
  UFramework.Logon in '..\src\Framework\Logon\UFramework.Logon.pas',
  Sistema.Utils.Connection in '..\src\Framework\Utils\Sistema.Utils.Connection.pas',
  ufrmClientes in '..\src\frmCadClientes\ufrmClientes.pas' {frmClientes},
  ufrmCadLogin in '..\src\frmCadLogin\ufrmCadLogin.pas' {frmCadLogin},
  ufrmCadVeiculos in '..\src\frmCadVeiculos\ufrmCadVeiculos.pas' {frmVeiculos},
  uFrmContasPagar in '..\src\frmContaPagar\uFrmContasPagar.pas' {frmContasPagar},
  uFrmEstado in '..\src\FrmEstado\uFrmEstado.pas' {FrmEstado},
  uFrmFornecedor in '..\src\FrmFornecedor\uFrmFornecedor.pas' {FrmFornecedor},
  uFrmLoginUsuario in '..\src\frmLoginUsuario\uFrmLoginUsuario.pas' {frmLoginUsuario},
  uFrmMarcas in '..\src\FrmMarcas\uFrmMarcas.pas' {FrmMarcas},
  uFrmMunicipios in '..\src\frmMunicipios\uFrmMunicipios.pas' {frmMunicipio},
  ufrmNotasCompras in '..\src\frmNotasCompras\ufrmNotasCompras.pas' {frmNotasCompras},
  ufrmNotaVenda in '..\src\frmNotaVenda\ufrmNotaVenda.pas' {frmNotaVenda},
  uFrmPagamentos in '..\src\frmPagamentos\uFrmPagamentos.pas' {frmPagamentos},
  uFrmProdServ in '..\src\frmProdServ\uFrmProdServ.pas' {frmProdServ},
  uFrmUnidadeMedidas in '..\src\FrmUnidadeMedidas\uFrmUnidadeMedidas.pas' {FrmUnidadeMedidas},
  uFrmContaReceber in '..\src\frmContaReceber\uFrmContaReceber.pas';

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
