object Form1: TForm1
  Left = 290
  Top = 110
  Width = 678
  Height = 619
  Caption = 'Delphi DLL'#35843#29992#31034#20363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    670
    585)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 264
    Top = 102
    Width = 177
    Height = 13
    Caption = #25163#26426#21495#30721#65288#22810#20010#21495#29992' , '#36887#21495#20998#38548#65289
  end
  object Label4: TLabel
    Left = 264
    Top = 302
    Width = 48
    Height = 13
    Caption = #30701#20449#20869#23481
  end
  object Label5: TLabel
    Left = 16
    Top = 102
    Width = 36
    Height = 13
    Caption = #35828#26126#65306
  end
  object Label6: TLabel
    Left = 16
    Top = 494
    Width = 48
    Height = 13
    Caption = #36820#22238#29366#24577
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 625
    Height = 57
    Caption = #36134#21495
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 24
      Height = 13
      Caption = #36134#21495
    end
    object Label2: TLabel
      Left = 152
      Top = 22
      Width = 24
      Height = 13
      Caption = #23494#30721
    end
    object Label7: TLabel
      Left = 376
      Top = 22
      Width = 36
      Height = 13
      Caption = #26032#23494#30721
    end
    object euid: TEdit
      Left = 48
      Top = 18
      Width = 97
      Height = 21
      TabOrder = 0
      Text = 'test'
    end
    object epwd: TEdit
      Left = 184
      Top = 18
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '123456'
    end
    object Button1: TButton
      Left = 280
      Top = 16
      Width = 65
      Height = 25
      Caption = #26597#35810#20313#39069
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 520
      Top = 16
      Width = 65
      Height = 25
      Caption = #20462#25913#23494#30721
      TabOrder = 3
      OnClick = Button4Click
    end
    object enewpwd: TEdit
      Left = 416
      Top = 18
      Width = 89
      Height = 21
      TabOrder = 4
    end
  end
  object econtent: TMemo
    Left = 264
    Top = 328
    Width = 377
    Height = 73
    Lines.Strings = (
      #21516#23398#20301#22909#65306#35831#20110#19979#20110#19977#28857#21040#23398#26657#39046#21462#27605#19994#35777#20070#65292#24352#32769#24072#12290#29305#27492#36890#30693#65281)
    TabOrder = 1
  end
  object emobno: TMemo
    Left = 264
    Top = 120
    Width = 369
    Height = 169
    TabOrder = 2
  end
  object Button2: TButton
    Left = 280
    Top = 416
    Width = 137
    Height = 41
    Caption = #21457#36865#30701#20449
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 120
    Width = 193
    Height = 369
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 13303807
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      #36820#22238#29366#24577#30721
      ''
      '000 '#25104#36865#25104#21151#65281' '
      '-01 '#24403#21069#36134#21495#20313#39069#19981#36275#65281
      '-02 '#24403#21069#29992#25143'ID'#38169#35823#65281
      '-03 '#24403#21069#23494#30721#38169#35823#65281
      '-04 '#21442#25968#19981#22815#25110#21442#25968#31867#22411#38169#35823
      '-05 '#25163#26426#21495#30721#26684#24335#19981#23545#65281
      '-06 '#30701#20449#20869#23481#32534#30721#19981#23545#65281
      '-07 '#30701#20449#20869#23481#21547#26377#25935#24863#23383#31526#65281
      '-08 '#26080#25509#25910#25968#25454
      '-09 '#31995#32479#32500#25252#20013'..'
      '-10 '#25163#26426#21495#30721#25968#37327#36229#38271#65281#65288'100'#20010'/'#27425' '
      #36229'100'#20010#35831#33258#34892#20570#24490#29615#65289
      '-11 '#30701#20449#20869#23481#36229#38271#65281#65288'70'#20010#23383#31526#65289
      '-12 '#20854#23427#38169#35823#65281
      ' ')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object Memo2: TMemo
    Left = 16
    Top = 512
    Width = 633
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object Button3: TButton
    Left = 464
    Top = 416
    Width = 129
    Height = 41
    Caption = #25509#25910#30701#20449
    TabOrder = 6
    OnClick = Button3Click
  end
end
