inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
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
        object lblCodigo: TLabel
          Left = 20
          Top = 5
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblBuscarCliente: TLabel
          Left = 20
          Top = 45
          Width = 123
          Height = 13
          Caption = 'Forma de busca de dados'
        end
        object edtCodigo: TEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'edtCodigo'
        end
        object edtDescCliente: TEdit
          Left = 98
          Top = 60
          Width = 287
          Height = 21
          TabOrder = 1
        end
        object btnBuscarCliente: TButton
          Left = 20
          Top = 58
          Width = 75
          Height = 25
          Caption = 'Cliente'
          TabOrder = 2
          OnClick = btnBuscarClienteClick
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  inherited actlstPrincipal: TActionList
    inherited actSair: TAction
      AutoCheck = True
    end
  end
  inherited frxrprtPrincipal: TfrxReport
    Left = 456
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 488
    Top = 8
  end
end
