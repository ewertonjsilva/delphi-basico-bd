object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo Delphi'
  ClientHeight = 375
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 30
  object pnl_calculadora: TPanel
    Left = 441
    Top = 0
    Width = 387
    Height = 375
    Align = alClient
    Padding.Left = 50
    Padding.Top = 50
    Padding.Right = 50
    Padding.Bottom = 50
    TabOrder = 0
    ExplicitLeft = 483
    ExplicitTop = 32
    ExplicitWidth = 337
    ExplicitHeight = 313
    object edt_n3: TEdit
      Left = 96
      Top = 240
      Width = 153
      Height = 38
      TabOrder = 6
    end
    object edt_n2: TEdit
      AlignWithMargins = True
      Left = 54
      Top = 114
      Width = 279
      Height = 38
      Margins.Top = 25
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 96
      ExplicitTop = 121
      ExplicitWidth = 153
    end
    object edt_n1: TEdit
      Left = 51
      Top = 51
      Width = 285
      Height = 38
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 96
      ExplicitTop = 40
      ExplicitWidth = 153
    end
    object btn_somar: TButton
      Left = 95
      Top = 191
      Width = 34
      Height = 30
      Caption = '+'
      TabOrder = 2
      OnClick = btn_somarClick
    end
    object btn_subtrair: TButton
      Left = 135
      Top = 191
      Width = 34
      Height = 30
      Caption = '-'
      TabOrder = 3
      OnClick = btn_subtrairClick
    end
    object btn_dividir: TButton
      Left = 175
      Top = 191
      Width = 34
      Height = 30
      Caption = '/'
      TabOrder = 4
      OnClick = btn_dividirClick
    end
    object btn_multiplicar: TButton
      Left = 215
      Top = 191
      Width = 34
      Height = 30
      Caption = 'x'
      TabOrder = 5
      OnClick = btn_multiplicarClick
    end
  end
  object pnl_coisas: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 375
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      441
      375)
    object lbl_label: TLabel
      Left = 83
      Top = 70
      Width = 75
      Height = 30
      Anchors = []
      Caption = 'lbl_label'
      ExplicitTop = 56
    end
    object edt_edit: TEdit
      Left = 83
      Top = 195
      Width = 249
      Height = 38
      Anchors = []
      TabOrder = 0
      ExplicitTop = 160
    end
    object btn_botao: TButton
      Left = 83
      Top = 301
      Width = 249
      Height = 41
      Anchors = []
      Caption = 'Exibir mensagem'
      TabOrder = 1
      OnClick = btn_botaoClick
      ExplicitTop = 248
    end
  end
end
