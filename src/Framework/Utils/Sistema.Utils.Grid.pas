unit Sistema.Utils.Grid;

interface

uses
   System.Classes, System.StrUtils, System.SysUtils, Vcl.DBGrids, Data.DB, Vcl.ExtCtrls, FireDAC.Comp.Client,
   FireDAC.Comp.DataSet, FireDAC.Stan.Intf;

type
   TGridColunas = class
   private
      FGrid: TDBGrid;
      function IsNumericField (AField: TField): Boolean;
   public
      constructor Create (AGrid: TDBGrid); virtual;
      procedure Add (AField, ACaption: string; AWidth: Integer = 0; AMask: string = '';
        AVisible: Boolean = True);
   end;

   TGridTitulos = class
   public
      procedure OrdenaGrid (AQuery: TFDQuery; AColumn: TColumn);
      procedure AlimentaPanel (APanel: TPanel; AQuery: TFDQuery);
   end;

var
   GGridTitulos: TGridTitulos;

implementation

{ TGridColunas }

procedure TGridColunas.Add (AField, ACaption: string; AWidth: Integer; AMask: string; AVisible: Boolean);
var
   vColumn: TColumn;
begin
   if not Assigned (FGrid.DataSource) then
   begin
      raise Exception.Create ('DataSource não lincado na ' + FGrid.name + '! ');
      Exit;
   end
   else if not Assigned (FGrid.DataSource.DataSet) then
   begin
      raise Exception.Create ('DataSet não lincado na ' + FGrid.name + '! ');
      Exit;
   end;

   vColumn := FGrid.Columns.Add;
   try
      vColumn.Field := FGrid.DataSource.DataSet.FindField (AField);
      vColumn.Visible := AVisible;
      if not Assigned (vColumn.Field) then
         Exit;

      vColumn.Title.Caption := ACaption;
      if AWidth = 0 then
      begin
         if IsNumericField (vColumn.Field) then
            vColumn.Width := 60
         else
            vColumn.Width := 120;
      end
      else
         vColumn.Width := AWidth;

      case vColumn.Field.DataType of
         ftFloat:
            TFloatField (vColumn.Field).Alignment := taRightJustify;
         ftInteger:
            TIntegerField (vColumn.Field).Alignment := taRightJustify;
         ftBCD:
            TBCDField (vColumn.Field).Alignment := taRightJustify;
         ftFMTBcd:
            TFMTBCDField (vColumn.Field).Alignment := taRightJustify;
         ftDate:
            TDateField (vColumn.Field).Alignment := taLeftJustify;
         ftTime:
            TTimeField (vColumn.Field).Alignment := taLeftJustify;
         ftDateTime:
            TDateTimeField (vColumn.Field).Alignment := taLeftJustify;
      else
         TStringField (vColumn.Field).Alignment := taLeftJustify;
      end;
      if not AMask.IsEmpty then
         vColumn.Field.EditMask := AMask
      else if IsNumericField (vColumn.Field) and (vColumn.FieldName <> 'ID') then
         TBCDField (vColumn.Field).DisplayFormat := ',0.00';
   except
      on E: Exception do
         raise Exception.Create ('Field ' + AField + '(' + ACaption + ') não localizado! ' + #13 + E.Message);
   end;
end;

constructor TGridColunas.Create (AGrid: TDBGrid);
begin
   if AGrid.Columns.Count > 0 then
      AGrid.Columns.Clear;
   FGrid := AGrid;
end;

function TGridColunas.IsNumericField (AField: TField): Boolean;
begin
   Result := AField.DataType in [ftFloat, ftInteger, ftBCD, ftFMTBcd,
     ftLargeint];
end;

{ TGridTitulos }

procedure TGridTitulos.AlimentaPanel (APanel: TPanel; AQuery: TFDQuery);
begin
   APanel.Caption := AQuery.RecNo.ToString + ' de ' + AQuery.RecordCount.ToString + ' registros';
end;

procedure TGridTitulos.OrdenaGrid (AQuery: TFDQuery; AColumn: TColumn);
var
   AIndex: TFDIndex;
begin
   AIndex := AQuery.Indexes.FindIndex ('idx' + AColumn.FieldName);
   if not Assigned (AIndex) then
   begin
      AIndex := AQuery.Indexes.Add;
      AIndex.name := 'idx' + AColumn.FieldName;
      AIndex.Fields := AColumn.FieldName;
   end;

   if AIndex.Options = [soDescending] then
      AIndex.Options := [soNullFirst]
   else
      AIndex.Options := [soDescending];
   AIndex.Active := True;
   AQuery.IndexName := AIndex.name;
end;

end.
