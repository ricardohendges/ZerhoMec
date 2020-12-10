inherited frmClientes: TfrmClientes
  Caption = 'Clientes'
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
        object lblCLIC_COD: TLabel [0]
          Left = 20
          Top = 49
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblCLI_NOME: TLabel [1]
          Left = 20
          Top = 100
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object lblCLI_CPF: TLabel [2]
          Left = 228
          Top = 100
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object lblNASCIMENTO: TLabel [3]
          Left = 20
          Top = 155
          Width = 96
          Height = 13
          Caption = 'Data de Nascimento'
        end
        object lblSEXO: TLabel [4]
          Left = 228
          Top = 155
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object lblTELEFONE: TLabel [5]
          Left = 20
          Top = 210
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object lblEMAIL: TLabel [6]
          Left = 228
          Top = 210
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object btnBUSCA_MUN: TSpeedButton [7]
          Left = 56
          Top = 279
          Width = 25
          Height = 21
          Caption = '...'
          OnClick = btnBUSCA_MUNClick
        end
        object lblMUNICIPIO: TLabel [8]
          Left = 20
          Top = 265
          Width = 43
          Height = 13
          Caption = 'Municipio'
        end
        object lblENDERECO: TLabel [9]
          Left = 20
          Top = 316
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        inherited dbNavCadastro: TDBNavigator
          Hints.Strings = ()
          TabOrder = 9
        end
        object dbedtCLI_ID: TDBEdit
          Left = 20
          Top = 64
          Width = 33
          Height = 21
          DataField = 'CLI_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbedtCLI_NOME: TDBEdit
          Left = 20
          Top = 115
          Width = 189
          Height = 21
          DataField = 'CLI_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbedtCLI_CPF: TDBEdit
          Left = 228
          Top = 115
          Width = 121
          Height = 21
          DataField = 'CLI_CPF'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbedtCLI_NASCIMENTO: TDBEdit
          Left = 20
          Top = 170
          Width = 121
          Height = 21
          DataField = 'CLI_NASCIMENTO'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbedtCLI_SEXO: TDBEdit
          Left = 228
          Top = 170
          Width = 121
          Height = 21
          DataField = 'CLI_SEXO'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object dbedtCLI_TELEFONE: TDBEdit
          Left = 20
          Top = 225
          Width = 121
          Height = 21
          DataField = 'CLI_TELEFONE'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object dbedtCLI_EMAIL: TDBEdit
          Left = 228
          Top = 225
          Width = 121
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object edtMUN_NOME: TDBEdit
          Left = 87
          Top = 279
          Width = 262
          Height = 21
          DataSource = dsPadrao
          TabOrder = 7
        end
        object dbedtCLI_ENDERECO: TDBEdit
          Left = 20
          Top = 335
          Width = 329
          Height = 21
          DataField = 'CLI_ENDERECO'
          DataSource = dsPadrao
          TabOrder = 8
        end
        object dbedtMUN_ID: TDBEdit
          Left = 20
          Top = 279
          Width = 30
          Height = 21
          DataField = 'MUN_ID'
          DataSource = dsPadrao
          TabOrder = 10
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
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited FDPadrao: TFDQuery
    Left = 404
  end
end
