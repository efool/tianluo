object Form1: TForm1
  Left = 237
  Top = 51
  Width = 936
  Height = 699
  Caption = 'Delphi'#35843#29992'ActiveX DLL Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 16
    Top = 152
    Width = 113
    Height = 13
    AutoSize = False
    Caption = #25191#34892#21518#36820#22238#25968#25454
  end
  object Label11: TLabel
    Left = 24
    Top = 8
    Width = 401
    Height = 25
    AutoSize = False
    Caption = 'Delphi'#35843#29992'ActiveX DLL Demo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 40
    Width = 321
    Height = 89
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
      Left = 168
      Top = 22
      Width = 33
      Height = 13
      AutoSize = False
      Caption = #23494#30721
    end
    object Label7: TLabel
      Left = 8
      Top = 54
      Width = 65
      Height = 13
      AutoSize = False
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
      Left = 208
      Top = 18
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '123456'
    end
    object Button1: TButton
      Left = 160
      Top = 48
      Width = 65
      Height = 25
      Caption = #26597#35810#29366#24577
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 232
      Top = 48
      Width = 73
      Height = 25
      Caption = #20462#25913#23494#30721
      TabOrder = 3
      OnClick = Button4Click
    end
    object enewpwd: TEdit
      Left = 56
      Top = 50
      Width = 89
      Height = 21
      TabOrder = 4
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 240
    Width = 321
    Height = 409
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = 15138815
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
      '-06 '#20869#23481#32534#30721#19981#23545#65281
      '-07 '#30701#20449#20869#23481#21547#26377#25935#24863#23383#31526#65281
      '-08 '#26080#25509#25910#25968#25454
      '-09 '#31995#32479#32500#25252#20013'..'
      '-10 '#25509#25910#21495#30721#38169#35823#25110#36229#38271
      '-11 '#30701#20449#20869#23481#36229#38271#65281#65288'70'#20010#23383#31526#65289
      '-12 '#20854#23427#38169#35823#65281
      '-13 '#35843#29992'DLL'#25991#20214#38169#35823#65281
      '-14 '#35843#29992'dll'#36890#35759#38169#35823#65281)
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 16
    Top = 170
    Width = 321
    Height = 55
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 360
    Top = 40
    Width = 553
    Height = 177
    Caption = #21457#30701#20449
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 22
      Width = 201
      Height = 13
      AutoSize = False
      Caption = #25163#26426#21495#30721#65288#22810#20010#21495#29992' , '#36887#21495#20998#38548#65289
    end
    object Label4: TLabel
      Left = 216
      Top = 28
      Width = 209
      Height = 13
      AutoSize = False
      Caption = #30701#20449#20869#23481' '#26368#22823'60-70'#23383
    end
    object emobno: TMemo
      Left = 8
      Top = 40
      Width = 185
      Height = 121
      Color = 16775662
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object econtent: TMemo
      Left = 208
      Top = 48
      Width = 329
      Height = 73
      Lines.Strings = (
        #21516#23398#20301#22909#65306#35831#20110#19979#20110#19977#28857#21040#23398#26657#39046#21462#27605#19994#35777#20070#65292#24352#32769#24072#12290#29305
        #27492#36890#30693#65281)
      TabOrder = 1
    end
    object Button2: TButton
      Left = 232
      Top = 128
      Width = 113
      Height = 33
      Caption = #21457#36865#30701#20449
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 360
    Top = 224
    Width = 553
    Height = 169
    Caption = #21457#20256#30495
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 4
    object Label6: TLabel
      Left = 8
      Top = 22
      Width = 233
      Height = 13
      AutoSize = False
      Caption = #20256#30495#21495#30721#65288#22810#20010#21495#29992' , '#36887#21495#20998#38548#65289
    end
    object Label8: TLabel
      Left = 216
      Top = 56
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #20256#30495#25991#20214
    end
    object Label9: TLabel
      Left = 328
      Top = 28
      Width = 81
      Height = 13
      AutoSize = False
      Caption = #20256#30495#20027#39064
    end
    object Label10: TLabel
      Left = 216
      Top = 28
      Width = 81
      Height = 13
      AutoSize = False
      Caption = #25910#20214#20154
    end
    object faxno: TMemo
      Left = 8
      Top = 40
      Width = 185
      Height = 121
      Color = 13565928
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object faxfile: TEdit
      Left = 216
      Top = 74
      Width = 265
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Button3: TButton
      Left = 488
      Top = 72
      Width = 49
      Height = 25
      Caption = #27983#35272'..'
      TabOrder = 2
      OnClick = Button3Click
    end
    object men: TEdit
      Left = 264
      Top = 24
      Width = 57
      Height = 21
      MaxLength = 50
      TabOrder = 3
      Text = #24352#19977
    end
    object title: TEdit
      Left = 392
      Top = 24
      Width = 121
      Height = 21
      MaxLength = 50
      TabOrder = 4
      Text = #25253#20215#21333
    end
    object Button5: TButton
      Left = 224
      Top = 112
      Width = 137
      Height = 41
      Caption = #21457#36865#20256#30495
      TabOrder = 5
      OnClick = Button5Click
    end
    object filename: TEdit
      Left = 440
      Top = 96
      Width = 73
      Height = 21
      TabOrder = 6
      Visible = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 352
    Top = 408
    Width = 553
    Height = 241
    Caption = #35821#38899#26381#21153
    TabOrder = 5
    object Label12: TLabel
      Left = 208
      Top = 144
      Width = 177
      Height = 13
      AutoSize = False
      Caption = #22768#38899#25110#24405#38899#25991#20214
    end
    object Label13: TLabel
      Left = 208
      Top = 48
      Width = 233
      Height = 13
      AutoSize = False
      Caption = #35821#38899#25991#23383'('#26368#22810'8000)'
    end
    object Label14: TLabel
      Left = 216
      Top = 20
      Width = 41
      Height = 13
      AutoSize = False
      Caption = #31867#22411#65306
    end
    object Label15: TLabel
      Left = 8
      Top = 22
      Width = 185
      Height = 13
      AutoSize = False
      Caption = #34987#21483#21495#30721#65288#22810#20010', '#36887#21495#20998#24320#65289
    end
    object Label17: TLabel
      Left = 8
      Top = 168
      Width = 201
      Height = 13
      AutoSize = False
      Caption = #23458#26381#30005#35805'('#22810#20010','#21495#38548#24320')'
    end
    object Label18: TLabel
      Left = 16
      Top = 208
      Width = 201
      Height = 13
      AutoSize = False
      Caption = #23458#26381#30005#35805#29992#20110#34987#21483#29992#25143#25353'0'#21518#36716#25509#30340#21495#30721
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object v_no: TMemo
      Left = 8
      Top = 40
      Width = 185
      Height = 113
      Color = 13172735
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object v_file: TEdit
      Left = 208
      Top = 162
      Width = 281
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object RadioButton1: TRadioButton
      Left = 264
      Top = 18
      Width = 73
      Height = 17
      Caption = #20154#24037#21512#25104
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 344
      Top = 18
      Width = 73
      Height = 17
      Caption = #36719#20214#21512#25104
      TabOrder = 3
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 432
      Top = 18
      Width = 73
      Height = 17
      Caption = #24405#38899#25991#20214
      TabOrder = 4
      OnClick = RadioButton3Click
    end
    object mode: TEdit
      Left = 512
      Top = 16
      Width = 25
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Text = '1'
    end
    object v_txt: TMemo
      Left = 208
      Top = 64
      Width = 329
      Height = 73
      Lines.Strings = (
        #31227#21160#21830#21153#20013#24515#36890#30693#24744#65306#23562#25964#30340#24352#20029#24179#29992#25143#24744'8'#26376#20221#30340#30005#35805#36153#29992
        #20026'2895'#20803#65292#20026#19981#24433#21709#24744#30340#20351#29992#35831#23613#24555#21040#33829#19994#32564#36153#12290#25509#36890#23458#26381
        #20013#24515#35831#25353' 0'#12290#35874#35874#21512#20316#65281)
      TabOrder = 6
    end
    object bt8: TButton
      Left = 496
      Top = 160
      Width = 41
      Height = 25
      Caption = '*.WAV'
      Enabled = False
      TabOrder = 7
      OnClick = bt8Click
    end
    object v_svrno: TEdit
      Left = 8
      Top = 184
      Width = 185
      Height = 21
      MaxLength = 50
      TabOrder = 8
      Text = '075525599861'
    end
    object Button6: TButton
      Left = 272
      Top = 192
      Width = 81
      Height = 33
      Caption = #21457#36865#35821#38899
      TabOrder = 9
      OnClick = Button6Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 296
  end
end
