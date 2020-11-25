inherited FrmEstado: TFrmEstado
  Caption = 'Estado'
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
        object LabelEstID: TLabel
          Left = 24
          Top = 32
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object LabelEstSigla: TLabel
          Left = 24
          Top = 160
          Width = 22
          Height = 13
          Caption = 'Sigla'
        end
        object LabelEstNome: TLabel
          Left = 24
          Top = 96
          Width = 63
          Height = 13
          Caption = 'Nome Estado'
        end
        object LabelEstPaisNome: TLabel
          Left = 25
          Top = 232
          Width = 49
          Height = 13
          Caption = 'Pais Nome'
        end
        object EditEstID: TDBEdit
          Left = 25
          Top = 51
          Width = 121
          Height = 21
          DataField = 'EST_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EditEstNome: TDBEdit
          Left = 24
          Top = 115
          Width = 121
          Height = 21
          DataField = 'EST_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EditEstSigla: TDBEdit
          Left = 24
          Top = 184
          Width = 121
          Height = 21
          DataField = 'EST_SIGLA'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object EditEstPaisNome: TDBEdit
          Left = 25
          Top = 251
          Width = 121
          Height = 21
          DataField = 'PAIS_NOME'
          DataSource = dsPadrao
          TabOrder = 3
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
