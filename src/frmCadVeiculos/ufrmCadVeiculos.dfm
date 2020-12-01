inherited frmBaseCrud2: TfrmBaseCrud2
  Caption = 'Cadastro de Veiculos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 531
    ExplicitWidth = 34
    inherited tsListagem: TTabSheet
      ExplicitWidth = 521
      inherited pnlFiltros: TPanel
        Width = 523
        ExplicitWidth = 521
        inherited gbPesquisar: TGroupBox
          Width = 208
          ExplicitWidth = 206
          inherited EdtPesquisar: TEdit
            Width = 199
            ExplicitWidth = 197
          end
        end
      end
      inherited pnlGrid: TPanel
        Width = 523
        ExplicitWidth = 521
        inherited dbgrdPrincipal: TDBGrid
          Width = 521
        end
      end
      inherited pnlInfos: TPanel
        Width = 523
        ExplicitWidth = 521
        inherited dbnvgrPrincipal: TDBNavigator
          Width = 519
          Hints.Strings = ()
          ExplicitWidth = 517
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 26
      ExplicitHeight = 425
      inherited pnlPrincipal: TPanel
        Width = 523
        ExplicitLeft = 1
        ExplicitTop = 2
        ExplicitWidth = 523
        object lblVEI_ID: TLabel
          Left = 20
          Top = 20
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblCLI_ID: TLabel
          Left = 20
          Top = 204
          Width = 107
          Height = 13
          Caption = 'Propriet'#225'rio do Veiculo'
        end
        object lblMARCA_VEICULO: TLabel
          Left = 20
          Top = 66
          Width = 29
          Height = 13
          Caption = 'Marca'
        end
        object lblANO: TLabel
          Left = 20
          Top = 158
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object lblVEI_MODELO: TLabel
          Left = 20
          Top = 112
          Width = 34
          Height = 13
          Caption = 'Modelo'
        end
        object lblVEI_PLACA: TLabel
          Left = 71
          Top = 158
          Width = 25
          Height = 13
          Caption = 'Placa'
        end
        object dbedtVEI_ID: TDBEdit
          Left = 20
          Top = 39
          Width = 33
          Height = 21
          TabOrder = 0
        end
        object edtCLI_COD: TEdit
          Left = 20
          Top = 223
          Width = 33
          Height = 21
          TabOrder = 1
          Text = 'edtCLI_COD'
        end
        object dbedtMAR_ID: TDBEdit
          Left = 20
          Top = 85
          Width = 33
          Height = 21
          TabOrder = 2
        end
        object dbedtVEI_ANO: TDBEdit
          Left = 20
          Top = 177
          Width = 33
          Height = 21
          TabOrder = 3
        end
        object dbedtVEI_MODELO: TDBEdit
          Left = 20
          Top = 131
          Width = 184
          Height = 21
          TabOrder = 4
        end
        object dbedtVEI_PLACA: TDBEdit
          Left = 71
          Top = 177
          Width = 56
          Height = 21
          TabOrder = 5
        end
        object dbedtNomeMarca: TDBEdit
          Left = 83
          Top = 85
          Width = 121
          Height = 21
          TabOrder = 6
        end
        object btnPesquisarCliente: TButton
          Left = 59
          Top = 223
          Width = 18
          Height = 21
          Caption = '...'
          TabOrder = 7
          OnClick = btnPesquisarClienteClick
        end
        object edtNomeCliente: TDBEdit
          Left = 83
          Top = 223
          Width = 121
          Height = 21
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
    end
    inherited btnEditar: TSpeedButton
      Width = 57
    end
    inherited btnExcluir: TSpeedButton
      Width = 57
    end
    inherited btnSalvar: TSpeedButton
      Width = 57
    end
    inherited btnCancelar: TSpeedButton
      Width = 57
    end
    inherited btnImprimir: TSpeedButton
      Width = 57
    end
    inherited btnSair: TSpeedButton
      Width = 57
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  object btnPesquisaMarca: TButton [3]
    Left = 64
    Top = 109
    Width = 18
    Height = 21
    Caption = '...'
    TabOrder = 3
  end
  inherited frxrprtPrincipal: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
