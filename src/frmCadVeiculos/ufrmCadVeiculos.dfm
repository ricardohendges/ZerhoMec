inherited frmBaseCrud2: TfrmBaseCrud2
  Caption = 'frmBaseCrud2'
  ClientHeight = 347
  ClientWidth = 560
  ExplicitWidth = 576
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 560
    Height = 297
    ExplicitTop = 50
    ExplicitHeight = 331
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 558
      ExplicitHeight = 303
      inherited pnlPrincipal: TPanel
        Width = 552
        Height = 269
        ExplicitLeft = 3
        ExplicitTop = 0
        ExplicitWidth = 558
        ExplicitHeight = 303
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
          Width = 205
          Height = 21
          TabOrder = 1
          Text = 'edtCLI_COD'
        end
        object dbedtMAR_ID: TDBEdit
          Left = 20
          Top = 85
          Width = 205
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
          Width = 205
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
      end
    end
    inherited tsListagem: TTabSheet
      inherited pnlFiltros: TPanel
        Width = 552
        inherited edtFiltro: TLabeledEdit
          Width = 228
        end
      end
      inherited pnlGrid: TPanel
        Width = 552
        Height = 195
        ExplicitLeft = 0
        ExplicitTop = 49
        ExplicitWidth = 558
        ExplicitHeight = 229
        inherited dbgrdPrincipal: TDBGrid
          Width = 550
          Height = 193
        end
      end
      inherited pnlInfos: TPanel
        Top = 244
        Width = 552
        ExplicitTop = 278
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
  end
  inherited pnlBotoes: TPanel
    Width = 560
  end
  inherited frxrprtPrincipal: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
