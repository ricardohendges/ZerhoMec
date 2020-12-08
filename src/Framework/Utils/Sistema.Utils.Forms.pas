unit Sistema.Utils.Forms;

interface

procedure AbrirForm (AClassName: String);

implementation

uses
   Vcl.Forms, System.Classes, Vcl.Dialogs;

procedure AbrirForm (AClassName: String);
var
   vFormClass: TFormClass;
   vForm: TForm;
   i: Integer;
begin
   for i := 0 to Pred(Screen.FormCount) do
   begin
      if Screen.Forms[i].ClassName = AClassName then
      begin
         Screen.Forms[i].Show;
         Exit;
      end;
   end;
   vFormClass := TFormClass (FindClass(AClassName));
   vForm := vFormClass.Create (Application);
   if vForm.ClassName <> AClassName then
      ShowMessage ('Formulário não encontrado')
   else
      vForm.Show;
end;

end.
