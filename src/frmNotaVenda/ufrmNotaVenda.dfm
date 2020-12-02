inherited frmNotaVenda: TfrmNotaVenda
  Caption = 'Nota de Venda'
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
        object lbl1: TLabel
          Left = 198
          Top = 34
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lbl2: TLabel
          Left = 7
          Top = 157
          Width = 30
          Height = 13
          Caption = 'Avista'
        end
        object lbl3: TLabel
          Left = 198
          Top = 128
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object lbl4: TLabel
          Left = 7
          Top = 213
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
        end
        object lbl5: TLabel
          Left = 7
          Top = 45
          Width = 47
          Height = 13
          Caption = 'ID Cliente'
        end
        object lbl6: TLabel
          Left = 7
          Top = 106
          Width = 75
          Height = 13
          Caption = 'ID Forma Pagto'
        end
        object lbl7: TLabel
          Left = 439
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object dbedtNvCliID: TDBEdit
          Left = 7
          Top = 64
          Width = 121
          Height = 21
          DataField = 'CLI_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbedtNvFpID: TDBEdit
          Left = 7
          Top = 125
          Width = 121
          Height = 21
          DataField = 'FPA_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbedtNvAvista: TDBEdit
          Left = 7
          Top = 176
          Width = 121
          Height = 21
          DataField = 'NTV_AVISTA'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbedtNvSituacao: TDBEdit
          Left = 7
          Top = 232
          Width = 121
          Height = 21
          DataField = 'NTV_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbedtNvValor: TDBEdit
          Left = 198
          Top = 53
          Width = 121
          Height = 21
          DataField = 'NTV_VALOR'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object dbedtNvData: TDBEdit
          Left = 198
          Top = 147
          Width = 121
          Height = 21
          DataField = 'NTV_DATA'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object dbedtNvID: TDBEdit
          Left = 456
          Top = 13
          Width = 41
          Height = 21
          DataField = 'NTV_ID'
          DataSource = dsPadrao
          TabOrder = 6
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
    Left = 208
    Top = 392
  end
  inherited frxrprtPrincipal: TfrxReport
    DataSet = frxDBDatasetPrincipal
    DataSetName = 'dsPadrao'
    ReportOptions.CreateDate = 44145.902236655100000000
    ReportOptions.LastChange = 44166.920514178240000000
    Left = 352
    Top = 392
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
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
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
          Left = 3.779530000000000000
          Top = 3.779529999999990000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Cliente')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'ID Forma Pgto')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
        RowCount = 0
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."NTV_ID"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."NTV.CLI_ID]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."NTV.FPA_ID]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."NTV.VALOR]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Visible = False
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."NTV.DATA]')
        end
      end
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Top = 395
  end
end
