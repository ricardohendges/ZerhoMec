inherited frmNotaVenda: TfrmNotaVenda
  Caption = 'Nota de Venda'
  ExplicitTop = -22
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsNotaItemVenda
    OnChange = pgcPrincipalChange
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
        ExplicitLeft = -2
        ExplicitTop = 2
        object lbl1: TLabel
          Left = 200
          Top = 45
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lbl2: TLabel
          Left = 20
          Top = 85
          Width = 30
          Height = 13
          Caption = 'Avista'
        end
        object lbl3: TLabel
          Left = 200
          Top = 85
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object lbl4: TLabel
          Left = 200
          Top = 5
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
        end
        object lbl5: TLabel
          Left = 20
          Top = 5
          Width = 47
          Height = 13
          Caption = 'ID Cliente'
        end
        object lbl6: TLabel
          Left = 20
          Top = 45
          Width = 75
          Height = 13
          Caption = 'ID Forma Pagto'
        end
        object lbl7: TLabel
          Left = 456
          Top = 5
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object dbedtNvCliID: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'CLI_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbedtNvFpID: TDBEdit
          Left = 20
          Top = 60
          Width = 121
          Height = 21
          DataField = 'FPA_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbedtNvAvista: TDBEdit
          Left = 20
          Top = 100
          Width = 121
          Height = 21
          DataField = 'NTV_AVISTA'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbedtNvSituacao: TDBEdit
          Left = 200
          Top = 20
          Width = 121
          Height = 21
          DataField = 'NTV_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbedtNvValor: TDBEdit
          Left = 200
          Top = 60
          Width = 121
          Height = 21
          DataField = 'NTV_VALOR'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object dbedtNvData: TDBEdit
          Left = 200
          Top = 100
          Width = 121
          Height = 21
          DataField = 'NTV_DATA'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object dbedtNvID: TDBEdit
          Left = 456
          Top = 20
          Width = 41
          Height = 21
          DataField = 'NTV_ID'
          DataSource = dsPadrao
          TabOrder = 6
        end
      end
    end
    object tsNotaItemVenda: TTabSheet
      Caption = 'Itens da Venda'
      ImageIndex = 2
      ExplicitLeft = 5
      ExplicitTop = 26
      object pnlItemNTV: TPanel
        Left = 0
        Top = 0
        Width = 515
        Height = 177
        Align = alTop
        TabOrder = 0
        ExplicitLeft = -2
        ExplicitTop = -5
        object lbl8: TLabel
          Left = 20
          Top = 5
          Width = 100
          Height = 13
          Caption = 'ID da Nota de Venda'
        end
        object lbl9: TLabel
          Left = 200
          Top = 85
          Width = 51
          Height = 13
          Caption = 'Valor Total'
        end
        object lbl10: TLabel
          Left = 20
          Top = 45
          Width = 67
          Height = 13
          Caption = 'ID do Produto'
        end
        object lbl11: TLabel
          Left = 20
          Top = 85
          Width = 64
          Height = 13
          Caption = 'Valor do Item'
        end
        object lbl12: TLabel
          Left = 200
          Top = 5
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object lbl13: TLabel
          Left = 200
          Top = 45
          Width = 91
          Height = 13
          Caption = 'Unidade de Medida'
        end
        object lbl14: TLabel
          Left = 456
          Top = 5
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object dbedtItvNvID: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'ITV_ID'
          DataSource = dsItemNTV
          TabOrder = 0
        end
        object dbedtItvProID: TDBEdit
          Left = 20
          Top = 60
          Width = 121
          Height = 21
          DataField = 'PRO_ID'
          DataSource = dsItemNTV
          TabOrder = 1
        end
        object dbedtItvUndAbr: TDBEdit
          Left = 200
          Top = 60
          Width = 121
          Height = 21
          DataField = 'UND_ABR'
          DataSource = dsItemNTV
          TabOrder = 2
        end
        object dbedtItvValor: TDBEdit
          Left = 20
          Top = 100
          Width = 121
          Height = 21
          DataField = 'ITV_VALOR'
          DataSource = dsItemNTV
          TabOrder = 3
        end
        object dbedtItvQtde: TDBEdit
          Left = 200
          Top = 20
          Width = 121
          Height = 21
          DataField = 'ITV_QTDE'
          DataSource = dsItemNTV
          TabOrder = 4
        end
        object dbedtItvTotal: TDBEdit
          Left = 200
          Top = 100
          Width = 121
          Height = 21
          DataField = 'ITV_TOTAL'
          DataSource = dsItemNTV
          TabOrder = 5
        end
        object dbedtItvID: TDBEdit
          Left = 456
          Top = 20
          Width = 41
          Height = 21
          DataField = 'ITV_ID'
          DataSource = dsItemNTV
          TabOrder = 6
        end
        object dbnvgr1: TDBNavigator
          Left = 20
          Top = 146
          Width = 240
          Height = 25
          DataSource = dsItemNTV
          TabOrder = 7
        end
      end
      object pnlItemNTVGrid: TPanel
        Left = 0
        Top = 177
        Width = 515
        Height = 248
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 64
        ExplicitTop = 203
        ExplicitWidth = 185
        ExplicitHeight = 41
        object dbgrdItemVenda: TDBGrid
          Left = 1
          Top = 1
          Width = 513
          Height = 246
          Align = alClient
          DataSource = dsItemNTV
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  inherited actlstPrincipal: TActionList
    Left = 272
    Top = 392
  end
  inherited dsPadrao: TDataSource
    Left = 376
    Top = 336
  end
  inherited frxrprtPrincipal: TfrxReport
    ReportOptions.CreateDate = 44145.902236655100000000
    ReportOptions.LastChange = 44166.920514178200000000
    Left = 312
    Top = 336
    Datasets = <
      item
        DataSet = frxdbdtItem
        DataSetName = 'dsItemNTV'
      end
      item
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
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
      object rtNotaVenda: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Height = 90.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 187.086735000000000000
          Top = 30.236240000000000000
          Width = 343.937230000000000000
          Height = 60.472480000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Notas de Venda')
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 7.559060000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Nota Venda')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Cliente')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Forma Pgto')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            '[dsPadrao."NTV_ID"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            '[dsPadrao."CLI_ID"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            '[dsPadrao."FPA_ID"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            '[dsPadrao."NTV_VALOR"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Visible = False
          DataSet = frxDBDatasetPrincipal
          DataSetName = 'dsPadrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16774348
          Memo.UTF8W = (
            '[dsPadrao."NTV_DATA"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtItem
        DataSetName = 'dsItemNTV'
        RowCount = 0
        object Memo15: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsItemNTV."ITV_ID"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsItemNTV."PRO_ID"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsItemNTV."UND_ABR"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 249.448980000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsItemNTV."ITV_VALOR"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 325.039580000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsItemNTV."ITV_QTDE"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsItemNTV."ITV_TOTAL"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Item')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Produto')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Frame.Typ = []
          Memo.UTF8W = (
            'Unidade')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtItem
          DataSetName = 'dsItemNTV'
          Frame.Typ = []
          Memo.UTF8W = (
            'Total do Item')
        end
      end
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Top = 395
  end
  inherited FDPadrao: TFDQuery
    Left = 468
    Top = 344
  end
  object FDQueryItemNTV: TFDQuery
    AfterOpen = FDQueryItemNTVAfterOpen
    OnNewRecord = FDQueryItemNTVNewRecord
    MasterSource = dsPadrao
    MasterFields = 'NTV_ID'
    Connection = frmBaseDM.FDConnection
    SQL.Strings = (
      ''
      '   SELECT ITEM_VENDA.ITV_ID, ITEM_VENDA.NTV_ID,'
      'ITEM_VENDA.PRO_ID, ITEM_VENDA.UND_ABR, ITEM_VENDA.ITV_VALOR,'
      'ITEM_VENDA.ITV_QTDE, ITEM_VENDA.ITV_TOTAL,'
      'PRO.PRO_NOME, NTV.NTV_VALOR, CLI.CLI_NOME'
      '   FROM ITEM_VENDA'
      'INNER JOIN NOTA_VENDA NTV ON (NTV.NTV_ID = ITEM_VENDA.ITV_ID)'
      
        'INNER JOIN PRODUTO_SERVICO PRO ON (PRO.PRO_ID = ITEM_VENDA.PRO_I' +
        'D)'
      
        'INNER JOIN UNIDADE_MEDIDA UND ON (UND.UND_ABR = ITEM_VENDA.UND_A' +
        'BR)'
      'INNER JOIN CLIENTE CLI ON (CLI.CLI_ID = NTV.CLI_ID)')
    Left = 448
    Top = 96
  end
  object dsItemNTV: TDataSource
    DataSet = FDQueryItemNTV
    Left = 368
    Top = 104
  end
  object frxdbdtItem: TfrxDBDataset
    UserName = 'dsItemNTV'
    CloseDataSource = False
    DataSource = dsItemNTV
    BCDToCurrency = False
    Left = 408
    Top = 152
  end
end
