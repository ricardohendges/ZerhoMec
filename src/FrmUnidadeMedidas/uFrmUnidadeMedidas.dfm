inherited FrmUnidadeMedidas: TFrmUnidadeMedidas
  Caption = 'Unidade de Medidas'
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
        ExplicitLeft = 1
        ExplicitTop = 2
        object LabelUndMedidaABR: TLabel
          Left = 20
          Top = 0
          Width = 54
          Height = 13
          Caption = 'Abrevia'#231#227'o'
        end
        object LabelUndMedidaNome: TLabel
          Left = 20
          Top = 58
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object edtUndMedidaABR: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'UND_ABR'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtUndMedidaNome: TDBEdit
          Left = 20
          Top = 77
          Width = 121
          Height = 21
          DataField = 'UND_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
      end
    end
  end
  inherited frxrprtPrincipal: TfrxReport
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
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 634.961040000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de unidade de medidas cadastradas')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."UND_ABR"] ')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."UND_NOME"] ')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
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
            'Abrevia'#231#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
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
      end
    end
  end
end
