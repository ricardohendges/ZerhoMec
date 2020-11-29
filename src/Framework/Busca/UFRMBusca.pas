unit UFRMBusca;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls,
   FireDAC.Stan.Intf, Sistema.Utils.Types, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
   FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ImgList,
   FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, System.Generics.Collections;

type
   TFRMBusca = class(TForm)
      pnlGrid: TPanel;
      pnlBotoes: TPanel;
      dbgrdSelecao: TDBGrid;
      btnConfirmar: TButton;
      btnCancelar: TButton;
      ilSelecao: TImageList;
      FDSelecao: TFDQuery;
      dsSelecao: TDataSource;
      pnlFiltra: TPanel;
      edtDescricao: TLabeledEdit;
      btnBuscar: TButton;
      procedure FormShow (Sender: TObject);
      procedure dbgrdSelecaoTitleClick (Column: TColumn);
      procedure btnConfirmarClick (Sender: TObject);
      procedure btnCancelarClick (Sender: TObject);
      procedure btnBuscarClick (Sender: TObject);
      procedure FormCreate (Sender: TObject);
   private
      FBuscaPor: TTpBusca;
      FDados: TResBusca;
      procedure ReposicionaBotoes;
      procedure AlimentaCampos;
   public
      class function Exibir (ALookupBusca: TTpBusca): TResBusca;
   end;

implementation

uses
   Sistema.Utils.Grid, ufrmBaseDM;

{$R *.dfm}

{ TFRMBusca }

procedure TFRMBusca.AlimentaCampos;
var
   vSQL: string;
begin
   case FBuscaPor of
      tbSQL:
         vSQL := cSQL;
   end;
   FDSelecao.Open (vSQL);
end;

procedure TFRMBusca.btnBuscarClick (Sender: TObject);
begin
   FDSelecao.Filtered := False;
   FDSelecao.Filter := ' DESCRICAO LIKE ''%' + edtDescricao.Text + '%'' ';
   FDSelecao.Filtered := True;
end;

procedure TFRMBusca.btnCancelarClick (Sender: TObject);
begin
   FDados.Ok := False;
end;

procedure TFRMBusca.btnConfirmarClick (Sender: TObject);
var
   I: Integer;
begin
   FDados.Ok := True;
   for I := 0 to Pred(FDSelecao.Fields.Count) do
      FDados.Fields.Add (FDSelecao.Fields[I].FieldName, FDSelecao.Fields[I].Text);
end;

procedure TFRMBusca.dbgrdSelecaoTitleClick (Column: TColumn);
begin
   GGridTitulos.OrdenaGrid (FDSelecao, Column);
end;

class function TFRMBusca.Exibir (ALookupBusca: TTpBusca): TResBusca;
var
   vPopup: TFRMBusca;
begin
   vPopup := TFRMBusca.Create (nil);
   try
      vPopup.FBuscaPor := ALookupBusca;
      vPopup.ShowModal;
      Result := vPopup.FDados;
   finally
      FreeAndNil (vPopup);
   end;
end;

procedure TFRMBusca.FormCreate (Sender: TObject);
begin
   FDados.Fields := TDictionary< string, string >.Create;
end;

procedure TFRMBusca.FormShow (Sender: TObject);
begin
   ReposicionaBotoes;
   AlimentaCampos;
end;

procedure TFRMBusca.ReposicionaBotoes;
begin
   btnConfirmar.Left := Trunc ((pnlBotoes.Width / 2) - btnConfirmar.Width - 5);
   btnCancelar.Left := btnConfirmar.Left + btnConfirmar.Width + 10;
end;

end.
