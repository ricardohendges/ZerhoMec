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
      object N1: TMenuItem
        Caption = '-'
      end
      object Localizao1: TMenuItem
        Caption = 'Localiza'#231#227'o'
        object Estado1: TMenuItem
          Caption = 'Estado'
          OnClick = Estado1Click
        end
        object Municipio1: TMenuItem
          Caption = 'Municipio'
          OnClick = Municipio1Click
        end
      end
      object Pessoa1: TMenuItem
        Caption = 'Pessoa'
        object Fornecedores1: TMenuItem
          Caption = 'Fornecedores'
          OnClick = Fornecedores1Click
        end
        object Cliente1: TMenuItem
          Caption = 'Cliente'
          object Clientes1: TMenuItem
            Caption = 'Clientes'
            OnClick = Clientes1Click
          end
          object Veculos1: TMenuItem
            Caption = 'Ve'#237'culos'
            OnClick = Veculos1Click
          end
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Marcas1: TMenuItem
        Caption = 'Marcas'
        OnClick = Marcas1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object UnidadeMedida1: TMenuItem
        Caption = 'Unidade Medida'
        OnClick = UnidadeMedida1Click
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object FormaPagto1: TMenuItem
        Caption = 'Forma Pagto.'
        OnClick = FormaPagto1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object NotadeCompra1: TMenuItem
        Caption = 'Nota de Compra'
        OnClick = NotadeCompra1Click
      end
      object NotadeVenda1: TMenuItem
        Caption = 'Nota de Venda'
        OnClick = NotadeVenda1Click
      end
    end
    object Financeiro1: TMenuItem
      Caption = 'Financeiro'
      object ContasaReceber1: TMenuItem
        Caption = 'Contas Receber'
        OnClick = ContasaReceber1Click
      end
      object ContaPagar1: TMenuItem
        Caption = 'Conta Pagar'
        OnClick = ContaPagar1Click
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
    object actNotaVenda: TAction
      Caption = 'Nota de Venda'
    end
  end
end
