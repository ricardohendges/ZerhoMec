inherited frmClientes: TfrmClientes
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ExplicitLeft = -6
    ExplicitTop = -6
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
        ExplicitLeft = -16
        ExplicitTop = 3
        object lblCLIC_COD: TLabel
          Left = 20
          Top = 5
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblCLI_NOME: TLabel
          Left = 20
          Top = 60
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object lblCLI_CPF: TLabel
          Left = 228
          Top = 60
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object lblNASCIMENTO: TLabel
          Left = 20
          Top = 115
          Width = 96
          Height = 13
          Caption = 'Data de Nascimento'
        end
        object lblSEXO: TLabel
          Left = 228
          Top = 115
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object lblTELEFONE: TLabel
          Left = 20
          Top = 170
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object lblEMAIL: TLabel
          Left = 228
          Top = 170
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object btnBUSCA_MUN: TSpeedButton
          Left = 42
          Top = 239
          Width = 23
          Height = 22
          Caption = '...'
        end
        object lblMUNICIPIO: TLabel
          Left = 20
          Top = 225
          Width = 43
          Height = 13
          Caption = 'Municipio'
        end
        object lblENDERECO: TLabel
          Left = 20
          Top = 276
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object dbedtCLI_ID: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'CLI_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbedtCLI_NOME: TDBEdit
          Left = 20
          Top = 75
          Width = 189
          Height = 21
          DataField = 'CLI_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbedtCLI_CPF: TDBEdit
          Left = 228
          Top = 75
          Width = 121
          Height = 21
          DataField = 'CLI_CPF'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbedtCLI_NASCIMENTO: TDBEdit
          Left = 20
          Top = 130
          Width = 121
          Height = 21
          DataField = 'CLI_NASCIMENTO'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbedtCLI_SEXO: TDBEdit
          Left = 228
          Top = 130
          Width = 121
          Height = 21
          DataField = 'CLI_SEXO'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object dbedtCLI_TELEFONE: TDBEdit
          Left = 20
          Top = 185
          Width = 121
          Height = 21
          DataField = 'CLI_TELEFONE'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object dbedtCLI_EMAIL: TDBEdit
          Left = 228
          Top = 185
          Width = 121
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object dbedtMUN_ID: TDBEdit
          Left = 20
          Top = 240
          Width = 21
          Height = 21
          DataField = 'MUN_ID'
          DataSource = dsPadrao
          TabOrder = 7
        end
        object edtMUN_NOME: TDBEdit
          Left = 66
          Top = 240
          Width = 283
          Height = 21
          DataSource = dsPadrao
          TabOrder = 8
        end
        object dbedtCLI_ENDERECO: TDBEdit
          Left = 20
          Top = 295
          Width = 329
          Height = 21
          DataField = 'CLI_ENDERECO'
          DataSource = dsPadrao
          TabOrder = 9
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
end
