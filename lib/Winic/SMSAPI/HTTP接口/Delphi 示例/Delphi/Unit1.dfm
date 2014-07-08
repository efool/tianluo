object Form1: TForm1
  Left = 202
  Top = 131
  Width = 709
  Height = 445
  Caption = 'SMS.API Delphi '#31034#20363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 16
    Top = 88
    Width = 649
    Height = 289
    Caption = #21457#36865'/'#22238#22797#30701#20449
    TabOrder = 0
    object Label4: TLabel
      Left = 248
      Top = 128
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #36820#22238#29366#24577
    end
    object Label5: TLabel
      Left = 8
      Top = 20
      Width = 169
      Height = 13
      AutoSize = False
      Caption = #25509#25910#25163#26426#21495
    end
    object Label6: TLabel
      Left = 248
      Top = 24
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #30701#20449#20869#23481
    end
    object Label7: TLabel
      Left = 16
      Top = 40
      Width = 177
      Height = 13
      AutoSize = False
      Caption = '(11'#20301#25163#26426#21495')'#22810#20010#21495#35831#25442#34892
      Color = clYellow
      ParentColor = False
    end
    object btxt: TMemo
      Left = 248
      Top = 144
      Width = 377
      Height = 65
      TabOrder = 0
    end
    object content: TMemo
      Left = 248
      Top = 40
      Width = 377
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        #20320#22909'.'#24685#21916#21457#36130#65281)
      ParentFont = False
      TabOrder = 1
    end
    object mob: TMemo
      Left = 8
      Top = 56
      Width = 185
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button2: TButton
      Left = 208
      Top = 232
      Width = 193
      Height = 33
      Caption = #21457#36865#30701#20449
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 8
    Width = 649
    Height = 57
    Caption = #36134#21495
    TabOrder = 1
    object Label3: TLabel
      Left = 200
      Top = 20
      Width = 32
      Height = 13
      AutoSize = False
      Caption = #23494#30721
    end
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 32
      Height = 13
      AutoSize = False
      Caption = #36134#21495
    end
    object pwd: TEdit
      Left = 240
      Top = 16
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
      Text = '111111'
    end
    object uid: TEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'test'
    end
  end
end
