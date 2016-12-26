object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Comparador de Arquivos'
  ClientHeight = 144
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Arquivo 1'
  end
  object lbl2: TLabel
    Left = 8
    Top = 35
    Width = 46
    Height = 13
    Caption = 'Arquivo 2'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 103
    Width = 161
    Height = 33
    Alignment = taCenter
    Caption = 'RESULTADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtArquivo1: TEdit
    Left = 60
    Top = 5
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object edtArquivo2: TEdit
    Left = 60
    Top = 32
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 291
    Top = 3
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 291
    Top = 32
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 8
    Top = 64
    Width = 316
    Height = 25
    Caption = 'Comparar'
    TabOrder = 4
    OnClick = btn3Click
  end
  object dlgOpen1: TOpenDialog
    Left = 288
    Top = 96
  end
end
