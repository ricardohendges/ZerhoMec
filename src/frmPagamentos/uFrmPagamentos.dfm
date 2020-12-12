inherited frmPagamentos: TfrmPagamentos
  Caption = 'Pagamentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
    inherited tsListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 515
      ExplicitHeight = 425
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
        object LabelIDPagamento: TLabel
          Left = 20
          Top = 8
          Width = 75
          Height = 13
          Caption = 'Pagamento  ID:'
        end
        object LabelDesconto: TLabel
          Left = 20
          Top = 50
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object LabelObservacao: TLabel
          Left = 20
          Top = 90
          Width = 62
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object EdtPagamento: TDBEdit
          Left = 20
          Top = 25
          Width = 121
          Height = 21
          DataField = 'FPA_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EdtDescricao: TDBEdit
          Left = 20
          Top = 65
          Width = 121
          Height = 21
          DataField = 'FPA_DESC'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EdtObservacao: TDBEdit
          Left = 20
          Top = 105
          Width = 121
          Height = 21
          DataField = 'FPA_OBS'
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
  inherited frxrprtPrincipal: TfrxReport
    ReportOptions.CreateDate = 44145.902236655100000000
    ReportOptions.LastChange = 44145.902236655100000000
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
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = -3.779530000000000000
          Width = 272.126160000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 4.000000000000000000
          Memo.UTF8W = (
            'Tela de Pagamentos')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagamento ID')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FPA_ID"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FPA_DESC"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 7.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FPA_OBS"]')
        end
      end
    end
  end
end
