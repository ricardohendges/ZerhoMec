inherited frmContasPagar: TfrmContasPagar
  Caption = 'Contas a Pagar'
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 288
    Top = 240
    Width = 23
    Height = 22
  end
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
    OnChange = pgcPrincipalChange
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
        object lbCPG_ID: TLabel
          Left = 14
          Top = 20
          Width = 120
          Height = 13
          Caption = 'C'#243'digo da Conta a Pagar'
        end
        object lblValorCPG: TLabel
          Left = 14
          Top = 128
          Width = 96
          Height = 13
          Caption = 'Valor Conta a Pagar'
        end
        object lblNFC_ID: TLabel
          Left = 14
          Top = 75
          Width = 158
          Height = 13
          Caption = 'C'#243'digo da Nota Fiscal de Compra'
        end
        object lblFornecedor_ID: TLabel
          Left = 14
          Top = 184
          Width = 106
          Height = 13
          Caption = 'C'#243'digo do Fornecedor'
        end
        object lblSaldo: TLabel
          Left = 284
          Top = 75
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object lblVencimento: TLabel
          Left = 284
          Top = 16
          Width = 96
          Height = 13
          Caption = 'Data de Vencimento'
        end
        object lblParcela: TLabel
          Left = 284
          Top = 128
          Width = 35
          Height = 13
          Caption = 'Parcela'
        end
        object dbContaPagar_ID: TDBEdit
          Left = 14
          Top = 35
          Width = 121
          Height = 21
          DataField = 'CPG_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbNotaCompra_ID: TDBEdit
          Left = 14
          Top = 94
          Width = 121
          Height = 21
          DataField = 'NTC_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbContaPagar_Valor: TDBEdit
          Left = 14
          Top = 147
          Width = 121
          Height = 21
          DataField = 'CPG_VALOR'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbFornecedor_ID: TDBEdit
          Left = 14
          Top = 203
          Width = 121
          Height = 21
          DataField = 'FOR_ID'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbParcela: TDBEdit
          Left = 284
          Top = 147
          Width = 121
          Height = 21
          DataField = 'CPG_PARCELA'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object dbSaldo: TDBEdit
          Left = 284
          Top = 94
          Width = 121
          Height = 21
          DataSource = dsPadrao
          TabOrder = 5
        end
        object dbDataVecto: TDBEdit
          Left = 284
          Top = 35
          Width = 121
          Height = 21
          DataField = 'CPG_VENCIMENTO'
          DataSource = dsPadrao
          TabOrder = 6
        end
      end
    end
    object tbBaixaPgtos: TTabSheet
      Caption = 'Baixa de Pagamentos'
      ImageIndex = 2
      object pnlBaixaPagtos: TPanel
        Left = 0
        Top = 0
        Width = 515
        Height = 197
        Align = alTop
        TabOrder = 0
        object lblCPG_ID_FK: TLabel
          Left = 7
          Top = 52
          Width = 120
          Height = 13
          Caption = 'C'#243'digo da Conta a Pagar'
        end
        object lblBPA_ID: TLabel
          Left = 7
          Top = 0
          Width = 154
          Height = 13
          Caption = 'C'#243'digo da Baixa de Pagamentos'
        end
        object lblForma_PagtoID: TLabel
          Left = 7
          Top = 101
          Width = 138
          Height = 13
          Caption = 'C'#243'digo Forma de Pagamento'
        end
        object lblDataBaixa: TLabel
          Left = 176
          Top = 8
          Width = 124
          Height = 13
          Caption = 'Data Baixa de Pagamento'
        end
        object lblMulta_Pgto: TLabel
          Left = 176
          Top = 54
          Width = 26
          Height = 13
          Caption = 'Multa'
        end
        object lblValor_Pgto: TLabel
          Left = 344
          Top = 8
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object lblJuros_Pgto: TLabel
          Left = 176
          Top = 101
          Width = 26
          Height = 13
          Caption = 'Juros'
        end
        object lblDesconto_Pgto: TLabel
          Left = 344
          Top = 54
          Width = 45
          Height = 13
          Caption = 'Desconto'
        end
        object DBBaixa_PgtosID: TDBEdit
          Left = 7
          Top = 19
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object BDCPG_ID_FK: TDBEdit
          Left = 7
          Top = 71
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object DBBPA_MULTA: TDBEdit
          Left = 176
          Top = 71
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object DBBPA_JUROS: TDBEdit
          Left = 176
          Top = 120
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object DBFPA_ID: TDBEdit
          Left = 7
          Top = 120
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object DBBPA_DATA: TDBEdit
          Left = 176
          Top = 27
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object DBBPA_DESCONTO: TDBEdit
          Left = 344
          Top = 71
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object DBBPA_VALOR: TDBEdit
          Left = 344
          Top = 27
          Width = 121
          Height = 21
          TabOrder = 7
        end
      end
      object pnlgrdBaixaPgtos: TPanel
        Left = 0
        Top = 232
        Width = 515
        Height = 193
        Align = alBottom
        Caption = 'pnlgrdBaixaPgtos'
        TabOrder = 1
        object DBgrdBaixaPgtos: TDBGrid
          Left = 1
          Top = 1
          Width = 513
          Height = 191
          Align = alTop
          DataSource = dsBaixaPgtos
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
    Left = 288
    Top = 408
  end
  inherited dsPadrao: TDataSource
    Left = 208
    Top = 408
  end
  inherited frxrprtPrincipal: TfrxReport
    ReportOptions.CreateDate = 44145.902236655100000000
    ReportOptions.LastChange = 44173.766669756900000000
    Left = 360
    Top = 408
    Datasets = <
      item
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
      end
      item
        DataSet = frxDBBaixaPgtos
        DataSetName = 'frxDBBaixaPgtos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      EndlessWidth = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDatasetPrincipal
        DataSetName = 'dsPadrao'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."CPG_ID"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."CPG_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 918.425790000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."CPG_PARCELA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 755.906000000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."CPG_SALDO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."NTC_ID"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."FOR_ID"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."CPG_VALOR"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Conta a Pagar')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID da Nota Fiscal')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 11.338590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID do Fornecedor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 11.338590000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 64.252010000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 600.945270000000000000
          Height = 56.692950000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio das Contas a Serem Pagas Mec'#226'nica Piazadinha')
          ParentFont = False
        end
      end
      object Rich1: TfrxRichView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 684.094930000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
          67656E657261746F722052696368656432302031302E302E31383336327D5C76
          6965776B696E64345C756331200D0A5C706172645C66305C667331365C706172
          0D0A7D0D0A00}
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 461.102660000000000000
        Width = 1046.929810000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 808.819420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 1046.929810000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Baixa Pagamento')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Conta a Pagar')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Forma de Pagamento')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data da Baixa')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 944.882500000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBBaixaPgtos
        DataSetName = 'frxDBBaixaPgtos'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."BPA_ID"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."CPG_ID"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."FPA_ID"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."BPA_DATA"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."BPA_MULTA"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."BPA_JUROS"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 782.362710000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."BPA_VALOR"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 914.646260000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsPadrao."BPA_DESCONTO"]')
          ParentFont = False
        end
      end
      object Gradient1: TfrxGradientView
        AllowVectorExport = True
        Top = 90.708720000000000000
        Width = 1046.929810000000000000
        Height = 18.897650000000000000
        EndColor = clMoneyGreen
        Style = gsHorizontal
        Frame.Typ = []
        Color = 14741216
      end
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 456
    Top = 403
  end
  inherited FDPadrao: TFDQuery
    Left = 148
    Top = 408
  end
  object FDBaixaPgtos: TFDQuery
    MasterSource = dsPadrao
    MasterFields = 'CPG_ID'
    Connection = frmBaseDM.FDConnection
    SQL.Strings = (
      'SELECT * FROM BAIXA_PAGAR')
    Left = 400
    Top = 200
  end
  object dsBaixaPgtos: TDataSource
    DataSet = FDBaixaPgtos
    Left = 472
    Top = 200
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 320
    Top = 256
  end
  object frxRichObject1: TfrxRichObject
    Left = 224
    Top = 256
  end
  object frxDBBaixaPgtos: TfrxDBDataset
    UserName = 'frxDBBaixaPgtos'
    CloseDataSource = False
    DataSource = dsBaixaPgtos
    BCDToCurrency = False
    Left = 400
    Top = 352
  end
end
