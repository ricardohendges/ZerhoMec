inherited frmMunicípio: TfrmMunicípio
  Caption = 'Munic'#237'pio'
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
        object ID_Município: TLabel
          Left = 20
          Top = 5
          Width = 60
          Height = 13
          Caption = 'ID_Munic'#237'pio'
        end
        object ID_Estado: TLabel
          Left = 20
          Top = 47
          Width = 50
          Height = 13
          Caption = 'ID_Estado'
        end
        object Município: TLabel
          Left = 20
          Top = 90
          Width = 43
          Height = 13
          Caption = 'Munic'#237'pio'
        end
        object IBGE: TLabel
          Left = 20
          Top = 135
          Width = 23
          Height = 13
          Caption = 'IBGE'
        end
        object EdtIDMunicipio: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'MUN_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EdtIDEstado: TDBEdit
          Left = 20
          Top = 60
          Width = 121
          Height = 21
          DataField = 'EST_ID'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EdtMunicipio: TDBEdit
          Left = 20
          Top = 106
          Width = 121
          Height = 21
          DataField = 'MUN_NOME'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object EdtIGBE: TDBEdit
          Left = 20
          Top = 150
          Width = 121
          Height = 21
          DataField = 'MUN_IBGE'
          DataSource = dsPadrao
          TabOrder = 3
        end
      end
    end
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
end
