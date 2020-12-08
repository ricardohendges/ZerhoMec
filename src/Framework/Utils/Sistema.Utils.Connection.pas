unit Sistema.Utils.Connection;

interface

uses
   Sistema.Utils.Types, System.Classes, FireDAC.Comp.Client, System.SysUtils,
   System.Generics.Collections;

type
   TBaseConnection = class
   public
      function GetQueryWithConnection: TFDQuery;
      function GetConnection: TFDConnection;
      function GetResultFromSQL (ASQL: string): TDictionary< String, string >;

   end;

var
   GbaseConnection: TBaseConnection;

implementation

{ TBaseConnection }

function TBaseConnection.GetConnection: TFDConnection;
var
   vCustom: TFDConnection;
begin
   if FileExists ('..\\DB\Config.ini') then
   begin
      vCustom := TFDConnection.Create (nil);
      vCustom.Params.LoadFromFile ('..\\DB\Config.ini');
      vCustom.Connected := True;
      Result := vCustom;
   end;
end;

function TBaseConnection.GetQueryWithConnection: TFDQuery;
var
   vQuery: TFDQuery;
begin
   vQuery := TFDQuery.Create (nil);
   try
      vQuery.Connection := GetConnection;
      Result := vQuery;
   finally
      vQuery.Connection.Free;
      vQuery.Free;
   end;
end;

function TBaseConnection.GetResultFromSQL (ASQL: string): TDictionary< String, string >;
var
   vResult: TDictionary< String, string >;
   vQuery: TFDQuery;
   I: Integer;
begin
   vResult := TDictionary< String, string >.Create;
   try
      vQuery := GetQueryWithConnection;
      try
         for I := 0 to Pred(vQuery.Fields.Count) do
            vResult.Add (vQuery.Fields[I].FieldName, vQuery.Fields[I].Text);
         Result := vResult;
      finally
         vQuery.Free;
      end;
   finally
      FreeAndNil (vResult);
   end;
end;

end.
