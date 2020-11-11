unit ufrmBaseCrud;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
      edtFiltro: TLabeledEdit;
      lblCampos: TLabel;
      lblCondicao: TLabel;
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
      procedure dbgrdPrincipalTitleClick (Column: TColumn);
      procedure FormClose (Sender: TObject; var Action: TCloseAction);
   protected
         { Functions de validações e etc. }
      function GetDataSetAtivo: TFDquery; virtual;
      function GetGridAtiva: TDBGrid; virtual;
      function GetPanelCad: TPanel; virtual;
      function ValidouCampos: Boolean; virtual;

      procedure InitializeForm; virtual;
         { Parte dos Botões }
      procedure InserirRegistro; virtual;
      procedure EditarRegistro; virtual;
      procedure ExcluirRegistro; virtual;
      procedure SalvarRegistro; virtual;
      procedure CancelarRegistro; virtual;
      procedure Imprimir; virtual;
      procedure Sair; virtual;
         { Controle de botões }
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

{ TfrmBaseCrud }

procedure TfrmBaseCrud.CancelarRegistro;
begin
   if DataSetAtivo.State in [dsEdit, dsInsert] then
      DataSetAtivo.Cancel;
   ManterEstadoBotoes;
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

procedure TfrmBaseCrud.Imprimir;
begin
   //
end;

procedure TfrmBaseCrud.InitializeForm;
begin
   //
end;

procedure TfrmBaseCrud.InserirRegistro;
begin
   DataSetAtivo.Insert;
   ManterEstadoBotoes;
end;

procedure TfrmBaseCrud.ManterEstadoBotoes;
begin
   actSalvar.Enabled := DataSetAtivo.State in [dsEdit, dsInsert];
   actCancelar.Enabled := actSalvar.Enabled;

   actInserir.Enabled := (DataSetAtivo.State = dsBrowse) and not actSalvar.Enabled;
   actEditar.Enabled := actInserir.Enabled and not DataSetAtivo.IsEmpty;
   actExcluir.Enabled := actEditar.Enabled;
   actSair.Enabled := not actSalvar.Enabled;

   PanelCad.Enabled := DataSetAtivo.State in [dsEdit, dsInsert];
   GridAtiva.Enabled := not PanelCad.Enabled;

   if Assigned (FControlFocus.CompFocusInsert) then
      FControlFocus.CompFocusInsert.Enabled := DataSetAtivo.State = dsInsert;
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
