inherited FrmFornecedor: TFrmFornecedor
  Caption = 'Fornecedor'
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
        ExplicitLeft = 1
        ExplicitTop = -2
        object LabelForneID: TLabel
          Left = 20
          Top = 1
          Width = 69
          Height = 13
          Caption = 'ID Fornecedor'
        end
        object LabelForneMunID: TLabel
          Left = 20
          Top = 61
          Width = 57
          Height = 13
          Caption = 'ID Municipio'
        end
        object LabelForneNome: TLabel
          Left = 20
          Top = 123
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object LabelForneCNPJ: TLabel
          Left = 20
          Top = 178
          Width = 25
          Height = 13
          Caption = 'CNPJ'
        end
        object LabelForneSitua: TLabel
          Left = 20
          Top = 237
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
        end
        object LabelForneInsc: TLabel
          Left = 20
          Top = 296
          Width = 43
          Height = 13
          Caption = 'Inscri'#231#227'o'
        end
        object LabelForneTelefone: TLabel
          Left = 20
          Top = 352
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object LabelForneEmail: TLabel
          Left = 184
          Top = 1
          Width = 28
          Height = 13
          Caption = 'E-Mail'
        end
        object LabelForneEndere: TLabel
          Left = 184
          Top = 61
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object edtForneNome: TDBEdit
          Left = 20
          Top = 142
          Width = 121
          Height = 21
          DataField = 'FOR_NOME'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtForneCNPJ: TDBEdit
          Left = 20
          Top = 197
          Width = 121
          Height = 21
          DataField = 'FOR_CNPJ'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtForneSitua: TDBEdit
          Left = 20
          Top = 256
          Width = 121
          Height = 21
          DataField = 'FOR_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object edtForneInsc: TDBEdit
          Left = 20
          Top = 315
          Width = 121
          Height = 21
          DataField = 'FOR_INSCRICAO'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object edtForneTelefone: TDBEdit
          Left = 20
          Top = 371
          Width = 121
          Height = 21
          DataField = 'FOR_TELEFONE'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object edtForneEmail: TDBEdit
          Left = 184
          Top = 20
          Width = 121
          Height = 21
          DataField = 'FOR_EMAIL'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object edtForneEndere: TDBEdit
          Left = 184
          Top = 80
          Width = 121
          Height = 21
          DataField = 'FOR_ENDERECO'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object edtForneID: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'FOR_ID'
          DataSource = dsPadrao
          TabOrder = 7
        end
        object edtForneIDMun: TDBEdit
          Left = 20
          Top = 80
          Width = 121
          Height = 21
          DataField = 'MUN_ID'
          DataSource = dsPadrao
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
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 540.472790000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de fornecedores cadastrados')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_ID"] ')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."MUN_ID"] ')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_NOME"] ')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_CNPJ"] ')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_SITUACAO"] ')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_INSCRICAO"] ')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_TELEFONE"] ')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_EMAIL"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 18.897650000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."FOR_ENDERECO"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Height = 34.015770000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
end
