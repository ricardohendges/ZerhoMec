unit ufrmBaseCrud;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
   Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
   System.Actions, Vcl.ActnList, frxClass, frxDBSet, FireDAC.Stan.Intf,
   FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
   FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Sistema.Utils.Types;

type
   TfrmBaseCrud = class(TForm)
      pgcPrincipal: TPageControl;
      tsCadastro: TTabSheet;
      tsListagem: TTabSheet;
      pnlFiltros: TPanel;
      pnlGrid: TPanel;
      pnlInfos: TPanel;
      dbgrdPrincipal: TDBGrid;
      dbnvgrPrincipal: TDBNavigator;
      cbbCampos: TComboBox;
      cbbFiltros: TComboBox;
      pnlPrincipal: TPanel;
      pnlBotoes: TPanel;
      btnInserir: TSpeedButton;
      btnEditar: TSpeedButton;
      btnExcluir: TSpeedButton;
      btnSalvar: TSpeedButton;
      btnCancelar: TSpeedButton;
      btnImprimir: TSpeedButton;
      btnSair: TSpeedButton;
      actlstPrincipal: TActionList;
      actInserir: TAction;
      actEditar: TAction;
      actExcluir: TAction;
      actSalvar: TAction;
      actCancelar: TAction;
      actImprimir: TAction;
      actSair: TAction;
      dsPadrao: TDataSource;
      frxrprtPrincipal: TfrxReport;
      frxDBDatasetPrincipal: TfrxDBDataset;
      gbCampos: TGroupBox;
      gbFiltros: TGroupBox;
      gbPesquisar: TGroupBox;
      EdtPesquisar: TEdit;
      pnlMenuBotton: TPanel;
      lblStatusForm: TLabel;
      procedure dbgrdPrincipalTitleClick (Column: TColumn);
      procedure FormClose (Sender: TObject; var Action: TCloseAction);
      procedure actInserirExecute (Sender: TObject);
      procedure actEditarExecute (Sender: TObject);
      procedure actExcluirExecute (Sender: TObject);
      procedure actSalvarExecute (Sender: TObject);
      procedure actCancelarExecute (Sender: TObject);
      procedure actImprimirExecute (Sender: TObject);
      procedure FormShow (Sender: TObject);
   Private
      Procedure ControlaLabelStatusFrom;
   protected
    { Functions de valida��es e etc. }
      function GetDataSetAtivo: TFDquery; virtual;
      function GetGridAtiva: TDBGrid; virtual;
      function GetPanelCad: TPanel; virtual;
      function ValidouCampos: Boolean; virtual;

      procedure InitializeForm; virtual;
    { Parte dos Bot�es }
      procedure InserirRegistro; virtual;
      procedure EditarRegistro; virtual;
      procedure ExcluirRegistro; virtual;
      procedure SalvarRegistro; virtual;
      procedure CancelarRegistro; virtual;
      procedure Imprimir; virtual;
      procedure Sair; virtual;

      function GetSQLPadrao: string; virtual;
      procedure AfterOpen (DataSet: TDataSet); virtual;

    { Controle de bot�es }
      procedure ManterEstadoBotoes;
    { Propertys }
      property DataSetAtivo: TFDquery read GetDataSetAtivo;
      property PanelCad: TPanel read GetPanelCad;
      property GridAtiva: TDBGrid read GetGridAtiva;
   public
      FControlFocus: TFormActive;
   end;

implementation

uses
   ufrmBaseDM, Sistema.Utils.Grid, Sistema.Utils.Helpers;

{$R *.dfm}


{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Imprimir registro.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.actImprimirExecute (Sender: TObject);
begin
   Imprimir;
end;

{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Cancelar registro.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.actCancelarExecute (Sender: TObject);
begin
   CancelarRegistro;
end;

{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Editar registro.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.actEditarExecute (Sender: TObject);
begin
   EditarRegistro;
end;

{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Excluir registro.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.actExcluirExecute (Sender: TObject);
begin
   ExcluirRegistro;
end;

{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Inserir registro.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.actInserirExecute (Sender: TObject);
begin
   InserirRegistro;
end;

{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Salvar registro.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.actSalvarExecute (Sender: TObject);
begin
   SalvarRegistro;
end;

procedure TfrmBaseCrud.AfterOpen (DataSet: TDataSet);
begin
   //
end;

procedure TfrmBaseCrud.CancelarRegistro;
begin
   if DataSetAtivo.State in [dsEdit, dsInsert] then
      DataSetAtivo.Cancel;
   ManterEstadoBotoes;
end;

{ ---------------------------------------------------
  ## Autor: Djonatan
  ## Object: Atualizar descri��o da label com status do DataSet.
  ---------------------------------------------------- }
procedure TfrmBaseCrud.ControlaLabelStatusFrom;
begin
   case dsPadrao.DataSet.State of
      dsInsert:
         lblStatusForm.Caption := 'Inserindo Registro  ';
      dsEdit:
         lblStatusForm.Caption := 'Editando Registro  ';
      dsBrowse:
         lblStatusForm.Caption := 'Navegando  ';
      dsFilter:
         lblStatusForm.Caption := 'Consultado Registro  ';
   end;
end;

procedure TfrmBaseCrud.dbgrdPrincipalTitleClick (Column: TColumn);
begin
   GGridTitulos.OrdenaGrid (TFDquery(dsPadrao.DataSet), Column);
end;

procedure TfrmBaseCrud.EditarRegistro;
begin
   DataSetAtivo.Edit;
   ManterEstadoBotoes;
end;

procedure TfrmBaseCrud.ExcluirRegistro;
begin
   DataSetAtivo.Delete;
   DataSetAtivo.Refresh;
   ManterEstadoBotoes;
end;

procedure TfrmBaseCrud.FormClose (Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmBaseCrud.FormShow (Sender: TObject);
begin
   InitializeForm;
end;

function TfrmBaseCrud.GetDataSetAtivo: TFDquery;
begin
   Result := TFDquery (dsPadrao.DataSet);
end;

function TfrmBaseCrud.GetGridAtiva: TDBGrid;
begin
   Result := dbgrdPrincipal;
end;

function TfrmBaseCrud.GetPanelCad: TPanel;
begin
   Result := pnlGrid;
end;

function TfrmBaseCrud.GetSQLPadrao: string;
begin
   Result := '';
end;

procedure TfrmBaseCrud.Imprimir;
begin
  // Realiza a visualização do relatório.
   frxrprtPrincipal.ShowReport ();
end;

procedure TfrmBaseCrud.InitializeForm;
begin
   tsListagem.Show;
   frmBaseDM.FDPrincipal.AfterOpen := AfterOpen;
   frmBaseDM.FDPrincipal.LoadSQL (GetSQLPadrao);
   ManterEstadoBotoes;
end;

procedure TfrmBaseCrud.InserirRegistro;
begin
   if (DataSetAtivo = frmBaseDM.FDPrincipal) and
     (pgcPrincipal.ActivePage <> tsCadastro) then
      pgcPrincipal.ActivePage := tsCadastro;
   DataSetAtivo.Insert;
   ManterEstadoBotoes;
   if FControlFocus.CompFocusInsert.CanFocus then
      FControlFocus.CompFocusInsert.SetFocus;
end;

procedure TfrmBaseCrud.ManterEstadoBotoes;
begin
   actSalvar.Enabled := DataSetAtivo.State in [dsEdit, dsInsert];
   actCancelar.Enabled := actSalvar.Enabled;
   actInserir.Enabled := (DataSetAtivo.State = dsBrowse) and
     not actSalvar.Enabled;
   actEditar.Enabled := actInserir.Enabled and not DataSetAtivo.IsEmpty;
   actExcluir.Enabled := actEditar.Enabled;
   actSair.Enabled := not actSalvar.Enabled;
   PanelCad.Enabled := DataSetAtivo.State in [dsEdit, dsInsert];
   GridAtiva.Enabled := not PanelCad.Enabled;

   if Assigned (FControlFocus.CompFocusInsert) then
      FControlFocus.CompFocusInsert.Enabled := DataSetAtivo.State = dsInsert;

   // Atualiza as informações na label de status.
   ControlaLabelStatusFrom;
end;

procedure TfrmBaseCrud.Sair;
begin
   Self.Close;
end;

procedure TfrmBaseCrud.SalvarRegistro;
begin
   if DataSetAtivo.State in [dsEdit, dsInsert] then
      if ValidouCampos then
         DataSetAtivo.Post;
   ManterEstadoBotoes;
end;

function TfrmBaseCrud.ValidouCampos: Boolean;
begin
   Result := pnlPrincipal.ValidouCampos;
end;

end.
