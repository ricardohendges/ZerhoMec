unit uFrmBaixaPgtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, frxClass, frxDBSet, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmBaseCrud1 = class(TfrmBaseCrud)
    SpeedButton1: TSpeedButton;
    dbContaPagar_ID: TDBEdit;
    dbNotaCompra_ID: TDBEdit;
    dbContaPagar_Valor: TDBEdit;
    dbFornecedor_ID: TDBEdit;
    dbParcela: TDBEdit;
    dbSaldo: TDBEdit;
    lbcpg_id: TLabel;
    lblValorCPG: TLabel;
    Label3: TLabel;
    lblFornecedor_ID: TLabel;
    lblSaldo: TLabel;
    lblVencimento: TLabel;
    lblParcela: TLabel;
    dtContaPagar_Vecto: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseCrud1: TfrmBaseCrud1;

implementation

{$R *.dfm}

end.
