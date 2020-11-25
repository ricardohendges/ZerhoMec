inherited FrmMarcas: TFrmMarcas
  Caption = 'Marcas'
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
        object LabelMarcasID: TLabel
          Left = 65
          Top = 24
          Width = 11
          Height = 13
          Caption = 'ID'
        end
        object LabelMarcasNome: TLabel
          Left = 65
          Top = 85
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object LabelMarcasTipo: TLabel
          Left = 65
          Top = 141
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object edtMarcasID: TDBEdit
          Left = 46
          Top = 43
          Width = 121
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtMarcasNome: TDBEdit
          Left = 46
          Top = 104
          Width = 121
          Height = 21
          DataField = 'MAR_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtMarcasTipo: TDBEdit
          Left = 46
          Top = 160
          Width = 121
          Height = 21
          DataField = 'MAR_TIPO'
          DataSource = dsPadrao
          TabOrder = 2
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
