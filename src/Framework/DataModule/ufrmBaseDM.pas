unit ufrmBaseDM;

interface

uses
   System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
   FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
   FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
   FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
   TfrmBaseDM = class(TDataModule)
      FDConnection: TFDConnection;
      TFDPhysFBDriverLink: TFDPhysFBDriverLink;
      TFDGUIxWaitCursor: TFDGUIxWaitCursor;
      FDPrincipal: TFDQuery;
   private
    { Private declarations }
   public
    { Public declarations }
   end;

var
   frmBaseDM: TfrmBaseDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
