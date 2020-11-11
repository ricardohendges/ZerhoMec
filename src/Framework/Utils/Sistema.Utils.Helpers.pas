unit Sistema.Utils.Helpers;

interface

uses
   FireDAC.Comp.Client, Vcl.Controls, Vcl.Forms, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
   System.SysUtils, Vcl.Dialogs;

type
   TFDHelper = class helper for TFDQuery
      procedure LoadSQL (ASQL: string);
   end;

   TPanelHelper = class helper for TPanel
      function ValidouCampos: Boolean;
   end;

implementation

{ TFDHelper }

procedure TFDHelper.LoadSQL (ASQL: string);
begin
   Screen.Cursor := crSQLWait;
   try
      Self.Open (ASQL);
      if Assigned (Self.FindField('ID')) then
      begin
         Self.FindField ('ID').AutoGenerateValue := arAutoInc;
         Self.FindField ('ID').Required := False;
      end;
   finally
      Screen.Cursor := crDefault;
   end;
end;

{ TPanelHelper }

function TPanelHelper.ValidouCampos: Boolean;
var
   I: Integer;
begin
   Result := True;
   for I := 0 to Pred(Self.ComponentCount) do
   begin
      if Self.Components[I].ClassNameIs ('TDBEdit') then
         if TDBEdit (Self.Components[I]).Field.Required and
           (Trim(TDBEdit(Self.Components[I]).Text) = '') then
         begin
            ShowMessage ('O campo ' + TDBEdit(Self.Components[I])
              .Field.DisplayLabel + ' não pode ser nulo!');
            if TDBEdit (Self.Components[I]).CanFocus then
               TDBEdit (Self.Components[I]).SetFocus;
            Exit (False);
         end;
   end;
end;

end.
