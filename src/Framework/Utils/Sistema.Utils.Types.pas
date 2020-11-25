unit Sistema.Utils.Types;

interface

uses
   Vcl.DBCtrls, System.Classes, System.Generics.Collections;

type
   TFormActive = record
      CompFocusInsert: TDBEdit;
      CompFocusEdit: TDBEdit;
   end;

   TResBusca = record
      Ok: Boolean;
      Fields: TDictionary< String, string >;
   end;

   TTpBusca = (tbSQL);

const
   cSQL = '';

implementation

end.
