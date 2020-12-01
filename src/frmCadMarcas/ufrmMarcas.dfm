inherited frmMarca: TfrmMarca
  Caption = 'Marca'
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
      inherited pnlPrincipal: TPanel
        ExplicitLeft = -24
        ExplicitTop = 35
        object Label1: TLabel
          Left = 20
          Top = 5
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object edtCodigo: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object edtNome: TDBEdit
          Left = 20
          Top = 112
          Width = 227
          Height = 21
          DataField = 'MAR_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object edtTipo: TDBEdit
          Left = 20
          Top = 64
          Width = 227
          Height = 21
          DataField = 'MAR_TIPO'
          DataSource = dsPadrao
          TabOrder = 2
        end
      end
    end
  end
  inherited actlstPrincipal: TActionList
    Left = 184
  end
  inherited frxrprtPrincipal: TfrxReport
    Left = 296
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 416
    Top = 243
  end
end
