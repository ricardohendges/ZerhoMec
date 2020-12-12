inherited FrmMarcas: TFrmMarcas
  Caption = 'Marcas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
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
        object LabelMarcasID: TLabel
          Left = 20
          Top = 1
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object LabelMarcasNome: TLabel
          Left = 20
          Top = 61
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object LabelMarcasTipo: TLabel
          Left = 20
          Top = 117
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object edtMarcasNome: TDBEdit
          Left = 20
          Top = 80
          Width = 121
          Height = 21
          DataField = 'MAR_NOME'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtMarcasTipo: TDBEdit
          Left = 20
          Top = 136
          Width = 121
          Height = 21
          DataField = 'MAR_TIPO'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtMarcasID: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 2
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
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 464.882190000000000000
          Height = 26.456710000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_ID"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_NOME"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_TIPO"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
end
