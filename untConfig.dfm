object frmConfig: TfrmConfig
  Left = 177
  Top = 186
  HelpContext = 302
  BorderIcons = [biSystemMenu]
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 187
  ClientWidth = 474
  Color = clBtnFace
  Constraints.MaxHeight = 221
  Constraints.MaxWidth = 482
  Constraints.MinHeight = 221
  Constraints.MinWidth = 482
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 146
    Width = 474
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnHelp: TBitBtn
      Left = 8
      Top = 8
      Width = 91
      Height = 25
      Caption = #1057#1087#1088#1072#1074#1082#1072
      TabOrder = 0
      OnClick = btnHelpClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFDFDFDFFF9F8F8FFF3F3F2FFE7EBEEFFD9DCE0FFD1D2D4FFCFD0D1FFD4D6
        D8FFDFE3E6FFEEEFF0FFF6F6F5FFFBFBFBFFFEFEFEFFFFFFFFFFFEFEFEFFF9FA
        FAFFECEBEAFFD8DADBFFBCBFC1FFB2A59AFFC0A995FFCEB6A2FFD0BDADFFC7B6
        A8FFB7A89BFFB3B0ADFFCACED2FFE3E2E1FFF4F4F3FFFDFDFDFFFFFFFFFFF3F2
        F2FFDADDE0FFBEB8B3FFCEAD93FFF4DAC3FFFFE9D5FFFFEAD4FFFFF1E1FFFFF5
        E9FFFCEBD9FFE2C2A6FFBFAB9BFFCACED1FFE8E7E7FFFBFBFBFFFEFDFDFFFBFE
        FFFFE8DED6FFEBC6ABFFFFE8D3FFFBC192FFFAA865FFFC9E4FFFFDA75FFFFEB7
        7DFFFFC99EFFFFE8D1FFFADDC3FFE6CBB5FFF4F8FBFFFDFDFCFFFEFFFFFFFDF8
        F5FFF4CCB1FFF9DBC7FFEB904DFFF08836FFF69343FFFCCAA1FFFDBD87FFFB97
        42FFFB9B4AFFF8A866FFFBD7BBFFFBDBC2FFFAE4D2FFFFFFFFFFFFFFFFFFF3D4
        BFFFF4D6C2FFE38747FFE5782AFFEC8A3FFFF08E43FFFBEBDFFFFBDABFFFF691
        40FFF6954AFFF38F40FFF19B59FFF7D5BCFFF6D2B8FFFCF7F2FFFBF4EFFFF2D2
        BDFFE9B390FFD66013FFE07A32FFE57D32FFE97E30FFF4B382FFF2A264FFEF87
        37FFEF8C41FFEC873CFFE88135FFEDA776FFF6D8C3FFF7DECDFFF8E9DFFFF2D2
        BEFFDD8A55FFD0570AFFD86C25FFDF7933FFE37F38FFFBEEE5FFF7D8C0FFE578
        28FFE78239FFE47D33FFE1762BFFE07F3FFFF2CFB9FFF3D3BFFFF7E3D7FFF1D0
        BAFFDC834BFFDD8852FFE2996CFFE29868FFE2925DFFEFC1A3FFFFFFFFFFF0C2
        A1FFE07E3BFFDE7B39FFD9702AFFD66923FFEDBFA2FFF2D1BDFFF8E6DBFFF0CB
        B3FFE39A6CFFE9B492FFE7AB85FFEBB897FFE7AA85FFDF8E5BFFEEC2A6FFFFFF
        FFFFEBB796FFD87536FFD87738FFD56B28FFEDC1A4FFF2D2BEFFF9EEE7FFF2D0
        BBFFE8AF8AFFE9B28EFFE8B18EFFFAF0E9FFF9EAE0FFE29869FFDD8A54FFF8E8
        DEFFF8E8DEFFDB8047FFDA7E43FFD9793CFFF1D1BCFFF3D5C1FFFEFDFDFFF1CF
        B9FFEEC6ACFFE7AD88FFEDC1A5FFF1CFB9FFFFFFFFFFF6E2D4FFF4DACAFFFFFF
        FFFFF0CBB3FFDE8B56FFDA7D42FFE49F74FFF1D0BBFFF7E6DBFFFFFFFFFFF7E2
        D6FFF0CAB3FFEBBB9CFFEBBB9BFFEEC5ABFFF0CBB4FFF7E6DAFFF8E8DEFFF0CA
        B2FFE4A278FFE09260FFDD8751FFF2D1BCFFF0CCB4FFFFFFFFFFFFFEFEFFFFFF
        FFFFF0CEB8FFF1CFB9FFECBD9EFFEAB695FFECBDA0FFEAB898FFE8B18EFFE6A7
        7EFFE2996AFFE19564FFF2D0BBFFEDC3A9FFFBF2EBFFFFFFFFFFFFFFFFFFFFFE
        FEFFFFFEFEFFF1D0BBFFEFCAB2FFEFC8AFFFECBC9EFFE9B391FFE8AD87FFE8AE
        89FFEBBB9CFFF1D0BAFFEFC5ABFFFAEDE5FFFFFFFFFFFFFEFEFFFFFFFFFFFFFF
        FFFFFFFEFEFFFFFFFFFFF7E3D7FFEFCAB2FFF0CCB6FFF1D0BAFFF1D1BCFFF1CF
        BAFFEFCAB3FFF2D3BFFFFDF8F4FFFFFFFFFFFFFEFEFFFFFFFFFF}
    end
    object btnOk: TBitBtn
      Left = 175
      Top = 6
      Width = 91
      Height = 25
      TabOrder = 1
      OnClick = btnOkClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 368
      Top = 6
      Width = 91
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 2
      Kind = bkCancel
    end
    object btnApply: TBitBtn
      Left = 272
      Top = 6
      Width = 90
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 3
      OnClick = btnApplyClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000000000000000
        000000000000000000002375A4FF2375A4FF218DB6FF2375A4FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002375A4FF20A9CAFF19AFD7FF2083B0FF2375A4FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002375A4FF237DAAFF1BBBDDFF16A9D4FF17A4CDFF2375A4FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        00002375A4FF2375A4FF21CBE6FF16B9DFFF13BAE1FF12A9D4FF207EACFF2375
        A4FF000000000000000000000000000000000000000000000000000000002375
        A4FF2375A4FF2BD3EAFF1CC2E5FF17C6E9FF14C4E8FF13B8DEFF19A7CEFF2375
        A4FF0000000000000000000000000000000000000000000000002375A4FF2375
        A4FF36DEF1FF20CDEBFF1DCDECFF1DCAEAFF20CDEAFF16BDE1FF15B1D8FF218C
        B7FF2375A4FF00000000000000000000000000000000000000002375A4FF46E9
        F6FF25D3F0FF22D2EEFF1FCCEAFF33C8E1FF43EBF7FF21C4E4FF1ABEE0FF1EB8
        DBFF2376A5FF2375A4FF00000000000000000000000000000000287FAAFF59E3
        EEFF55F3FCFF33DCF4FF3ADDF2FF2375A4FF2E8EB5FF50EEFAFF22C7E6FF1EC2
        E3FF27A7CBFF2375A4FF000000000000000000000000000000002375A4FF2375
        A4FF308BB3FF5ED9E7FF287EAAFF2375A4FF2375A4FF3FA9C7FF57EFF9FF24CC
        E9FF22C4E4FF2588B3FF2375A4FF000000000000000000000000000000000000
        00002375A4FF2375A4FF2375A4FF00000000000000002375A4FF55C0D6FF61F0
        FAFF25CDEAFF2ECDE7FF2378A6FF2375A4FF0000000000000000000000000000
        000000000000000000000000000000000000000000002375A4FF2375A4FF5BBD
        D4FF70F2FBFF29D3EEFF37C3DEFF2375A4FF2375A4FF00000000000000000000
        00000000000000000000000000000000000000000000000000002375A4FF2375
        A4FF5DB7D0FF7FF5FCFF2ED9F1FF34AECFFF2375A4FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000002375
        A4FF2375A4FF52A5C4FF99F9FDFF4AE4F7FF2E99BFFF2375A4FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002375A4FF3182ADFF90DDE9FF6DD7E8FF2378A6FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002375A4FF2375A4FF2375A4FF2375A4FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 474
    Height = 146
    ActivePage = tbsMain
    Align = alClient
    TabOrder = 1
    object tbsMain: TTabSheet
      HelpContext = 302
      Caption = #1054#1073#1097#1080#1077
      object Label5: TLabel
        Left = 256
        Top = 82
        Width = 56
        Height = 13
        Caption = #1050#1086#1076#1080#1088#1086#1074#1082#1072
        Enabled = False
        Visible = False
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 3
        Width = 246
        Height = 94
        Caption = #1040#1089#1089#1086#1094#1080#1080#1088#1086#1074#1072#1090#1100' '#1089' AlexSid BBCode Editor'
        Enabled = False
        TabOrder = 0
        Visible = False
        object chkAssBbc: TCheckBox
          Left = 16
          Top = 24
          Width = 161
          Height = 17
          Caption = #1060#1072#1081#1083#1099' bbcode (*.bbc)'
          TabOrder = 0
          OnClick = GroupBox5Click
        end
        object chkAssTxt: TCheckBox
          Left = 16
          Top = 70
          Width = 161
          Height = 17
          Caption = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099' (*.txt)'
          TabOrder = 1
          OnClick = GroupBox5Click
        end
        object chkAssBb: TCheckBox
          Left = 16
          Top = 47
          Width = 227
          Height = 17
          Caption = #1055#1088#1086#1084#1077#1078#1091#1090#1086#1095#1085#1099#1077' '#1092#1072#1081#1083#1099' '#1084#1072#1089#1090#1077#1088#1072' (*.bb!)'
          TabOrder = 2
          OnClick = GroupBox5Click
        end
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 20
        Width = 208
        Height = 70
        Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100'/'#1086#1090#1082#1088#1099#1074#1072#1090#1100' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        TabOrder = 1
        OnClick = GroupBox5Click
        object rdoSaveBbc: TRadioButton
          Left = 16
          Top = 24
          Width = 169
          Height = 17
          Caption = #1074' '#1092#1086#1088#1084#1072#1090#1077' bbcode (*.bbc)'
          TabOrder = 0
          OnClick = GroupBox5Click
        end
        object rdoSaveTxt: TRadioButton
          Left = 16
          Top = 47
          Width = 169
          Height = 17
          Caption = #1042' '#1090#1077#1082#1089#1090#1086#1074#1086#1084' '#1092#1086#1088#1084#1072#1090#1077' (*.txt)'
          TabOrder = 1
          OnClick = GroupBox5Click
        end
      end
      object cmbCode: TComboBox
        Left = 318
        Top = 79
        Width = 145
        Height = 21
        Enabled = False
        ItemHeight = 13
        TabOrder = 2
        Text = 'cmbCode'
        Visible = False
        OnClick = GroupBox5Click
      end
    end
    object tbsView: TTabSheet
      HelpContext = 302
      Caption = #1042#1080#1076
      ImageIndex = 1
      DesignSize = (
        466
        118)
      object GroupBox2: TGroupBox
        Left = 3
        Top = 3
        Width = 289
        Height = 102
        Caption = #1055#1072#1085#1077#1083#1080' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1086#1074
        TabOrder = 0
        object chkTBStandart: TCheckBox
          Left = 8
          Top = 28
          Width = 97
          Height = 17
          Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1072#1103
          TabOrder = 0
          OnClick = GroupBox5Click
        end
        object chkTBEdit: TCheckBox
          Left = 8
          Top = 51
          Width = 113
          Height = 17
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
          TabOrder = 1
          OnClick = GroupBox5Click
        end
        object chkTBAdvanced: TCheckBox
          Left = 168
          Top = 51
          Width = 105
          Height = 17
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103
          TabOrder = 2
          OnClick = GroupBox5Click
        end
        object chkTBTags: TCheckBox
          Left = 168
          Top = 28
          Width = 97
          Height = 17
          Caption = #1058#1077#1075#1080' BBCode'
          TabOrder = 3
          OnClick = GroupBox5Click
        end
        object chkTBStatBar: TCheckBox
          Left = 8
          Top = 74
          Width = 129
          Height = 17
          Caption = #1057#1090#1088#1086#1082#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
          TabOrder = 4
          OnClick = GroupBox5Click
        end
        object chkTBSmileBar: TCheckBox
          Left = 168
          Top = 76
          Width = 113
          Height = 17
          Caption = #1055#1072#1085#1077#1083#1100' '#1089#1084#1072#1081#1083#1086#1074
          TabOrder = 5
          OnClick = GroupBox5Click
        end
      end
      object rdoSmile: TRadioGroup
        Left = 298
        Top = 3
        Width = 165
        Height = 105
        Anchors = [akRight, akBottom]
        BiDiMode = bdLeftToRight
        Caption = #1056#1072#1079#1084#1077#1097#1077#1085#1080#1077' '#1087#1072#1085#1077#1083#1080' '#1089#1084#1072#1081#1083#1086#1074
        Items.Strings = (
          #1057#1074#1077#1088#1093#1091
          #1057#1083#1077#1074#1072
          #1057#1087#1088#1072#1074#1072
          #1057#1085#1080#1079#1091)
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
    object tbsTags: TTabSheet
      HelpContext = 302
      Caption = #1058#1077#1075#1080' '#1080' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      ImageIndex = 2
      object Label4: TLabel
        Left = 279
        Top = 73
        Width = 81
        Height = 13
        Caption = #1042#1099#1076#1077#1083#1103#1090#1100' '#1087#1086' F2'
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 270
        Height = 110
        Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1085#1072#1087#1080#1089#1072#1085#1080#1103' '#1090#1077#1075#1086#1074' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        TabOrder = 0
        object Label1: TLabel
          Left = 11
          Top = 32
          Width = 69
          Height = 13
          Caption = #1044#1083#1103' '#1090#1077#1075#1072' [url]'
        end
        object Label2: TLabel
          Left = 11
          Top = 59
          Width = 73
          Height = 13
          Caption = #1044#1083#1103' '#1090#1077#1075#1072' [img]'
        end
        object Label3: TLabel
          Left = 11
          Top = 86
          Width = 85
          Height = 13
          Caption = #1044#1083#1103' '#1090#1077#1075#1072' [quote]'
        end
        object cmbUrl: TComboBox
          Left = 114
          Top = 29
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnClick = GroupBox5Click
          Items.Strings = (
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
            #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081)
        end
        object cmbQuote: TComboBox
          Left = 114
          Top = 83
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnClick = GroupBox5Click
          Items.Strings = (
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
            #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081)
        end
        object cmbImg: TComboBox
          Left = 114
          Top = 56
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          OnClick = GroupBox5Click
          Items.Strings = (
            #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081
            #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081)
        end
      end
      object cmbSel: TComboBox
        Left = 279
        Top = 92
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnClick = GroupBox5Click
        Items.Strings = (
          #1087#1086' '#1076#1074#1086#1077#1090#1086#1095#1080#1102' (:)'
          #1087#1086' '#1090#1080#1088#1077' (-)'
          #1072#1076#1088#1077#1089' URL (http/www)')
      end
      object rdoColor: TRadioGroup
        Left = 279
        Top = 3
        Width = 185
        Height = 64
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1084#1077#1085#1080' '#1094#1074#1077#1090#1072' '#1074' [color]'
        Items.Strings = (
          #1082#1086#1076' RGB '#1074#1080#1076#1072' [color=#FF02AF]'
          #1080#1084#1103' '#1094#1074#1077#1090#1072' '#1074#1080#1076#1072'  [color=Red]')
        TabOrder = 2
        OnClick = GroupBox5Click
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 224
  end
end
