inherited frmVeiculos: TfrmVeiculos
  Caption = 'Cadastro de Veiculos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 531
    ActivePage = tsCadastro
    ExplicitWidth = 531
    inherited tsListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 523
      ExplicitHeight = 425
      inherited pnlFiltros: TPanel
        Width = 523
        ExplicitWidth = 523
        inherited gbPesquisar: TGroupBox
          Width = 208
          ExplicitWidth = 208
          inherited EdtPesquisar: TEdit
            Width = 199
            ExplicitWidth = 199
          end
        end
      end
      inherited pnlGrid: TPanel
        Width = 523
        ExplicitWidth = 523
        inherited dbgrdPrincipal: TDBGrid
          Width = 521
        end
      end
      inherited pnlInfos: TPanel
        Width = 523
        ExplicitWidth = 523
        inherited dbnvgrPrincipal: TDBNavigator
          Width = 519
          Hints.Strings = ()
          ExplicitWidth = 519
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 523
      ExplicitHeight = 425
      inherited pnlPrincipal: TPanel
        Width = 523
        ExplicitWidth = 523
        object lblVEI_ID: TLabel
          Left = 20
          Top = 37
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblCLI_ID: TLabel
          Left = 16
          Top = 257
          Width = 107
          Height = 13
          Caption = 'Propriet'#225'rio do Veiculo'
        end
        object lblMARCA_VEICULO: TLabel
          Left = 20
          Top = 92
          Width = 29
          Height = 13
          Caption = 'Marca'
        end
        object lblANO: TLabel
          Left = 20
          Top = 202
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object lblVEI_MODELO: TLabel
          Left = 20
          Top = 147
          Width = 34
          Height = 13
          Caption = 'Modelo'
        end
        object lblVEI_PLACA: TLabel
          Left = 71
          Top = 202
          Width = 25
          Height = 13
          Caption = 'Placa'
        end
        object dbedtVEI_ID: TDBEdit
          Left = 20
          Top = 52
          Width = 33
          Height = 21
          DataField = 'VEI_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbedtVEI_ANO: TDBEdit
          Left = 20
          Top = 217
          Width = 33
          Height = 21
          DataField = 'VEI_ANO'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbedtVEI_MODELO: TDBEdit
          Left = 20
          Top = 162
          Width = 184
          Height = 21
          DataField = 'VEI_MODELO'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbedtVEI_PLACA: TDBEdit
          Left = 71
          Top = 217
          Width = 56
          Height = 21
          DataField = 'VEI_PLACA'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbedtNomeMarca: TDBEdit
          Left = 90
          Top = 107
          Width = 114
          Height = 21
          TabOrder = 4
        end
        object btnPesquisarCliente: TButton
          Left = 59
          Top = 276
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 5
          OnClick = btnPesquisarClienteClick
        end
        object btnPesquisaMarca: TButton
          Left = 59
          Top = 107
          Width = 25
          Height = 21
          Caption = '...'
          TabOrder = 6
          OnClick = btnPesquisaMarcaClick
        end
        object dbedtMAR_ID: TDBEdit
          Left = 20
          Top = 107
          Width = 33
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 7
        end
        object dbedtCLI_COD: TDBEdit
          Left = 20
          Top = 276
          Width = 33
          Height = 21
          DataField = 'CLI_ID'
          DataSource = dsPadrao
          TabOrder = 9
        end
        object dbedtCLI_NOME: TDBEdit
          Left = 90
          Top = 276
          Width = 114
          Height = 21
          DataSource = dsPadrao
          TabOrder = 8
        end
      end
    end
  end
  inherited pnlBotoes: TPanel
    Left = 531
    Width = 63
    ExplicitLeft = 531
    ExplicitWidth = 63
    inherited btnInserir: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnEditar: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnExcluir: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnSalvar: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnCancelar: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnImprimir: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnSair: TSpeedButton
      Width = 57
      ExplicitWidth = 57
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  inherited dsPadrao: TDataSource
    Left = 456
    Top = 144
  end
  inherited frxrprtPrincipal: TfrxReport
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
    end
  end
  inherited FDPadrao: TFDQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM VEICULO')
    Left = 380
    Top = 120
  end
end
