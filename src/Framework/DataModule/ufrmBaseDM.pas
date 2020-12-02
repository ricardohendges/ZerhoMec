unit ufrmBaseDM;

interface

uses
   System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
   FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
   FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
   FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IniFiles,
   FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
   TfrmBaseDM = class(TDataModule)
      FDConnection: TFDConnection;
      TFDPhysFBDriverLink: TFDPhysFBDriverLink;
      TFDGUIxWaitCursor: TFDGUIxWaitCursor;
      procedure DataModuleCreate (Sender: TObject);
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


procedure TfrmBaseDM.DataModuleCreate (Sender: TObject);
var
   vArq: TIniFile;
begin
   if FileExists ('..\\DB\Config.ini') then
   begin
      FDConnection.Params.LoadFromFile ('..\\DB\Config.ini');
      FDConnection.Connected := True;
   end;
end;

end.
