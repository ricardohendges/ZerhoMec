inherited FrmUnidadeMedidas: TFrmUnidadeMedidas
  Caption = 'Unidade de Medidas'
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
        object LabelUndMedidaABR: TLabel
          Left = 80
          Top = 56
          Width = 54
          Height = 13
          Caption = 'Abrevia'#231#227'o'
        end
        object LabelUndMedidaNome: TLabel
          Left = 96
          Top = 138
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object edtUndMedidaABR: TDBEdit
          Left = 64
          Top = 88
          Width = 121
          Height = 21
          DataField = 'UND_ABR'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtUndMedidaNome: TDBEdit
          Left = 65
          Top = 157
          Width = 121
          Height = 21
          DataField = 'UND_NOME'
          DataSource = dsPadrao
          TabOrder = 1
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
