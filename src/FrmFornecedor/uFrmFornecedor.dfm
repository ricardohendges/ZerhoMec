inherited FrmFornecedor: TFrmFornecedor
  Caption = 'Fornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
    ExplicitLeft = -3
    ExplicitTop = -2
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
        ExplicitLeft = -2
        ExplicitTop = 2
        object LabelForneID: TLabel
          Left = 65
          Top = 21
          Width = 69
          Height = 13
          Caption = 'ID Fornecedor'
        end
        object LabelForneMunID: TLabel
          Left = 65
          Top = 69
          Width = 57
          Height = 13
          Caption = 'ID Municipio'
        end
        object LabelForneNome: TLabel
          Left = 65
          Top = 123
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object LabelForneCNPJ: TLabel
          Left = 65
          Top = 178
          Width = 25
          Height = 13
          Caption = 'CNPJ'
        end
        object LabelForneSitua: TLabel
          Left = 65
          Top = 237
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
        end
        object LabelForneInsc: TLabel
          Left = 215
          Top = 21
          Width = 43
          Height = 13
          Caption = 'Inscri'#231#227'o'
        end
        object LabelForneTelefone: TLabel
          Left = 215
          Top = 69
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object LabelForneEmail: TLabel
          Left = 215
          Top = 123
          Width = 28
          Height = 13
          Caption = 'E-Mail'
        end
        object LabelForneEndere: TLabel
          Left = 215
          Top = 178
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object edtForneID: TDBEdit
          Left = 25
          Top = 40
          Width = 121
          Height = 21
          DataField = 'FOR_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtForneMunID: TDBEdit
          Left = 25
          Top = 88
          Width = 121
          Height = 21
          DataField = 'MUN_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtForneNome: TDBEdit
          Left = 25
          Top = 142
          Width = 121
          Height = 21
          DataField = 'FOR_NOME'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object edtForneCNPJ: TDBEdit
          Left = 25
          Top = 197
          Width = 121
          Height = 21
          DataField = 'FOR_CNPJ'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object edtForneSitua: TDBEdit
          Left = 25
          Top = 256
          Width = 121
          Height = 21
          DataField = 'FOR_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object edtForneInsc: TDBEdit
          Left = 184
          Top = 40
          Width = 121
          Height = 21
          DataField = 'FOR_INSCRICAO'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object edtForneTelefone: TDBEdit
          Left = 184
          Top = 88
          Width = 121
          Height = 21
          DataField = 'FOR_TELEFONE'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object edtForneEmail: TDBEdit
          Left = 184
          Top = 142
          Width = 121
          Height = 21
          DataField = 'FOR_EMAIL'
          DataSource = dsPadrao
          TabOrder = 7
        end
        object edtForneEndere: TDBEdit
          Left = 184
          Top = 197
          Width = 121
          Height = 21
          DataField = 'FOR_ENDERECO'
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
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
