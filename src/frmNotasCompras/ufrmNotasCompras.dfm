inherited frmNotasCompras: TfrmNotasCompras
  Caption = 'Notas Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tsListagem: TTabSheet
      inherited pnlInfos: TPanel
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 515
      ExplicitHeight = 425
      inherited pnlPrincipal: TPanel
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
          TabOrder = 5
        end
        object edtNTC_DATA: TDBEdit
          Left = 396
          Top = 35
          Width = 109
          Height = 21
          DataField = 'NTC_DATA'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object edtNTC_SITUACAO: TDBEdit
          Left = 212
          Top = 35
          Width = 157
          Height = 21
          DataField = 'NTC_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object edtNTC_VALOR: TDBEdit
          Left = 212
          Top = 85
          Width = 157
          Height = 21
          DataField = 'NTC_VALOR'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object DBGrid1: TDBGrid
          Left = 7
          Top = 216
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
    ReportOptions.CreateDate = 44145.902236655100000000
    ReportOptions.LastChange = 44173.900716932870000000
    Left = 472
    Top = 0
    Datasets = <
      item
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
      end
      item
        DataSet = frxDataSetItens
        DataSetName = 'frxDBItens'
      end>
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."NTC_VALOR"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."NTC_ID"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."NTC_DATA"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Fill.BackColor = clScrollBar
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Id Nota')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Total da Nota')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data da Nota')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 491.338900000000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ZehroMec'
            'Relat'#243'rio de Notas de Compras')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Gerado em: [Date] [Time]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina: [Page#] / [TotalPages#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        DataSet = frxDataSetItens
        DataSetName = 'frxDBItens'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."PRO_ID"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."PRO_NOME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."ITV_QTDE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."ITV_VALOR"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBItens."ITV_TOTAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Fill.BackColor = cl3DLight
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Unit')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
      end
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
  object frxDataSetItens: TfrxDBDataset
    UserName = 'frxDBItens'
    CloseDataSource = False
    DataSource = dsItens
    BCDToCurrency = False
    Left = 136
  end
end
