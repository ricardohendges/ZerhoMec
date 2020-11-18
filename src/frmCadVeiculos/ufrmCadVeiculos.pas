unit ufrmCadVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBaseCrud, Data.DB, frxClass,
  frxDBSet, System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmBaseCrud2 = class(TfrmBaseCrud)
    lblVEI_ID: TLabel;
    dbedtVEI_ID: TDBEdit;
    lblCLI_ID: TLabel;
    edtCLI_COD: TEdit;
    lblMARCA_VEICULO: TLabel;
    dbedtMAR_ID: TDBEdit;
    lblANO: TLabel;
    dbedtVEI_ANO: TDBEdit;
    lblVEI_MODELO: TLabel;
    dbedtVEI_MODELO: TDBEdit;
    lblVEI_PLACA: TLabel;
    dbedtVEI_PLACA: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseCrud2: TfrmBaseCrud2;

implementation

{$R *.dfm}

end.
