unit ufrwUtilsForms;

interface

procedure AbrirForm (AClassName: String);

implementation

uses
   Vcl.Forms, System.Classes;

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
   vForm.Show;
end;

end.
