inherited frmProdServ: TfrmProdServ
  Caption = 'Produtos e Servicos'
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
        object LabelProdutoID: TLabel
          Left = 20
          Top = 9
          Width = 56
          Height = 13
          Caption = 'Produto ID:'
        end
        object LabelUndMed: TLabel
          Left = 20
          Top = 50
          Width = 95
          Height = 13
          Caption = 'Unidade de Medida:'
        end
        object LabelMarca: TLabel
          Left = 20
          Top = 91
          Width = 33
          Height = 13
          Caption = 'Marca:'
        end
        object LabelProNome: TLabel
          Left = 20
          Top = 131
          Width = 87
          Height = 13
          Caption = 'Nome do Produto:'
        end
        object LabelProTipo: TLabel
          Left = 20
          Top = 171
          Width = 80
          Height = 13
          Caption = 'Tipo do Produto:'
        end
        object LabelProValor: TLabel
          Left = 20
          Top = 211
          Width = 84
          Height = 13
          Caption = 'Valor do Produto:'
        end
        object LabelProCusto: TLabel
          Left = 20
          Top = 249
          Width = 88
          Height = 13
          Caption = 'Custo do Produto:'
        end
        object LabelProSituacao: TLabel
          Left = 20
          Top = 289
          Width = 101
          Height = 13
          Caption = 'Situa'#231#227'o do Produto:'
        end
        object EdtIDProduto: TDBEdit
          Left = 20
          Top = 23
          Width = 121
          Height = 21
          DataField = 'PRO_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EdtUndMedida: TDBEdit
          Left = 20
          Top = 64
          Width = 121
          Height = 21
          DataField = 'UND_ABR'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EdtMarca: TDBEdit
          Left = 20
          Top = 105
          Width = 121
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object EdtNomeProduto: TDBEdit
          Left = 20
          Top = 144
          Width = 121
          Height = 21
          DataField = 'PRO_NOME'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object EdtTipoProduto: TDBEdit
          Left = 20
          Top = 184
          Width = 121
          Height = 21
          DataField = 'PRO_TIPO'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object EdtValorProduto: TDBEdit
          Left = 20
          Top = 224
          Width = 121
          Height = 21
          DataField = 'PRO_VALOR'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object EdtCustoProduto: TDBEdit
          Left = 20
          Top = 262
          Width = 121
          Height = 21
          DataField = 'PRO_CUSTO'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object EdtSitProduto: TDBEdit
          Left = 20
          Top = 304
          Width = 121
          Height = 21
          DataField = 'PRO_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 7
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
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = -11.338590000000000000
          Width = 351.496290000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tela Produtos e Servi'#231'os')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto ID')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Und Medida')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Produto')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo Produto')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Produto')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Custo Produto')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Situa'#231#227'o Produto')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PRO_ID"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."UND_ABR"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MAR_ID"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 30.236240000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PRO_NOME"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PRO_TIPO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PRO_VALOR"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PRO_CUSTO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 30.236240000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."PRO_SITUACAO"]')
          ParentFont = False
        end
      end
    end
  end
end
