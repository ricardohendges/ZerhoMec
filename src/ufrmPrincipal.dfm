object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu principal'
  ClientHeight = 825
  ClientWidth = 1155
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottonBar: TPanel
    Left = 0
    Top = 809
    Width = 1155
    Height = 16
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 0
    Align = alBottom
    TabOrder = 0
    object lblDataHora: TLabel
      AlignWithMargins = True
      Left = 1088
      Top = 1
      Width = 56
      Height = 14
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alRight
      Caption = '00/00/0000'
      ExplicitHeight = 13
    end
    object lblUsuarioLogado: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 1
      Width = 128
      Height = 14
      Margins.Left = 10
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '--------------------------------'
      ExplicitHeight = 13
    end
  end
  object mmPrincipal: TMainMenu
    Left = 344
    Top = 376
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object miCadastroUsuario: TMenuItem
        Action = ActCadUsuario
      end
      object Marcas1: TMenuItem
        Caption = 'Marcas'
        OnClick = Marcas1Click
      end
      object Estado1: TMenuItem
        Caption = 'Estado'
        OnClick = Estado1Click
      end
      object UnidadeMedidas1: TMenuItem
        Caption = 'Unidade Medidas'
        OnClick = UnidadeMedidas1Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Fornecedor1Click
      end
    end
  end
  object tmMenu: TTimer
    OnTimer = tmMenuTimer
    Left = 408
    Top = 376
  end
  object actListMenu: TActionList
    Left = 272
    Top = 376
    object ActCadUsuario: TAction
      Caption = 'Usu'#225'rio'
      OnExecute = ActCadUsuarioExecute
    end
  end
end
