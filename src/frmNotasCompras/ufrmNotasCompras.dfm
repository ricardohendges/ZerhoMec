inherited frmNotasCompras: TfrmNotasCompras
  Caption = 'Notas Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ExplicitLeft = -3
    ExplicitTop = -2
    inherited tsListagem: TTabSheet
      inherited pnlInfos: TPanel
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited tsCadastro: TTabSheet
      inherited pnlPrincipal: TPanel
        ExplicitLeft = 1
        ExplicitTop = -2
        object lbl1: TLabel
          Left = 20
          Top = 16
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object lbl2: TLabel
          Left = 20
          Top = 66
          Width = 110
          Height = 13
          Caption = 'C'#243'digo do Fornecedor:'
        end
        object lbl3: TLabel
          Left = 20
          Top = 115
          Width = 157
          Height = 13
          Caption = 'C'#243'digo da Forma de Pagamento:'
        end
        object lbl6: TLabel
          Left = 212
          Top = 115
          Width = 63
          Height = 13
          Caption = 'Valor a Vista:'
        end
        object lbl7: TLabel
          Left = 396
          Top = 16
          Width = 68
          Height = 13
          Caption = 'Data da Nota:'
        end
        object lbl4: TLabel
          Left = 212
          Top = 16
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object lbl5: TLabel
          Left = 212
          Top = 66
          Width = 55
          Height = 13
          Caption = 'Valor Total:'
        end
        object edtNTC_ID: TDBEdit
          Left = 20
          Top = 35
          Width = 69
          Height = 21
          DataField = 'NTC_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtFOR_ID: TDBEdit
          Left = 20
          Top = 85
          Width = 69
          Height = 21
          DataField = 'FOR_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtFPA_ID: TDBEdit
          Left = 20
          Top = 134
          Width = 69
          Height = 21
          DataField = 'FPA_ID'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object edtNTC_AVISTA: TDBEdit
          Left = 212
          Top = 134
          Width = 157
          Height = 21
          DataField = 'NTC_AVISTA'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object edtNTC_DATA: TDBEdit
          Left = 396
          Top = 35
          Width = 109
          Height = 21
          DataField = 'NTC_DATA'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object edtNTC_SITUACAO: TDBEdit
          Left = 212
          Top = 35
          Width = 157
          Height = 21
          DataField = 'NTC_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object edtNTC_VALOR: TDBEdit
          Left = 212
          Top = 85
          Width = 157
          Height = 21
          DataField = 'NTC_VALOR'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object DBGrid1: TDBGrid
          Left = 7
          Top = 222
          Width = 498
          Height = 201
          DataSource = dsItens
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITC_ID'
              Title.Caption = 'ID'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO_ID'
              Title.Caption = 'ID Produto'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO_NOME'
              Title.Caption = 'Nome Produto'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UND_ABR'
              Title.Caption = 'Medida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITV_QTDE'
              Title.Caption = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITV_VALOR'
              Title.Caption = 'Valor Unit.'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITV_TOTAL'
              Title.Caption = 'Valor Total'
              Width = 80
              Visible = True
            end>
        end
        object dbnvgr1: TDBNavigator
          Left = 7
          Top = 185
          Width = 498
          Height = 25
          DataSource = dsItens
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbApplyUpdates]
          TabOrder = 8
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  inherited dsPadrao: TDataSource
    Left = 352
    Top = 0
  end
  inherited frxrprtPrincipal: TfrxReport
    Left = 472
    Top = 0
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 224
    Top = 65531
  end
  inherited FDPadrao: TFDQuery
    Left = 404
    Top = 0
  end
  object dsItens: TDataSource
    DataSet = qryItens
    Left = 472
    Top = 88
  end
  object qryItens: TFDQuery
    MasterSource = dsPadrao
    MasterFields = 'NTC_ID'
    Connection = frmBaseDM.FDConnection
    SQL.Strings = (
      'SELECT'
      '     ITEM_COMPRA.ITC_ID,'
      '     ITEM_COMPRA.NTC_ID,'
      '     PRODUTO_SERVICO.PRO_NOME,'
      '     ITEM_COMPRA.PRO_ID,'
      '     ITEM_COMPRA.UND_ABR,'
      '     ITEM_COMPRA.ITV_VALOR,'
      '     ITEM_COMPRA.ITV_QTDE,'
      '     ITEM_COMPRA.ITV_TOTAL'
      'FROM ITEM_COMPRA'
      '     INNER JOIN PRODUTO_SERVICO'
      '           ON PRODUTO_SERVICO.PRO_ID = ITEM_COMPRA.PRO_ID'
      '     WHERE ITEM_COMPRA.NTC_ID = :NTC_ID ')
    Left = 472
    Top = 144
    ParamData = <
      item
        Name = 'NTC_ID'
        ParamType = ptInput
      end>
  end
end
