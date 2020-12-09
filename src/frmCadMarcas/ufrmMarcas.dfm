inherited frmMarca: TfrmMarca
  Caption = 'Marca'
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
        object LabelMarCOD: TLabel
          Left = 20
          Top = 5
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object LabelMarTipo: TLabel
          Left = 22
          Top = 45
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object LabelMarNome: TLabel
          Left = 22
          Top = 93
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object edtCodigo: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtNome: TDBEdit
          Left = 20
          Top = 112
          Width = 227
          Height = 21
          DataField = 'MAR_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtTipo: TDBEdit
          Left = 20
          Top = 64
          Width = 227
          Height = 21
          DataField = 'MAR_TIPO'
          DataSource = dsPadrao
          TabOrder = 2
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
    Left = 184
  end
  inherited frxrprtPrincipal: TfrxReport
    Left = 296
    Top = 240
    Datasets = <
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 517.795610000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de marcas cadastradas')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_ID"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_NOME"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_TIPO"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 483.779840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 416
    Top = 243
  end
end
