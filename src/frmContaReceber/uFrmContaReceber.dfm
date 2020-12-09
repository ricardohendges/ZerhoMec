inherited frmContaReceber: TfrmContaReceber
  Caption = 'Conta Receber'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 432
    Top = 192
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  inherited pgcPrincipal: TPageControl
    ActivePage = tbBaixaReceber
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
        object lblCodigo: TLabel
          Left = 20
          Top = 5
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblNotaVenda: TLabel
          Left = 20
          Top = 60
          Width = 56
          Height = 13
          Caption = 'Nota Venda'
        end
        object lblCliente: TLabel
          Left = 20
          Top = 115
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object lblValor: TLabel
          Left = 20
          Top = 170
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lblVencimento: TLabel
          Left = 264
          Top = 5
          Width = 55
          Height = 13
          Caption = 'Vencimento'
        end
        object lvlSaldo: TLabel
          Left = 264
          Top = 60
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object lblParcela: TLabel
          Left = 264
          Top = 170
          Width = 35
          Height = 13
          Caption = 'Parcela'
        end
        object dbedtVencimento: TDBEdit
          Left = 264
          Top = 20
          Width = 121
          Height = 21
          DataField = 'crb_vencimento'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbedtSaldo: TDBEdit
          Left = 264
          Top = 75
          Width = 121
          Height = 21
          DataField = 'crb_saldo'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbedtParcela: TDBEdit
          Left = 264
          Top = 189
          Width = 121
          Height = 21
          DataField = 'crb_parcela'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbedtCodigo: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'CRB_ID'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbedtNotaVenda: TDBEdit
          Left = 20
          Top = 75
          Width = 121
          Height = 21
          DataField = 'ntv_id'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object dbedtValor: TDBEdit
          Left = 20
          Top = 189
          Width = 121
          Height = 21
          DataField = 'crb_valor'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object dbedtCliente: TDBEdit
          Left = 20
          Top = 130
          Width = 111
          Height = 21
          DataField = 'cli_id'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object btnCliente: TButton
          Left = 169
          Top = 128
          Width = 57
          Height = 25
          Caption = 'Cliente'
          TabOrder = 7
          OnClick = btnClienteClick
        end
        object dbedtClienteNome: TDBEdit
          Left = 264
          Top = 130
          Width = 121
          Height = 21
          DataField = 'cli_nome'
          DataSource = dsPadrao
          TabOrder = 8
        end
      end
    end
    object tbBaixaReceber: TTabSheet
      Caption = 'Baixa Receber'
      ImageIndex = 2
      object pnlBaixaReceber: TPanel
        Left = 0
        Top = 0
        Width = 515
        Height = 241
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 507
        object lblCodigoBaixaFilho: TLabel
          Left = 20
          Top = 5
          Width = 62
          Height = 13
          Caption = 'C'#243'digo Baixa'
        end
        object lblCodigoContaReceber: TLabel
          Left = 20
          Top = 60
          Width = 36
          Height = 13
          Caption = 'C'#243'digo '
        end
        object lblFormaPagamentoCodigo: TLabel
          Left = 20
          Top = 114
          Width = 87
          Height = 13
          Caption = 'Forma Pagamento'
        end
        object lblBaixaReceberData: TLabel
          Left = 20
          Top = 174
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object lblBaixaReceberMulta: TLabel
          Left = 264
          Top = 5
          Width = 26
          Height = 13
          Caption = 'Multa'
        end
        object lblBaixaReceberValor: TLabel
          Left = 264
          Top = 114
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lblBaixaReceberDesconto: TLabel
          Left = 264
          Top = 174
          Width = 45
          Height = 13
          Caption = 'Desconto'
        end
        object lblBaixaReceberJuros: TLabel
          Left = 264
          Top = 60
          Width = 26
          Height = 13
          Caption = 'Juros'
        end
        object dbedtCodigoBaixaReceber: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object dbedtCodigoContaReceber: TDBEdit
          Left = 20
          Top = 75
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object dbedtFormaPagamentoCódigo: TDBEdit
          Left = 20
          Top = 130
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object dbedtDataBaixaReceber: TDBEdit
          Left = 20
          Top = 189
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object dbedtBaixaReceberMulta: TDBEdit
          Left = 264
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object dbedtBaixaReceberJuros: TDBEdit
          Left = 264
          Top = 75
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object dbedt7: TDBEdit
          Left = 264
          Top = 130
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object dbedtBaixaReceberDesconto: TDBEdit
          Left = 264
          Top = 189
          Width = 121
          Height = 21
          TabOrder = 7
        end
      end
      object pnlGridFilhos: TPanel
        Left = 0
        Top = 241
        Width = 515
        Height = 184
        Align = alClient
        TabOrder = 1
        object dbgrdBaixaReceber: TDBGrid
          Left = 1
          Top = 1
          Width = 513
          Height = 182
          Align = alClient
          DataSource = dsBaixaReceber
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
    Left = 168
    Top = 352
  end
  inherited dsPadrao: TDataSource
    Left = 96
    Top = 352
  end
  inherited frxrprtPrincipal: TfrxReport
    ReportOptions.CreateDate = 44145.902236655100000000
    ReportOptions.LastChange = 44145.902236655100000000
    Left = 264
    Top = 352
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
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 313.700990000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTA RECEBER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Venda')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."CRB_ID"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."ntv_id"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."cli_id"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."crb_valor"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 11.338590000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."crb_valor"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."crb_saldo"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsPadrao."crb_parcela"]')
          ParentFont = False
        end
      end
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 368
    Top = 355
  end
  inherited FDPadrao: TFDQuery
    Left = 36
    Top = 352
  end
  object fdBaixaReceber: TFDQuery
    Connection = frmBaseDM.FDConnection
    Left = 472
    Top = 32
  end
  object dsBaixaReceber: TDataSource
    DataSet = fdBaixaReceber
    Left = 472
    Top = 88
  end
  object frxrchbjct1: TfrxRichObject
    Left = 264
    Top = 280
  end
  object frxgrdntbjct1: TfrxGradientObject
    Left = 328
    Top = 280
  end
  object frxdbBaixaReceber: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsBaixaReceber
    BCDToCurrency = False
    Left = 416
    Top = 280
  end
end
