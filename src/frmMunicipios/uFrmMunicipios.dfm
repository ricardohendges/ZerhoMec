inherited frmMunicipio: TfrmMunicipio
  Caption = 'Munic'#237'pio'
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
        object ID_Município: TLabel
          Left = 20
          Top = 5
          Width = 61
          Height = 13
          Caption = 'Munic'#237'pio ID:'
        end
        object ID_Estado: TLabel
          Left = 20
          Top = 47
          Width = 51
          Height = 13
          Caption = 'Estado ID:'
        end
        object Município: TLabel
          Left = 20
          Top = 87
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio:'
        end
        object IBGE: TLabel
          Left = 20
          Top = 127
          Width = 27
          Height = 13
          Caption = 'IBGE:'
        end
        object EdtIDEstado: TDBEdit
          Left = 20
          Top = 60
          Width = 121
          Height = 21
          DataField = 'EST_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EdtMunicipio: TDBEdit
          Left = 20
          Top = 100
          Width = 121
          Height = 21
          DataField = 'MUN_NOME'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object EdtIGBE: TDBEdit
          Left = 20
          Top = 142
          Width = 121
          Height = 21
          DataField = 'MUN_IBGE'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object EdtIDMunicipio: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'MUN_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object Button1: TButton
          Left = 168
          Top = 58
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 4
          OnClick = Button1Click
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
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 11.338590000000000000
          Width = 253.228510000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tela de Munic'#237'pios')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio ID')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado ID')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'IBGE')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MUN_ID"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."EST_ID"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MUN_NOME"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MUN_IBGE"]')
        end
      end
    end
  end
end
