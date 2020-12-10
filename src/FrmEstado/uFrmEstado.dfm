inherited FrmEstado: TFrmEstado
  Caption = 'Estado'
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
        object LabelEstID: TLabel
          Left = 25
          Top = 0
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object LabelEstSigla: TLabel
          Left = 20
          Top = 112
          Width = 22
          Height = 13
          Caption = 'Sigla'
        end
        object LabelEstNome: TLabel
          Left = 20
          Top = 55
          Width = 63
          Height = 13
          Caption = 'Nome Estado'
        end
        object LabelEstPaisNome: TLabel
          Left = 20
          Top = 176
          Width = 49
          Height = 13
          Caption = 'Pais Nome'
        end
        object EditEstID: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'EST_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EditEstNome: TDBEdit
          Left = 20
          Top = 74
          Width = 121
          Height = 21
          DataField = 'EST_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EditEstSigla: TDBEdit
          Left = 20
          Top = 131
          Width = 121
          Height = 21
          DataField = 'EST_SIGLA'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object EditEstPaisNome: TDBEdit
          Left = 20
          Top = 195
          Width = 121
          Height = 21
          DataField = 'PAIS_NOME'
          DataSource = dsPadrao
          TabOrder = 3
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
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
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 11.338590000000000000
          Width = 464.882190000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de estados cadastrados')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
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
            'ID Estado')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
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
            'Estado Nome ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
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
            'Sigla')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
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
            'Pais Nome')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."EST_ID"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."EST_NOME"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."EST_SIGLA"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PAIS_NOME"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 650.079160000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 26.456710000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 26.456710000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 26.456710000000000000
          Height = -26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
end
