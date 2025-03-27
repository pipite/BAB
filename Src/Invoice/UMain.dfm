object FMain: TFMain
  Left = 0
  Top = 0
  Caption = '  Bric '#224' Broc'
  ClientHeight = 1047
  ClientWidth = 1684
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 50
  TextHeight = 16
  object Splitter1: TSplitter
    AlignWithMargins = True
    Left = 162
    Top = 10
    Width = 10
    Height = 1034
    Margins.Top = 10
    Beveled = True
    ExplicitLeft = 185
    ExplicitTop = 3
    ExplicitHeight = 942
  end
  object GroupBox17: TGroupBox
    Left = 0
    Top = 0
    Width = 159
    Height = 1047
    Align = alLeft
    Caption = ' Contacts '
    Constraints.MinWidth = 159
    TabOrder = 0
    object BtnMergeContacts: TButton
      AlignWithMargins = True
      Left = 5
      Top = 970
      Width = 149
      Height = 33
      Align = alBottom
      Caption = 'Merge 2 Contacts'
      ElevationRequired = True
      TabOrder = 0
      OnClick = BtnMergeContactsClick
    end
    object Panel2: TPanel
      Left = 27
      Top = 18
      Width = 130
      Height = 949
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GCNT: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 82
        Width = 124
        Height = 864
        Align = alClient
        Color = clBlack
        DataSource = DM.DCNT
        FixedColor = clBlack
        GradientEndColor = clBlack
        GradientStartColor = clBlack
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GCNTDblClick
        OnTitleClick = GCNTTitleClick
      end
      object BtNewSale: TButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 124
        Height = 34
        Align = alTop
        Caption = 'New Sale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtNewSaleClick
      end
      object Panel35: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 43
        Width = 124
        Height = 33
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object DBNavigator1: TDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 101
          Height = 25
          DataSource = DM.DCNT
          VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
          Align = alLeft
          TabOrder = 0
        end
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 2
      Top = 21
      Width = 25
      Height = 943
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      TabOrder = 2
      object Button3: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 920
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'Z'
        TabOrder = 0
        OnClick = ButtonAlphaClick
      end
      object Button24: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 898
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'Y'
        TabOrder = 1
        OnClick = ButtonAlphaClick
      end
      object Button25: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 876
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'X'
        TabOrder = 2
        OnClick = ButtonAlphaClick
      end
      object Button26: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 854
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'W'
        TabOrder = 3
        OnClick = ButtonAlphaClick
      end
      object Button27: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 832
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'V'
        TabOrder = 4
        OnClick = ButtonAlphaClick
      end
      object Button28: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 810
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'U'
        TabOrder = 5
        OnClick = ButtonAlphaClick
      end
      object Button30: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 788
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'T'
        TabOrder = 6
        OnClick = ButtonAlphaClick
      end
      object Button45: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 766
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'S'
        TabOrder = 7
        OnClick = ButtonAlphaClick
      end
      object Button46: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 744
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'R'
        TabOrder = 8
        OnClick = ButtonAlphaClick
      end
      object Button47: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 722
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'Q'
        TabOrder = 9
        OnClick = ButtonAlphaClick
      end
      object Button48: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 700
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'P'
        TabOrder = 10
        OnClick = ButtonAlphaClick
      end
      object Button50: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 678
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'O'
        TabOrder = 11
        OnClick = ButtonAlphaClick
      end
      object Button51: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 656
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'N'
        TabOrder = 12
        OnClick = ButtonAlphaClick
      end
      object Button52: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 634
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'M'
        TabOrder = 13
        OnClick = ButtonAlphaClick
      end
      object Button53: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 612
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'L'
        TabOrder = 14
        OnClick = ButtonAlphaClick
      end
      object Button54: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 590
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'K'
        TabOrder = 15
        OnClick = ButtonAlphaClick
      end
      object Button55: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 568
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'J'
        TabOrder = 16
        OnClick = ButtonAlphaClick
      end
      object Button56: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 546
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'I'
        TabOrder = 17
        OnClick = ButtonAlphaClick
      end
      object Button57: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 524
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'H'
        TabOrder = 18
        OnClick = ButtonAlphaClick
      end
      object Button58: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 502
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'G'
        TabOrder = 19
        OnClick = ButtonAlphaClick
      end
      object Button59: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 480
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'F'
        TabOrder = 20
        OnClick = ButtonAlphaClick
      end
      object Button60: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 458
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'E'
        TabOrder = 21
        OnClick = ButtonAlphaClick
      end
      object Button61: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 436
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'D'
        TabOrder = 22
        OnClick = ButtonAlphaClick
      end
      object Button62: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 414
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'C'
        TabOrder = 23
        OnClick = ButtonAlphaClick
      end
      object Button63: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 392
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'B'
        TabOrder = 24
        OnClick = ButtonAlphaClick
      end
      object Button64: TButton
        Tag = -5
        AlignWithMargins = True
        Left = 2
        Top = 370
        Width = 21
        Height = 21
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        Caption = 'A'
        TabOrder = 25
        OnClick = ButtonAlphaClick
      end
    end
    object ButtonClearEmptyContact: TButton
      AlignWithMargins = True
      Left = 5
      Top = 1009
      Width = 149
      Height = 33
      Align = alBottom
      Caption = 'Clear Unused Contact'
      ElevationRequired = True
      TabOrder = 3
      OnClick = ButtonClearEmptyContactClick
    end
  end
  object GroupBox15: TGroupBox
    Left = 175
    Top = 0
    Width = 1509
    Height = 1047
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alClient
    Caption = ' Work Views '
    TabOrder = 1
    object Splitter11: TSplitter
      Left = 2
      Top = 336
      Width = 1505
      Height = 10
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      ExplicitLeft = 13
      ExplicitTop = 363
      ExplicitWidth = 1311
    end
    object GroupBoxCMD: TGroupBox
      Left = 2
      Top = 346
      Width = 1505
      Height = 699
      Margins.Top = 0
      Align = alClient
      Caption = ' Purchase '
      TabOrder = 0
      object PageControl2: TPageControl
        Left = 2
        Top = 66
        Width = 1501
        Height = 631
        ActivePage = TabSheetAdmin
        Align = alClient
        TabOrder = 0
        OnChange = PageControl2Change
        object TabSheetPUR: TTabSheet
          Caption = ' Purchase '
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Splitter4: TSplitter
            Left = 500
            Top = 0
            Width = 10
            Height = 600
            Beveled = True
            Color = clBtnFace
            ParentColor = False
            ExplicitHeight = 549
          end
          object PanelPUR: TPanel
            Left = 0
            Top = 0
            Width = 500
            Height = 600
            Align = alLeft
            ParentColor = True
            TabOrder = 0
            object CheckBox1: TCheckBox
              Left = 1048
              Top = 1
              Width = 92
              Height = 32
              Caption = 'Lock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel14: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 492
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              ParentColor = True
              TabOrder = 1
              object ButtonXlsPUR: TSpeedButton
                AlignWithMargins = True
                Left = 103
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsPURClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object DBNavigator5: TDBNavigator
                AlignWithMargins = True
                Left = 134
                Top = 4
                Width = 103
                Height = 25
                DataSource = DM.DPUR
                VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                Align = alLeft
                TabOrder = 0
              end
              object ButtonReportPUR: TButton
                AlignWithMargins = True
                Left = 392
                Top = 4
                Width = 96
                Height = 25
                Margins.Left = 15
                Align = alRight
                Caption = 'Print'
                TabOrder = 1
                OnClick = ButtonReportPURClick
              end
              object CBPURLink: TCheckBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 93
                Height = 25
                Align = alLeft
                Caption = 'Contact Link'
                TabOrder = 2
                OnClick = CBPURLinkClick
              end
              object Button1: TButton
                AlignWithMargins = True
                Left = 243
                Top = 4
                Width = 131
                Height = 25
                Align = alLeft
                Caption = 'Quick Pay Purchase'
                TabOrder = 3
                OnClick = Button1Click
              end
            end
            object GPUR: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 492
              Height = 522
              Margins.Top = 0
              Align = alClient
              DataSource = DM.DPUR
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = GPURDrawColumnCell
              OnDblClick = GPURDblClick
              OnTitleClick = GPURTitleClick
            end
            object PanelPurLock: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 568
              Width = 492
              Height = 28
              Align = alBottom
              BevelOuter = bvLowered
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
          object PanelPURITM: TPanel
            Left = 510
            Top = 0
            Width = 983
            Height = 600
            Align = alClient
            TabOrder = 1
            object Panel6: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 975
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 0
              object Label7: TLabel
                AlignWithMargins = True
                Left = 566
                Top = 7
                Width = 45
                Height = 16
                Margins.Left = 10
                Margins.Top = 6
                Align = alLeft
                Caption = 'Delivery'
                Layout = tlCenter
              end
              object ButtonXlsPURITM: TSpeedButton
                AlignWithMargins = True
                Left = 87
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsPURITMClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object DBNavigator4: TDBNavigator
                AlignWithMargins = True
                Left = 118
                Top = 4
                Width = 83
                Height = 25
                DataSource = DM.DPURITM
                VisibleButtons = [nbFirst, nbLast, nbDelete]
                Align = alLeft
                TabOrder = 0
              end
              object ButtonAddPURITM: TButton
                Tag = 5
                AlignWithMargins = True
                Left = 207
                Top = 4
                Width = 122
                Height = 25
                Align = alLeft
                Caption = 'Add Selected Item'
                TabOrder = 1
                OnClick = ButtonAddPURITMClick
              end
              object ButtonNewPURITM: TButton
                AlignWithMargins = True
                Left = 347
                Top = 4
                Width = 102
                Height = 25
                Margins.Left = 15
                Align = alLeft
                Caption = 'New Item'
                TabOrder = 2
                OnClick = ButtonNewPURITMClick
              end
              object ButtonPURITMDeliveryLEND: TButton
                Tag = 1
                AlignWithMargins = True
                Left = 695
                Top = 4
                Width = 42
                Height = 25
                Align = alLeft
                Caption = 'Lend'
                TabOrder = 3
                OnClick = ButtonPURITMDeliveryClick
              end
              object ButtonPURITMDeliveryYES: TButton
                Tag = 2
                AlignWithMargins = True
                Left = 617
                Top = 4
                Width = 32
                Height = 25
                Align = alLeft
                Caption = 'Yes'
                TabOrder = 4
                OnClick = ButtonPURITMDeliveryClick
              end
              object ButtonPURITMDeliveryNO: TButton
                Tag = 1
                AlignWithMargins = True
                Left = 655
                Top = 4
                Width = 34
                Height = 25
                Align = alLeft
                Caption = 'No'
                TabOrder = 5
                OnClick = ButtonPURITMDeliveryClick
              end
              object ButtonNewPURITMIndice: TButton
                AlignWithMargins = True
                Left = 455
                Top = 4
                Width = 98
                Height = 25
                Align = alLeft
                Caption = 'New Indice'
                TabOrder = 6
                OnClick = ButtonNewPURITMIndiceClick
              end
              object ButtonCleanUpPurchase: TButton
                AlignWithMargins = True
                Left = 755
                Top = 4
                Width = 78
                Height = 25
                Margins.Left = 15
                Align = alLeft
                Caption = 'CleanUp'
                TabOrder = 7
                OnClick = ButtonCleanUpPurchaseClick
              end
              object CBPURITMLink: TCheckBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 77
                Height = 25
                Align = alLeft
                Caption = 'Item Link'
                TabOrder = 8
                OnClick = CBPURITMLinkClick
              end
            end
            object Panel8: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 975
              Height = 556
              Margins.Top = 0
              Align = alClient
              TabOrder = 1
              object GPURITM: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 1
                Width = 967
                Height = 551
                Margins.Top = 0
                Align = alClient
                DataSource = DM.DPURITM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = GPURITMDrawColumnCell
                OnDblClick = GPURITMDblClick
                OnTitleClick = GPURITMTitleClick
              end
            end
          end
        end
        object TabSheetSAL: TTabSheet
          Caption = ' Sale '
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Splitter12: TSplitter
            Left = 500
            Top = 0
            Width = 10
            Height = 600
            Beveled = True
            Color = clBtnFace
            ParentColor = False
            ExplicitHeight = 549
          end
          object PanelSAL: TPanel
            Left = 0
            Top = 0
            Width = 500
            Height = 600
            Align = alLeft
            TabOrder = 0
            object CheckBox2: TCheckBox
              Left = 1048
              Top = 1
              Width = 92
              Height = 32
              Caption = 'Lock'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object GSAL: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 492
              Height = 522
              Margins.Top = 0
              Align = alClient
              DataSource = DM.DSAL
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = GSALDrawColumnCell
              OnDblClick = GSALDblClick
              OnTitleClick = GSALTitleClick
            end
            object Panel27: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 492
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              ParentBackground = False
              TabOrder = 2
              object ButtonXlsSAL: TSpeedButton
                AlignWithMargins = True
                Left = 103
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsSALClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object DBNavigator9: TDBNavigator
                AlignWithMargins = True
                Left = 134
                Top = 4
                Width = 103
                Height = 25
                DataSource = DM.DSAL
                VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                Align = alLeft
                TabOrder = 0
              end
              object ButtonReportSAL: TButton
                AlignWithMargins = True
                Left = 392
                Top = 4
                Width = 96
                Height = 25
                Margins.Left = 15
                Align = alRight
                Caption = 'Print'
                TabOrder = 1
                OnClick = ButtonReportSALClick
              end
              object ButtonQuickPayAllSAL: TButton
                AlignWithMargins = True
                Left = 243
                Top = 4
                Width = 102
                Height = 25
                Align = alLeft
                Caption = 'Quick Pay Sale'
                TabOrder = 2
                OnClick = ButtonQuickPayAllSALClick
              end
              object CBSALLink: TCheckBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 93
                Height = 25
                Align = alLeft
                Caption = 'Contact Link'
                TabOrder = 3
                OnClick = CBSALLinkClick
              end
            end
            object PanelSalLock: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 568
              Width = 492
              Height = 28
              Align = alBottom
              BevelOuter = bvLowered
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
          object PanelSALITM: TPanel
            Left = 510
            Top = 0
            Width = 983
            Height = 600
            Align = alClient
            TabOrder = 1
            object Panel30: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 975
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 0
              object Label14: TLabel
                AlignWithMargins = True
                Left = 486
                Top = 7
                Width = 45
                Height = 16
                Margins.Left = 10
                Margins.Top = 6
                Align = alLeft
                Caption = 'Delivery'
                Layout = tlCenter
              end
              object ButtonXlsSALITM: TSpeedButton
                AlignWithMargins = True
                Left = 87
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsSALITMClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object DBNavigator10: TDBNavigator
                AlignWithMargins = True
                Left = 118
                Top = 4
                Width = 83
                Height = 25
                DataSource = DM.DSALITM
                VisibleButtons = [nbFirst, nbLast, nbDelete]
                Align = alLeft
                TabOrder = 0
              end
              object ButtonSALWithoutCode: TButton
                AlignWithMargins = True
                Left = 347
                Top = 4
                Width = 126
                Height = 25
                Margins.Left = 15
                Align = alLeft
                Caption = 'Sale Without Code'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                StyleElements = [seClient, seBorder]
                OnClick = ButtonSALWithoutCodeClick
              end
              object Button39: TButton
                Tag = 1
                AlignWithMargins = True
                Left = 615
                Top = 4
                Width = 42
                Height = 25
                Align = alLeft
                Caption = 'Lend'
                TabOrder = 2
                OnClick = ButtonSalDeliveryClick
              end
              object Button40: TButton
                Tag = 2
                AlignWithMargins = True
                Left = 537
                Top = 4
                Width = 32
                Height = 25
                Align = alLeft
                Caption = 'Yes'
                TabOrder = 3
                OnClick = ButtonSalDeliveryClick
              end
              object Button43: TButton
                Tag = 1
                AlignWithMargins = True
                Left = 575
                Top = 4
                Width = 34
                Height = 25
                Align = alLeft
                Caption = 'No'
                TabOrder = 4
                OnClick = ButtonSalDeliveryClick
              end
              object Button66: TButton
                Tag = -1
                AlignWithMargins = True
                Left = 207
                Top = 4
                Width = 122
                Height = 25
                Align = alLeft
                Caption = 'Add Selected Item'
                TabOrder = 5
                OnClick = ButtonAddSALITMClick
              end
              object ButtonSALReplaceITM: TButton
                AlignWithMargins = True
                Left = 868
                Top = 4
                Width = 103
                Height = 25
                Align = alRight
                Caption = 'Replace Item'
                TabOrder = 6
                OnClick = ButtonSALReplaceITMClick
              end
              object ButtonCleanUpSale: TButton
                AlignWithMargins = True
                Left = 675
                Top = 4
                Width = 103
                Height = 25
                Margins.Left = 15
                Align = alLeft
                Caption = 'CleanUp'
                TabOrder = 7
                OnClick = ButtonCleanUpSaleClick
              end
              object CBSALITMLink: TCheckBox
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 77
                Height = 25
                Align = alLeft
                Caption = 'Item Link'
                TabOrder = 8
                OnClick = CBSALITMLinkClick
              end
            end
            object Panel31: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 975
              Height = 556
              Margins.Top = 0
              Align = alClient
              TabOrder = 1
              object GSALITM: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 1
                Width = 967
                Height = 551
                Margins.Top = 0
                Align = alClient
                DataSource = DM.DSALITM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = GSALITMDrawColumnCell
                OnDblClick = GSALITMDblClick
                OnTitleClick = GSALITMTitleClick
              end
            end
          end
        end
        object TabSheetLF: TTabSheet
          Caption = ' Lost && Found '
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PanelLF: TPanel
            Left = 0
            Top = 0
            Width = 1493
            Height = 600
            Align = alClient
            TabOrder = 0
            object Splitter22: TSplitter
              Left = 449
              Top = 1
              Width = 10
              Height = 598
              Beveled = True
              ExplicitLeft = 409
              ExplicitTop = 35
              ExplicitHeight = 558
            end
            object Panel26: TPanel
              AlignWithMargins = True
              Left = 462
              Top = 4
              Width = 1027
              Height = 592
              Align = alClient
              TabOrder = 0
              object GLFITM: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 40
                Width = 1019
                Height = 548
                Margins.Top = 0
                Align = alClient
                DataSource = DM.DLFITM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = GLFITMDrawColumnCell
                OnDblClick = GLFITMDblClick
                OnTitleClick = GLFITMTitleClick
              end
              object Panel10: TPanel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 1019
                Height = 33
                Align = alTop
                BevelOuter = bvLowered
                ParentBackground = False
                TabOrder = 1
                object ButtonXlsLFITM: TSpeedButton
                  AlignWithMargins = True
                  Left = 87
                  Top = 4
                  Width = 25
                  Height = 25
                  Align = alLeft
                  Glyph.Data = {
                    06080000424D060800000000000036000000280000001A000000190000000100
                    180000000000D007000025160000251600000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000004D9F1A36980732960069B740000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                    1343A30E78BC5000000000000000000000000000000000000000000000000000
                    000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                    A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                    A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                    42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                    1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                    9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                    A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                    BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                    44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                    15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                    CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                    A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                    73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                    45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                    15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                    C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                    9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                    C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                    45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                    1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                    AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                    FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                    80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                    45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                    1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                    C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                    FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                    A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                    45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                    1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                    B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                    9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                    BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                    45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                    1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                    CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                    A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                    53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                    43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                    1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                    CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                    A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                    C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                    42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                    183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                    A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                    A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                    A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                    00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                    1239A10979BC4D00000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000}
                  OnClick = ButtonXlsLFITMClick
                  ExplicitLeft = 12
                  ExplicitTop = 8
                end
                object DBNavigator6: TDBNavigator
                  AlignWithMargins = True
                  Left = 118
                  Top = 4
                  Width = 102
                  Height = 25
                  DataSource = DM.DLFITM
                  VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                  Align = alLeft
                  TabOrder = 0
                end
                object ButtonLFITMAddSelectedItem: TButton
                  Tag = -3
                  AlignWithMargins = True
                  Left = 378
                  Top = 4
                  Width = 130
                  Height = 25
                  Align = alLeft
                  Caption = 'Add Selected Item'
                  TabOrder = 1
                  OnClick = ButtonLFITMAddSelectedItemClick
                end
                object ButtonLFITMCreateNewItem: TButton
                  AlignWithMargins = True
                  Left = 526
                  Top = 4
                  Width = 222
                  Height = 25
                  Margins.Left = 15
                  Align = alLeft
                  Caption = 'Create New Item without Purchase'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clFuchsia
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  StyleElements = [seClient, seBorder]
                  OnClick = ButtonLFITMCreateNewItemClick
                end
                object CBLFApplySmartFilter: TCheckBox
                  AlignWithMargins = True
                  Left = 228
                  Top = 4
                  Width = 144
                  Height = 25
                  Margins.Left = 5
                  Align = alLeft
                  Caption = '  Apply Smart Filter'
                  TabOrder = 3
                  StyleElements = [seClient, seBorder]
                  OnClick = CBLFApplySmartFilterClick
                end
                object CBLFITMLink: TCheckBox
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 77
                  Height = 25
                  Align = alLeft
                  Caption = 'Item Link'
                  TabOrder = 4
                  OnClick = CBLFITMLinkClick
                end
              end
            end
            object Panel29: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 442
              Height = 592
              Align = alLeft
              TabOrder = 1
              object Splitter23: TSplitter
                Left = 1
                Top = 218
                Width = 440
                Height = 10
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                ExplicitLeft = -1
                ExplicitTop = 180
                ExplicitWidth = 376
              end
              object Splitter24: TSplitter
                Left = 1
                Top = 376
                Width = 440
                Height = 10
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                ExplicitLeft = -1
                ExplicitTop = 360
                ExplicitWidth = 376
              end
              object Label18: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 43
                Width = 169
                Height = 16
                Align = alTop
                Caption = 'Category (Dbl Click to Modify)'
              end
              object Label21: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 231
                Width = 330
                Height = 16
                Align = alTop
                Caption = 'List of Purchase for Selected L&&F Item (Dbl Click to Open)'
              end
              object Label22: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 389
                Width = 303
                Height = 16
                Align = alTop
                Caption = 'List of Sale for Selected L&&F Item (Dbl Click to Open)'
              end
              object GLF: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 62
                Width = 434
                Height = 153
                Margins.Top = 0
                Align = alTop
                DataSource = DM.DLF
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = GLFDrawColumnCell
                OnDblClick = GLFDblClick
                OnTitleClick = GLFTitleClick
              end
              object Panel34: TPanel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 434
                Height = 33
                Align = alTop
                BevelOuter = bvLowered
                ParentBackground = False
                TabOrder = 1
                object DBNavigator12: TDBNavigator
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 109
                  Height = 25
                  DataSource = DM.DLF
                  VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                  Align = alLeft
                  TabOrder = 0
                end
                object CBLFFilterByCategory: TCheckBox
                  AlignWithMargins = True
                  Left = 121
                  Top = 4
                  Width = 144
                  Height = 25
                  Margins.Left = 5
                  Align = alLeft
                  Caption = '  Filter by Category'
                  TabOrder = 1
                  StyleElements = [seClient, seBorder]
                  OnClick = CBLFFilterByCategoryClick
                end
              end
              object GLFITMSAL: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 411
                Width = 434
                Height = 177
                Align = alClient
                DataSource = DM.DQLFITMSAL
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = GLFITMSALDrawColumnCell
                OnDblClick = GLFITMSALDblClick
                OnTitleClick = GLFITMSALTitleClick
              end
              object GLFITMPUR: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 253
                Width = 434
                Height = 120
                Align = alTop
                DataSource = DM.DQLFITMPUR
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = GLFITMPURDrawColumnCell
                OnDblClick = GLFITMPURDblClick
                OnTitleClick = GLFITMPURTitleClick
              end
            end
          end
        end
        object TabSheetASM: TTabSheet
          Caption = ' Assembly '
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Splitter3: TSplitter
            Left = 649
            Top = 0
            Width = 10
            Height = 600
            Beveled = True
            ExplicitLeft = 163
            ExplicitTop = 4
            ExplicitHeight = 426
          end
          object Panel13: TPanel
            Left = 659
            Top = 0
            Width = 834
            Height = 600
            Align = alClient
            Caption = 'No Assembly'
            TabOrder = 0
            object GASMITM: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 43
              Width = 826
              Height = 553
              Align = alClient
              DataSource = DM.DASMITM
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = GASMITMDblClick
              OnTitleClick = GASMITMTitleClick
            end
            object Panel12: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 826
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 1
              object DBNavigator8: TDBNavigator
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 109
                Height = 25
                DataSource = DM.DASMITM
                VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                Align = alLeft
                TabOrder = 0
              end
              object Button67: TButton
                Tag = -1
                AlignWithMargins = True
                Left = 119
                Top = 4
                Width = 210
                Height = 25
                Align = alLeft
                Caption = 'Add Selected Item in Assembly'
                TabOrder = 1
                OnClick = ButtonASMITM_AddClick
              end
              object ButtonCreateNewItemWithoutPurchase: TButton
                AlignWithMargins = True
                Left = 347
                Top = 4
                Width = 222
                Height = 25
                Margins.Left = 15
                Align = alLeft
                Caption = 'Create New Item Without Purchase'
                TabOrder = 2
                OnClick = ButtonCreateNewItemWithoutPurchaseClick
              end
            end
          end
          object V: TPanel
            Left = 0
            Top = 0
            Width = 649
            Height = 600
            Align = alLeft
            TabOrder = 1
            object Panel15: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 641
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 0
              object ButtonASM_New: TButton
                AlignWithMargins = True
                Left = 119
                Top = 4
                Width = 118
                Height = 25
                Align = alLeft
                Caption = 'New Assembly'
                TabOrder = 0
                OnClick = ButtonASM_NewClick
              end
              object DBNavigator7: TDBNavigator
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 109
                Height = 25
                DataSource = DM.DASM
                VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
                Align = alLeft
                TabOrder = 1
              end
            end
            object GASM: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 43
              Width = 641
              Height = 553
              Align = alClient
              DataSource = DM.DASM
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = GASMDblClick
              OnTitleClick = GASMTitleClick
            end
          end
        end
        object TabSheetHIST: TTabSheet
          Caption = ' Item History '
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PanelITMHistory: TPanel
            Left = 0
            Top = 0
            Width = 1493
            Height = 600
            Align = alClient
            ParentColor = True
            TabOrder = 0
            object Splitter7: TSplitter
              AlignWithMargins = True
              Left = 970
              Top = 4
              Width = 10
              Height = 592
              Margins.Left = 0
              Margins.Right = 0
              Beveled = True
              ExplicitLeft = 530
              ExplicitTop = 1
              ExplicitHeight = 425
            end
            object Splitter10: TSplitter
              AlignWithMargins = True
              Left = 444
              Top = 4
              Width = 10
              Height = 592
              Margins.Left = 0
              Margins.Right = 0
              Beveled = True
              ExplicitLeft = 450
              ExplicitTop = -7
              ExplicitHeight = 425
            end
            object Panel18: TPanel
              AlignWithMargins = True
              Left = 457
              Top = 4
              Width = 510
              Height = 592
              Align = alLeft
              ParentColor = True
              TabOrder = 0
              object Panel19: TPanel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 502
                Height = 33
                Align = alTop
                BevelOuter = bvLowered
                ParentColor = True
                TabOrder = 0
                object LabelITMFoundSAL: TLabel
                  AlignWithMargins = True
                  Left = 63
                  Top = 4
                  Width = 105
                  Height = 16
                  Align = alClient
                  Caption = 'Item found in Sale'
                  Layout = tlCenter
                end
                object DBNavigator18: TDBNavigator
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 53
                  Height = 25
                  DataSource = DM.DHSTITMSAL
                  VisibleButtons = [nbFirst, nbLast]
                  Align = alLeft
                  TabOrder = 0
                end
              end
              object GHSTITMSAL: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 43
                Width = 502
                Height = 545
                Align = alClient
                DataSource = DM.DHSTITMSAL
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDblClick = GHSTITMSALDblClick
                OnTitleClick = GHSTITMSALTitleClick
              end
            end
            object Panel20: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 437
              Height = 592
              Align = alLeft
              ParentColor = True
              TabOrder = 1
              object Splitter8: TSplitter
                Left = 1
                Top = 127
                Width = 435
                Height = 10
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                ExplicitTop = 111
                ExplicitWidth = 399
              end
              object Panel21: TPanel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 429
                Height = 33
                Align = alTop
                BevelOuter = bvLowered
                ParentColor = True
                TabOrder = 0
                object LabelITMFoundPUR: TLabel
                  AlignWithMargins = True
                  Left = 63
                  Top = 4
                  Width = 132
                  Height = 16
                  Align = alClient
                  Caption = 'Item found in Purchase'
                  Layout = tlCenter
                end
                object DBNavigator16: TDBNavigator
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 53
                  Height = 25
                  DataSource = DM.DHSTITMPUR
                  VisibleButtons = [nbFirst, nbLast]
                  Align = alLeft
                  TabOrder = 0
                end
              end
              object GHSTITMPUR: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 43
                Width = 429
                Height = 81
                Align = alTop
                DataSource = DM.DHSTITMPUR
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDblClick = GHSTITMPURDblClick
                OnTitleClick = GHSTITMPURTitleClick
              end
              object GHSTPURITM: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 179
                Width = 429
                Height = 409
                Align = alClient
                DataSource = DM.DHSTPURITM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnTitleClick = GHSTPURITMTitleClick
              end
              object Panel36: TPanel
                AlignWithMargins = True
                Left = 4
                Top = 140
                Width = 429
                Height = 33
                Align = alTop
                BevelOuter = bvLowered
                ParentColor = True
                TabOrder = 3
                object LabelListPUR: TLabel
                  AlignWithMargins = True
                  Left = 63
                  Top = 4
                  Width = 144
                  Height = 16
                  Align = alClient
                  Caption = 'Other Item in Purchase   '
                  Layout = tlCenter
                end
                object DBNavigator17: TDBNavigator
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 53
                  Height = 25
                  DataSource = DM.DHSTPURITM
                  VisibleButtons = [nbFirst, nbLast]
                  Align = alLeft
                  TabOrder = 0
                end
              end
            end
            object Panel22: TPanel
              AlignWithMargins = True
              Left = 983
              Top = 4
              Width = 506
              Height = 592
              Align = alClient
              AutoSize = True
              ParentBackground = False
              TabOrder = 2
              object LabelITMFoundLF: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 118
                Height = 16
                Align = alTop
                Caption = 'History Lost && Found'
              end
              object LabelITMFoundFROMASM: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 124
                Width = 132
                Height = 16
                Align = alTop
                Caption = 'Item used by Assembly'
              end
              object LabelITMFoundASM: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 240
                Width = 153
                Height = 16
                Align = alTop
                Caption = 'Item used in this Assembly'
              end
              object Splitter6: TSplitter
                Left = 1
                Top = 110
                Width = 504
                Height = 11
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                ExplicitTop = 91
                ExplicitWidth = 457
              end
              object Splitter9: TSplitter
                Left = 1
                Top = 227
                Width = 504
                Height = 10
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                ExplicitLeft = 6
                ExplicitTop = 177
                ExplicitWidth = 518
              end
              object GHSTITMLF: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 26
                Width = 498
                Height = 81
                Align = alTop
                DataSource = DM.DHSTITMLF
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnTitleClick = GHSTITMLFTitleClick
              end
              object GHSTITMFROMASM: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 146
                Width = 498
                Height = 78
                Align = alTop
                DataSource = DM.DHSTITMFROMASM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnTitleClick = GHSTITMFROMASMTitleClick
              end
              object GHSTITMASM: TDBGrid
                AlignWithMargins = True
                Left = 4
                Top = 262
                Width = 498
                Height = 326
                Align = alClient
                DataSource = DM.DHSTITMASM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnTitleClick = GHSTITMASMTitleClick
              end
            end
          end
        end
        object TabSheetMOV: TTabSheet
          Caption = ' Mouvment '
          ImageIndex = 9
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PanelMOV: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1487
            Height = 594
            Align = alClient
            TabOrder = 0
            object Splitter13: TSplitter
              AlignWithMargins = True
              Left = 4
              Top = 225
              Width = 1479
              Height = 10
              Cursor = crVSplit
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alTop
              Beveled = True
              ExplicitLeft = 1
              ExplicitTop = 236
              ExplicitWidth = 1475
            end
            object GMOVPUR: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 1479
              Height = 182
              Align = alTop
              DataSource = DM.DMOVPUR
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = GMOVPURDrawColumnCell
              OnDblClick = GMOVPURDblClick
              OnTitleClick = GMOVPURTitleClick
            end
            object Panel5: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 1479
              Height = 33
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 1
              object ButtonXlsMOVITMPUR: TSpeedButton
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsMOVITMPURClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object RBOnlySelectedItem: TRadioButton
                AlignWithMargins = True
                Left = 331
                Top = 4
                Width = 146
                Height = 25
                Align = alLeft
                Caption = ' Selected Item Only'
                TabOrder = 0
                OnClick = RBOnlySelectedItemClick
              end
              object RBApplyFilter: TRadioButton
                AlignWithMargins = True
                Left = 184
                Top = 4
                Width = 141
                Height = 25
                Align = alLeft
                Caption = ' Apply Smart Filter'
                TabOrder = 1
                OnClick = RBApplyFilterClick
              end
              object RBNoFilter: TRadioButton
                AlignWithMargins = True
                Left = 94
                Top = 4
                Width = 84
                Height = 25
                Align = alLeft
                Caption = ' No Filter'
                Checked = True
                TabOrder = 2
                TabStop = True
                OnClick = RBNoFilterClick
              end
              object DBNavigator13: TDBNavigator
                AlignWithMargins = True
                Left = 35
                Top = 4
                Width = 53
                Height = 25
                DataSource = DM.DMOVPUR
                VisibleButtons = [nbFirst, nbLast]
                Align = alLeft
                TabOrder = 3
              end
            end
            object GMOVSAL: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 274
              Width = 1479
              Height = 316
              Align = alClient
              DataSource = DM.DMOVSAL
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = GMOVSALDrawColumnCell
              OnDblClick = GMOVSALDblClick
              OnTitleClick = GMOVSALTitleClick
            end
            object Panel25: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 238
              Width = 1479
              Height = 33
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 3
              object ButtonXlsMOVITMSAL: TSpeedButton
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsMOVITMSALClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object DBNavigator14: TDBNavigator
                AlignWithMargins = True
                Left = 35
                Top = 4
                Width = 53
                Height = 25
                DataSource = DM.DMOVSAL
                VisibleButtons = [nbFirst, nbLast]
                Align = alLeft
                TabOrder = 0
              end
            end
          end
        end
        object TabSheetRPT: TTabSheet
          Caption = ' Profit '
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel38: TPanel
            Left = 0
            Top = 0
            Width = 233
            Height = 600
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label15: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 124
              Height = 13
              Align = alTop
              Caption = 'Profits Report From Date:'
            end
            object Label16: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 189
              Width = 42
              Height = 13
              Align = alTop
              Caption = 'To Date:'
            end
            object MonthCalendar1: TMonthCalendar
              AlignWithMargins = True
              Left = 4
              Top = 23
              Width = 225
              Height = 160
              Align = alTop
              AutoSize = True
              Date = 42866.711859872690000000
              TabOrder = 0
              OnClick = MonthCalendar1Click
            end
            object MonthCalendar2: TMonthCalendar
              AlignWithMargins = True
              Left = 4
              Top = 208
              Width = 225
              Height = 160
              Align = alTop
              AutoSize = True
              Date = 42866.711859872690000000
              TabOrder = 1
              OnClick = MonthCalendar1Click
            end
          end
          object Panel7: TPanel
            Left = 233
            Top = 0
            Width = 1260
            Height = 600
            Align = alClient
            TabOrder = 1
            object GPROFIT: TDBGrid
              AlignWithMargins = True
              Left = 4
              Top = 40
              Width = 1252
              Height = 556
              Margins.Top = 0
              Align = alClient
              DataSource = DM.DPROFIT
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnTitleClick = GPROFITTitleClick
            end
            object Panel23: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 1252
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 1
              object Label29: TLabel
                AlignWithMargins = True
                Left = 94
                Top = 4
                Width = 69
                Height = 16
                Align = alLeft
                Caption = 'Profit report'
                Layout = tlCenter
              end
              object ButtonXlsPROFIT: TSpeedButton
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 25
                Height = 25
                Align = alLeft
                Glyph.Data = {
                  06080000424D060800000000000036000000280000001A000000190000000100
                  180000000000D007000025160000251600000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004D9F1A36980732960069B740000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                  1343A30E78BC5000000000000000000000000000000000000000000000000000
                  000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                  A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                  A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                  42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                  1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                  9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                  A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                  BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                  44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                  15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                  CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                  A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                  73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                  45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                  15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                  C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                  9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                  C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                  45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                  1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                  AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                  FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                  80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                  45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                  1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                  C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                  FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                  A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                  45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                  1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                  B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                  9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                  BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                  45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                  1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                  CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                  A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                  53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                  43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                  1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                  CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                  A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                  C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                  42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                  183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                  A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                  A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                  A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                  00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                  1239A10979BC4D00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                OnClick = ButtonXlsPROFITClick
                ExplicitLeft = 12
                ExplicitTop = 8
              end
              object ButtonReport_YY_MM: TButton
                AlignWithMargins = True
                Left = 169
                Top = 4
                Width = 172
                Height = 25
                Align = alLeft
                Caption = 'Sort by Year Month'
                TabOrder = 0
                OnClick = ButtonReport_YY_MMClick
              end
              object ButtonReport_YY_MM_INV: TButton
                AlignWithMargins = True
                Left = 347
                Top = 4
                Width = 205
                Height = 25
                Align = alLeft
                Caption = 'Sort by Year Month Invoice'
                TabOrder = 1
                OnClick = ButtonReport_YY_MM_INVClick
              end
              object ButtonReport_DAY_INV_ITM: TButton
                AlignWithMargins = True
                Left = 558
                Top = 4
                Width = 191
                Height = 25
                Align = alLeft
                Caption = 'Sort by Day Invoice Item'
                TabOrder = 2
                OnClick = ButtonReport_DAY_INV_ITMClick
              end
              object DBNavigator15: TDBNavigator
                AlignWithMargins = True
                Left = 35
                Top = 4
                Width = 53
                Height = 25
                DataSource = DM.DPROFIT
                VisibleButtons = [nbFirst, nbLast]
                Align = alLeft
                TabOrder = 3
              end
            end
          end
        end
        object TabSheetTDL: TTabSheet
          Caption = ' To Do List '
          ImageIndex = 7
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox20: TGroupBox
            Left = 0
            Top = 0
            Width = 1493
            Height = 600
            Align = alClient
            Caption = ' To Do '
            TabOrder = 0
            object Splitter21: TSplitter
              Left = 618
              Top = 18
              Width = 10
              Height = 580
              Beveled = True
              ExplicitLeft = 409
            end
            object GroupBox23: TGroupBox
              AlignWithMargins = True
              Left = 5
              Top = 21
              Width = 610
              Height = 574
              Align = alLeft
              Caption = ' Warning Item '
              TabOrder = 0
              object Splitter5: TSplitter
                Left = 2
                Top = 337
                Width = 606
                Height = 12
                Cursor = crVSplit
                Align = alBottom
                Beveled = True
                ExplicitTop = 349
                ExplicitWidth = 376
              end
              object GroupBox9: TGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 21
                Width = 600
                Height = 313
                Align = alClient
                Caption = ' Item Qty Sale > Qty Purchase '
                TabOrder = 0
                object GTODO_NEG: TDBGrid
                  AlignWithMargins = True
                  Left = 5
                  Top = 57
                  Width = 590
                  Height = 251
                  Align = alClient
                  DataSource = DM.DSTODO_NEG
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -13
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  StyleElements = [seClient, seBorder]
                  OnTitleClick = GTODO_NEGTitleClick
                end
                object Panel28: TPanel
                  AlignWithMargins = True
                  Left = 5
                  Top = 18
                  Width = 590
                  Height = 33
                  Margins.Top = 0
                  Align = alTop
                  BevelOuter = bvLowered
                  TabOrder = 1
                  object Label23: TLabel
                    Left = 94
                    Top = 8
                    Width = 175
                    Height = 16
                    Caption = 'Default Total Error  Purchase: '
                    Layout = tlCenter
                  end
                  object Label24: TLabel
                    Left = 408
                    Top = 8
                    Width = 30
                    Height = 16
                    Caption = 'Sale:'
                  end
                  object DBText4: TDBText
                    Left = 264
                    Top = 8
                    Width = 129
                    Height = 17
                    Alignment = taRightJustify
                    DataField = 'ErrDefPur'
                    DataSource = DM.DTODONEGERR
                  end
                  object DBText5: TDBText
                    Left = 448
                    Top = 8
                    Width = 129
                    Height = 17
                    Alignment = taRightJustify
                    DataField = 'ErrDefSal'
                    DataSource = DM.DTODONEGERR
                  end
                  object ButtonXlsTODO_NEG: TSpeedButton
                    AlignWithMargins = True
                    Left = 4
                    Top = 4
                    Width = 25
                    Height = 25
                    Align = alLeft
                    Glyph.Data = {
                      06080000424D060800000000000036000000280000001A000000190000000100
                      180000000000D007000025160000251600000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000000004D9F1A36980732960069B740000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                      1343A30E78BC5000000000000000000000000000000000000000000000000000
                      000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                      A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                      A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                      42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                      1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                      9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                      A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                      BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                      44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                      15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                      CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                      A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                      73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                      45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                      15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                      C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                      9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                      C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                      45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                      1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                      AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                      FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                      80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                      45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                      1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                      C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                      FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                      A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                      45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                      1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                      B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                      9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                      BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                      45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                      1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                      CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                      A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                      53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                      43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                      1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                      CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                      A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                      C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                      42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                      183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                      A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                      A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                      A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                      00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                      1239A10979BC4D00000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000000}
                    OnClick = ButtonXlsTODO_NEGClick
                    ExplicitLeft = 12
                    ExplicitTop = 8
                  end
                  object DBNavigator19: TDBNavigator
                    AlignWithMargins = True
                    Left = 35
                    Top = 4
                    Width = 53
                    Height = 25
                    DataSource = DM.DSTODO_NEG
                    VisibleButtons = [nbFirst, nbLast]
                    Align = alLeft
                    TabOrder = 0
                  end
                end
              end
              object GroupBox11: TGroupBox
                AlignWithMargins = True
                Left = 5
                Top = 352
                Width = 600
                Height = 217
                Align = alBottom
                Caption = ' Item without Purchase OR <Sale Without Code> '
                TabOrder = 1
                object GTODO_UNK: TDBGrid
                  AlignWithMargins = True
                  Left = 5
                  Top = 57
                  Width = 590
                  Height = 155
                  Align = alClient
                  DataSource = DM.DSTODO_UNK
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clFuchsia
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -13
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  StyleElements = [seClient, seBorder]
                  OnTitleClick = GTODO_UNKTitleClick
                end
                object Panel40: TPanel
                  AlignWithMargins = True
                  Left = 5
                  Top = 18
                  Width = 590
                  Height = 33
                  Margins.Top = 0
                  Align = alTop
                  BevelOuter = bvLowered
                  TabOrder = 1
                  object Label25: TLabel
                    Left = 94
                    Top = 8
                    Width = 171
                    Height = 16
                    Caption = 'Default Total Error  Purchase:'
                  end
                  object Label26: TLabel
                    Left = 408
                    Top = 8
                    Width = 30
                    Height = 16
                    Caption = 'Sale:'
                  end
                  object DBText6: TDBText
                    Left = 280
                    Top = 8
                    Width = 113
                    Height = 17
                    Alignment = taRightJustify
                    DataField = 'ErrDefPur'
                    DataSource = DM.TODOUNKERR
                  end
                  object DBText7: TDBText
                    Left = 448
                    Top = 8
                    Width = 129
                    Height = 17
                    Alignment = taRightJustify
                    DataField = 'ErrDefSal'
                    DataSource = DM.TODOUNKERR
                  end
                  object BurronXlsTODO_UNK: TSpeedButton
                    AlignWithMargins = True
                    Left = 4
                    Top = 4
                    Width = 25
                    Height = 25
                    Align = alLeft
                    Glyph.Data = {
                      06080000424D060800000000000036000000280000001A000000190000000100
                      180000000000D007000025160000251600000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000000004D9F1A36980732960069B740000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                      1343A30E78BC5000000000000000000000000000000000000000000000000000
                      000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                      A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                      A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                      42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                      1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                      9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                      A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                      BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                      44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                      15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                      CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                      A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                      73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                      45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                      15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                      C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                      9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                      C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                      45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                      1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                      AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                      FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                      80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                      45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                      1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                      C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                      FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                      A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                      45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                      1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                      B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                      9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                      BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                      45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                      1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                      CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                      A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                      53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                      43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                      1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                      CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                      A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                      C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                      42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                      183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                      A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                      A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                      A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                      00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                      1239A10979BC4D00000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000000}
                    OnClick = BurronXlsTODO_UNKClick
                    ExplicitTop = 8
                  end
                  object DBNavigator20: TDBNavigator
                    AlignWithMargins = True
                    Left = 35
                    Top = 4
                    Width = 53
                    Height = 25
                    DataSource = DM.DSTODO_UNK
                    VisibleButtons = [nbFirst, nbLast]
                    Align = alLeft
                    TabOrder = 0
                  end
                end
              end
            end
            object Panel1: TPanel
              Left = 628
              Top = 18
              Width = 863
              Height = 580
              Align = alClient
              Caption = 'Panel1'
              TabOrder = 1
              object Splitter17: TSplitter
                Left = 1
                Top = 281
                Width = 861
                Height = 12
                Cursor = crVSplit
                Align = alBottom
                Beveled = True
                ExplicitTop = 341
                ExplicitWidth = 1091
              end
              object Panel37: TPanel
                Left = 1
                Top = 1
                Width = 861
                Height = 280
                Align = alClient
                ParentBackground = False
                ParentColor = True
                TabOrder = 0
                object Splitter18: TSplitter
                  Left = 756
                  Top = 1
                  Width = 10
                  Height = 278
                  Beveled = True
                  ExplicitLeft = 489
                  ExplicitTop = 11
                  ExplicitHeight = 317
                end
                object GroupBox22: TGroupBox
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Width = 749
                  Height = 272
                  Align = alLeft
                  Caption = ' Payment '
                  TabOrder = 0
                  object Splitter16: TSplitter
                    Left = 372
                    Top = 18
                    Width = 10
                    Height = 252
                    Beveled = True
                    ExplicitLeft = 409
                    ExplicitHeight = 157
                  end
                  object GroupBox16: TGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 21
                    Width = 364
                    Height = 246
                    Align = alLeft
                    Caption = ' Purchase to pay '
                    TabOrder = 0
                    object GTODO_PURPAY: TDBGrid
                      AlignWithMargins = True
                      Left = 5
                      Top = 21
                      Width = 354
                      Height = 220
                      Align = alClient
                      DataSource = DM.DSTODO_PURPAY
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -13
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      OnDblClick = GTODO_PURPAYDblClick
                      OnTitleClick = GTODO_PURPAYTitleClick
                    end
                  end
                  object GroupBox13: TGroupBox
                    AlignWithMargins = True
                    Left = 385
                    Top = 21
                    Width = 359
                    Height = 246
                    Align = alClient
                    Caption = ' Sale not yet paid '
                    TabOrder = 1
                    object GTODO_SALPAY: TDBGrid
                      AlignWithMargins = True
                      Left = 5
                      Top = 21
                      Width = 349
                      Height = 220
                      Align = alClient
                      DataSource = DM.DSTODO_SALPAY
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -13
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      OnDblClick = GTODO_SALPAYDblClick
                      OnTitleClick = GTODO_SALPAYTitleClick
                    end
                  end
                end
                object GroupBox4: TGroupBox
                  AlignWithMargins = True
                  Left = 769
                  Top = 4
                  Width = 88
                  Height = 272
                  Align = alClient
                  Caption = ' Instructions for Staff'
                  TabOrder = 1
                  object DBMemoTODO: TDBMemo
                    AlignWithMargins = True
                    Left = 5
                    Top = 21
                    Width = 78
                    Height = 246
                    Align = alClient
                    DataField = 'Memo'
                    DataSource = DM.DMEMOTODO
                    ScrollBars = ssBoth
                    TabOrder = 0
                  end
                end
              end
              object GroupBox21: TGroupBox
                AlignWithMargins = True
                Left = 4
                Top = 296
                Width = 855
                Height = 280
                Align = alBottom
                Caption = ' Delivery '
                TabOrder = 1
                object Splitter19: TSplitter
                  Left = 2
                  Top = 132
                  Width = 851
                  Height = 12
                  Cursor = crVSplit
                  Align = alTop
                  Beveled = True
                  ExplicitTop = 141
                  ExplicitWidth = 427
                end
                object GroupBox12: TGroupBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 21
                  Width = 845
                  Height = 108
                  Align = alTop
                  Caption = ' Purchase Item not delivery '
                  TabOrder = 0
                  object GTODO_PURDLV: TDBGrid
                    AlignWithMargins = True
                    Left = 5
                    Top = 21
                    Width = 835
                    Height = 82
                    Align = alClient
                    DataSource = DM.DSTODO_PURDLV
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDblClick = GTODO_PURDLVDblClick
                    OnTitleClick = GTODO_PURDLVTitleClick
                  end
                end
                object GroupBox10: TGroupBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 147
                  Width = 845
                  Height = 128
                  Align = alClient
                  Caption = ' Sale Item to delivery '
                  TabOrder = 1
                  object GTODO_SALDLV: TDBGrid
                    AlignWithMargins = True
                    Left = 5
                    Top = 21
                    Width = 835
                    Height = 102
                    Align = alClient
                    DataSource = DM.DSTODO_SALDLV
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDblClick = GTODO_SALDLVDblClick
                    OnTitleClick = GTODO_SALDLVTitleClick
                  end
                end
              end
            end
          end
        end
        object TabSheetAdmin: TTabSheet
          Caption = ' Admin '
          ImageIndex = 7
          object Panel39: TPanel
            Left = 0
            Top = 0
            Width = 353
            Height = 600
            Align = alLeft
            TabOrder = 0
            object GroupBox18: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 60
              Width = 345
              Height = 178
              Align = alTop
              Caption = ' SQL Server - Backup - Restore '
              TabOrder = 0
              object Label2: TLabel
                Left = 19
                Top = 112
                Width = 91
                Height = 16
                Caption = 'Server Backup: '
              end
              object LabelPathBackup: TLabel
                Left = 117
                Top = 112
                Width = 212
                Height = 16
                AutoSize = False
                Caption = 'Undef'
              end
              object Label4: TLabel
                Left = 144
                Top = 77
                Width = 95
                Height = 16
                Caption = 'Keep files during'
              end
              object Label5: TLabel
                Left = 287
                Top = 77
                Width = 27
                Height = 16
                Caption = 'Days'
              end
              object ButtonBackup: TButton
                Left = 16
                Top = 24
                Width = 137
                Height = 33
                Caption = 'Backup'
                Enabled = False
                TabOrder = 0
                OnClick = ButtonBackupClick
              end
              object ButtonRestore: TButton
                Left = 159
                Top = 24
                Width = 170
                Height = 33
                Caption = 'Restore old database'
                ElevationRequired = True
                Enabled = False
                TabOrder = 1
                OnClick = ButtonRestoreClick
              end
              object CBAutoBackup: TCheckBox
                AlignWithMargins = True
                Left = 16
                Top = 75
                Width = 108
                Height = 21
                Margins.Left = 15
                Caption = '  Auto Backup'
                Checked = True
                State = cbChecked
                TabOrder = 2
                OnClick = CBAutoBackupClick
              end
              object ButtonBackupPath: TButton
                Left = 17
                Top = 134
                Width = 137
                Height = 33
                Caption = 'Modify Backup path'
                ElevationRequired = True
                TabOrder = 3
                OnClick = ButtonBackupPathClick
              end
              object ButtonSelectSQLServer: TButton
                Left = 160
                Top = 134
                Width = 169
                Height = 33
                Caption = 'SQL Server Setup'
                ElevationRequired = True
                TabOrder = 4
                OnClick = ButtonSelectSQLServerClick
              end
              object EditAutoSaveDays: TEdit
                Left = 245
                Top = 74
                Width = 36
                Height = 24
                Alignment = taCenter
                Enabled = False
                NumbersOnly = True
                TabOrder = 5
                Text = '1'
                OnChange = EditParamChange
              end
            end
            object GroupBox8: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 345
              Height = 50
              Align = alTop
              Caption = '  Administrator By Pass Lock '
              TabOrder = 1
              object Label1: TLabel
                Left = 16
                Top = 20
                Width = 95
                Height = 16
                Caption = 'Admin Password'
                StyleElements = [seClient, seBorder]
              end
              object EditPassword: TEdit
                Left = 176
                Top = 16
                Width = 153
                Height = 24
                PasswordChar = 'x'
                TabOrder = 0
                OnChange = EditPasswordChange
              end
            end
            object GroupBox1: TGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 244
              Width = 345
              Height = 152
              Align = alTop
              Caption = ' Utility '
              TabOrder = 2
              object Label17: TLabel
                Left = 16
                Top = 122
                Width = 125
                Height = 16
                Caption = 'Unlock Duration in mn'
              end
              object ButtonCleanUpAllInvoice: TButton
                AlignWithMargins = True
                Left = 160
                Top = 24
                Width = 169
                Height = 32
                Caption = 'CleanUp All Invoice'
                ElevationRequired = True
                TabOrder = 0
                OnClick = ButtonCleanUpAllInvoiceClick
              end
              object ButtonImport: TButton
                AlignWithMargins = True
                Left = 19
                Top = 24
                Width = 135
                Height = 32
                Caption = 'Import from RMAN'
                ElevationRequired = True
                Enabled = False
                TabOrder = 1
                OnClick = ButtonImportClick
              end
              object CBLockItemZero: TCheckBox
                Left = 16
                Top = 73
                Width = 313
                Height = 17
                Caption = ' Lock Item in Sale and Purchase if Stock < 1'
                Checked = True
                State = cbChecked
                TabOrder = 2
                OnClick = CBLockItemZeroClick
              end
              object CBAutoClearItem: TCheckBox
                Left = 16
                Top = 96
                Width = 313
                Height = 17
                Caption = ' Auto Clear Unused Item'
                TabOrder = 3
                OnClick = CBAutoClearItemClick
              end
              object EditUnlock: TEdit
                Left = 176
                Top = 119
                Width = 44
                Height = 24
                Alignment = taCenter
                Enabled = False
                NumbersOnly = True
                TabOrder = 4
                Text = '1'
                OnChange = EditUnlockChange
              end
            end
          end
          object Panel17: TPanel
            Left = 780
            Top = 0
            Width = 713
            Height = 600
            Align = alClient
            TabOrder = 1
            object TreeViewLOG: TTreeView
              AlignWithMargins = True
              Left = 4
              Top = 43
              Width = 705
              Height = 553
              Align = alClient
              Indent = 19
              ParentColor = True
              TabOrder = 0
              ToolTips = False
            end
            object Panel11: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 705
              Height = 33
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 1
              object ButtonClearLog: TButton
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 161
                Height = 25
                Align = alLeft
                Caption = 'Clear Log '
                ElevationRequired = True
                TabOrder = 0
                OnClick = ButtonClearLogClick
              end
              object ButtonAbout: TButton
                AlignWithMargins = True
                Left = 171
                Top = 4
                Width = 161
                Height = 25
                Align = alLeft
                Caption = 'About Invoice Version'
                TabOrder = 1
                OnClick = ButtonAboutClick
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 356
            Top = 3
            Width = 421
            Height = 594
            Align = alLeft
            Caption = '  Company Info  '
            TabOrder = 2
            object DBMemoTextInfo: TDBMemo
              AlignWithMargins = True
              Left = 5
              Top = 234
              Width = 411
              Height = 297
              Align = alClient
              DataField = 'MEMO'
              DataSource = DM.DMEMOINFO
              ScrollBars = ssBoth
              TabOrder = 0
            end
            object Panel9: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 21
              Width = 411
              Height = 207
              Align = alTop
              BevelOuter = bvLowered
              TabOrder = 1
              object Label3: TLabel
                Left = 20
                Top = 28
                Width = 33
                Height = 16
                Caption = 'Name'
              end
              object Label6: TLabel
                Left = 20
                Top = 59
                Width = 31
                Height = 16
                Caption = 'Email'
              end
              object Label8: TLabel
                Left = 20
                Top = 90
                Width = 35
                Height = 16
                Caption = 'Phone'
              end
              object Label11: TLabel
                Left = 19
                Top = 118
                Width = 84
                Height = 16
                Caption = 'Address Line 1'
              end
              object Label12: TLabel
                Left = 20
                Top = 148
                Width = 84
                Height = 16
                Caption = 'Address Line 2'
              end
              object Label13: TLabel
                Left = 20
                Top = 178
                Width = 209
                Height = 16
                Caption = 'Additionnal Text Info on Sale Invoice'
              end
              object EditCompanyName: TEdit
                Left = 130
                Top = 24
                Width = 271
                Height = 24
                TabOrder = 0
                OnChange = EditCompanyNameChange
              end
              object EditCompanyEmail: TEdit
                Left = 130
                Top = 54
                Width = 271
                Height = 24
                TabOrder = 1
                OnChange = EditCompanyEmailChange
              end
              object EditCompanyTel: TEdit
                Left = 130
                Top = 84
                Width = 271
                Height = 24
                TabOrder = 2
                OnChange = EditCompanyTelChange
              end
              object EditCompanyAddress1: TEdit
                Left = 130
                Top = 114
                Width = 271
                Height = 24
                TabOrder = 3
                OnChange = EditCompanyAddress1Change
              end
              object EditCompanyAddress2: TEdit
                Left = 130
                Top = 144
                Width = 271
                Height = 24
                TabOrder = 4
                OnChange = EditCompanyAddress2Change
              end
              object ButtonResetParam: TButton
                Left = 255
                Top = 174
                Width = 147
                Height = 26
                Caption = ' Reset Param'
                ElevationRequired = True
                TabOrder = 5
                OnClick = ButtonResetParamClick
              end
            end
            object GroupBox19: TGroupBox
              AlignWithMargins = True
              Left = 5
              Top = 537
              Width = 411
              Height = 52
              Align = alBottom
              Caption = ' Style apparence '
              TabOrder = 2
              object ComboBoxStyle: TComboBox
                AlignWithMargins = True
                Left = 5
                Top = 21
                Width = 172
                Height = 24
                Align = alLeft
                TabOrder = 0
                Text = 'Windows'
                OnChange = ComboBoxStyleChange
                Items.Strings = (
                  'Windows'
                  'Amakrits'
                  'Amethyst Kamri'
                  'Aqua Graphite'
                  'Aqua Light Slate'
                  'Auric'
                  'Carbon'
                  'Charcoal Dark Slate'
                  'Cobalt XEMedia'
                  'Cyan Dusk'
                  'Cyan Night'
                  'Emerald Light Slate'
                  'Glossy'
                  'Glow'
                  'Iceberg Classico'
                  'Lavender Classico'
                  'Light'
                  'Luna'
                  'Metropolis UI Black'
                  'Metropolis UI Blue'
                  'Metropolis UI Dark'
                  'Metropolis UI Green'
                  'Obsidian'
                  'Onyx Blue'
                  'Sapphire Kamri'
                  'Silver'
                  'Sky'
                  'Smokey Quartz Kamri'
                  'Tablet Light'
                  'TabletDark'
                  'Turquoise Gray'
                  'Windows10'
                  'Windows10 Blue'
                  'Windows10 Dark'
                  'Windows10 Green'
                  'Windows10 Purple'
                  'Windows10 SlateGray')
              end
              object ButtonFont: TButton
                AlignWithMargins = True
                Left = 183
                Top = 21
                Width = 135
                Height = 26
                Align = alLeft
                Caption = 'Select Font'
                TabOrder = 1
                OnClick = ButtonFontClick
              end
            end
          end
        end
      end
      object PanelInfo: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 21
        Width = 1495
        Height = 42
        Align = alTop
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 1
        object LabelInfo: TLabel
          AlignWithMargins = True
          Left = 135
          Top = 7
          Width = 1356
          Height = 31
          Margins.Top = 6
          Align = alClient
          Alignment = taCenter
          Caption = 'Admin is ON'
          Layout = tlCenter
          Visible = False
          ExplicitWidth = 70
          ExplicitHeight = 16
        end
        object ButtonAdminOff: TButton
          AlignWithMargins = True
          Left = 16
          Top = 4
          Width = 113
          Height = 34
          Margins.Left = 15
          Align = alLeft
          Caption = 'Admin Off'
          Default = True
          ElevationRequired = True
          TabOrder = 0
          Visible = False
          OnClick = ButtonAdminOffClick
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 18
      Width = 1505
      Height = 318
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter2: TSplitter
        AlignWithMargins = True
        Left = 310
        Top = 10
        Width = 10
        Height = 305
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Beveled = True
        ExplicitLeft = 167
        ExplicitTop = 3
        ExplicitHeight = 314
      end
      object GroupBox2: TGroupBox
        Left = 151
        Top = 0
        Width = 159
        Height = 318
        Align = alLeft
        Caption = ' Groups '
        TabOrder = 0
        object GGRP: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 60
          Width = 149
          Height = 223
          Align = alClient
          DataSource = DM.DGRP
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = GGRPDblClick
          OnTitleClick = GGRPTitleClick
        end
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 149
          Height = 33
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 1
          object DBNavigator3: TDBNavigator
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 101
            Height = 25
            DataSource = DM.DGRP
            VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete]
            Align = alLeft
            TabOrder = 0
          end
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 289
          Width = 149
          Height = 24
          Align = alBottom
          DataField = 'GRP_COMMENT'
          TabOrder = 2
        end
      end
      object GroupBox14: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 145
        Height = 318
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = ' Smart Filter '
        TabOrder = 1
        object ButtonITMClearFilter: TButton
          AlignWithMargins = True
          Left = 5
          Top = 275
          Width = 135
          Height = 33
          Align = alTop
          Caption = 'Clear filter'
          TabOrder = 0
          OnClick = ButtonITMClearFilterClick
        end
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 61
          Width = 135
          Height = 24
          Align = alTop
          Alignment = taCenter
          Color = clYellow
          TabOrder = 1
          StyleElements = [seBorder]
          OnChange = Edit1Change
          OnKeyUp = Edit1KeyUp
        end
        object CBHideZeroStock: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 229
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Hide Zero Stock'
          TabOrder = 2
          StyleElements = [seClient, seBorder]
          OnClick = CBHideZeroStockClick
        end
        object ButtonReportITM: TButton
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 135
          Height = 34
          Align = alTop
          Caption = 'Print Filtered Item'
          TabOrder = 3
          OnClick = ButtonReportITMClick
        end
        object CBWithoutVirtual: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 206
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Not Virtual'
          TabOrder = 4
          StyleElements = [seClient, seBorder]
          OnClick = CBWithoutVirtualClick
        end
        object CBFilterCNT: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 252
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Filter by Contact'
          TabOrder = 5
          StyleElements = [seClient, seBorder]
          OnClick = CBFilterCNTClick
        end
        object CBGroup: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 91
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Filter by Group'
          TabOrder = 6
          StyleElements = [seClient, seBorder]
          OnClick = CBGroupClick
        end
        object CBOnlyVirtual: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 183
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Only Virtual'
          TabOrder = 7
          StyleElements = [seClient, seBorder]
          OnClick = CBOnlyVirtualClick
        end
        object CBDropItem: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 114
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Only Drop Items'
          TabOrder = 8
          StyleElements = [seClient, seBorder]
          OnClick = CBDropItemClick
        end
        object CBWarning: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 137
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Warning'
          TabOrder = 9
          StyleElements = [seClient, seBorder]
          OnClick = CBWarningClick
        end
        object CBItemToUpdate: TCheckBox
          AlignWithMargins = True
          Left = 7
          Top = 160
          Width = 133
          Height = 17
          Margins.Left = 5
          Align = alTop
          Caption = '  Item to Update'
          TabOrder = 10
          StyleElements = [seClient, seBorder]
          OnClick = CBItemToUpdateClick
        end
      end
      object GroupBox7: TGroupBox
        Left = 320
        Top = 0
        Width = 1185
        Height = 318
        Align = alClient
        Caption = ' Items '
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        object PanelITM: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 1175
          Height = 295
          Margins.Top = 0
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          object Panel24: TPanel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 1167
            Height = 33
            Align = alTop
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 0
            object LabelFilter: TLabel
              AlignWithMargins = True
              Left = 310
              Top = 7
              Width = 45
              Height = 18
              Margins.Top = 6
              Margins.Bottom = 7
              Align = alLeft
              Caption = 'No filter'
              Layout = tlCenter
              StyleElements = [seClient, seBorder]
              ExplicitHeight = 16
            end
            object ButtonXlsItem: TSpeedButton
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 25
              Height = 25
              Align = alLeft
              Glyph.Data = {
                06080000424D060800000000000036000000280000001A000000190000000100
                180000000000D007000025160000251600000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000004D9F1A36980732960069B740000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000053A1223C990739990338A0073BA20941A20C46A41342A9
                1343A30E78BC5000000000000000000000000000000000000000000000000000
                000000000000000000000000003390003A98083D9F0940A80842A41244A61448
                A81747A41245A61748A81646A7184AA4173BA10F82BF57BFDBAFA4CC8BA6CD8E
                A6CE87A4C98DA4C98FA5CE89A1CC8DA3CC88ADD19C00000000000000003C9E08
                42A81345A41645A41A46A61A49A41549A61745A81549A41847A61646A61544A1
                1A44A50B8AC7674EA1251E93002894002E9600369E002F980038970032970036
                9D042F930000000000000000003CA10B4CA6164DA81646A41547A8124CA61945
                A61745A61548A71847A41446A8134AA7153DA30E7BB850FFFFFFFFFFFFFFFFFF
                BADCABA0D188FFFFFFFFFFFFFFFFFFA4CC802D980000000000000000003FA208
                44A61646A81549A41742A61847A51448A51746A31A49A7154CA51744A41746A8
                15409E117CBD4EFFFFFFFFFFFFFFFFFFC0DFAC9FCB8AFFFFFFFFFFFFFFFFFF9B
                CD8530940000000000000000003CA00944A5174BA81745A71543A10F3FA60E46
                A61347A414359F0439A40A47A81948A814429F117FC356ACCD968EBC6D93C070
                73B94F5CA53278BB5A7AB65077B95260A82E39980400000000000000003BA006
                45A91846A41545A3107EC35C63B13741A10A5AB035CFE7BF97CC753CA00C49A7
                15419E117BBF55E5F4DCCEE8C5D7F0C99FCE7D8ECA70EBFADBE4F4D7E8FDE68A
                C47033990000000000000000003CA10A47A21649A815389B07DCEED1F0F4E428
                9400BAD9B0FFFFFF61A73642A30F46A7153DA00E7ABA50FFFFFFFFFFFFFFFFFF
                C0DCABA0CF8AFFFFFFFFFFFFFFFFFF9CCE7E2F940000000000000000003EA107
                45A61646A41842A81362AC37FFFFFF4FA228FFFFFFD1E9C3389A0047A81745A8
                1744A10D82C157D1E5C6B4D8A5BEDCAE8BC77174B04BB2D49AADD191B8D5A06E
                AD4F369A0000000000000000003B9E0849A61742A51643A812389800E2F2DAFC
                FBF9FFFFFF5EAA363AA21149A71145A61844A1117CBE56B9D9A6A2CF7FA9D18C
                80BE5B7ABC53ABD798A9D199B0D49976BD4F34970300000000000000003CA30B
                45A51448A81948A713419E0C88C068FFFFFFD9EBCE33990049A71549A41746A5
                1640A3107DBA4EFFFFFFFFFFFFFFFFFFC1DEAC9CCB87FFFFFFFFFFFFFFFFFF9C
                C78332990000000000000000003CA20847A61846A41645A519339E00D2E6BEFF
                FFFFFFFFFD369B0045A41444A91444A71947A30F7BBE53F7FCEEE4F1DCE8F5DC
                A6D58D8DC46EDFF6DFDCF1D5E5F7E288C067349A00000000000000000039A004
                45A71949A71645A20D4BA625FFFFFF8FBF74FFFFFF93C57A3BA20846A61746A4
                1742A10D7FC15D9EC5847AB55886B7656AB04363AB3382BC5C81B96083BC5A5E
                B23738980400000000000000003EA30845A41446A7173CA006C0DAAAFFFFFF33
                9500B7DBA5FFFFFF3598044AA71345A4163DA4117ABA4DFFFFFFFFFFFFFFFFFF
                BDE0AE9CCC88FFFFFFFFFFFFFFFFFF9ECA7E2F950000000000000000003AA008
                45A61949A5163C9C0CB4D99793C871339C0464A730FFFFFF81C15D3FA30C45A7
                1B44A10B7BBC4FFFFFFFFFFFFFFFFFFFC1DDA69DCC81FFFFFFFFFFFFFFFFFF9B
                CB7E34950000000000000000003EA10944A5164CA81146A61A3E9E0A3AA00C47
                A61742A414359C0242A2134DA51448A5163EA10F80C35E85B8675BA73466A738
                53AC294DA51B54A62855A2285FA42949A61E399A0200000000000000003EA209
                43A8154AA51846A41546A71746A71547A51548A71546A51847A51546A41746A6
                1A3FA20D7CBB4DFFFFFFFFFFFFFFFFFFBEE0B0A0C98CFFFFFFFFFFFFFFFFFFA1
                CC81329500000000000000000040A30743A41745A6164AA81748A81345A61645
                A61848A41749A41646A71648A41343A91545A01076BA4FFFFFFFFFFFFFFFFFFF
                C5E1AAA4CC8EFFFFFFFFFFFFFFFFFFA1CA7F309500000000000000000042A517
                42A5174EA71741A41248A51749A41548A81846A71245A81449A51946A91849A0
                183EA40D8AC35D73B5534AA81B4FAA2649A61646A81755AB2A59AD2A5BAA323F
                A5162A9300000000000000000042A5173B9C07369A033CA2043DA10F3FA21043
                A51245A71549A61647A81646A61544A81543A1117FC158B5DAA3A0CE829FCE84
                A1D288A0CE889FD1859ED1849FD083A5CE7FAED6A20000000000000000000000
                00000000000000000000000064B3384AA5203C9A09389E003B9F093FA10C46A6
                1239A10979BC4D00000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000066AD3F43A10A6CB244000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000}
              OnClick = ButtonXlsItemClick
            end
            object DBNavigator2: TDBNavigator
              AlignWithMargins = True
              Left = 35
              Top = 4
              Width = 78
              Height = 25
              DataSource = DM.DITM
              VisibleButtons = [nbFirst, nbLast, nbDelete]
              Align = alLeft
              TabOrder = 0
            end
            object ButtonMergeItem: TButton
              AlignWithMargins = True
              Left = 1042
              Top = 4
              Width = 121
              Height = 25
              Margins.Left = 15
              Align = alRight
              Caption = 'Merge 2 Items'
              ElevationRequired = True
              TabOrder = 1
              OnClick = ButtonMergeItemClick
            end
            object CBNegativeStockCompens: TCheckBox
              AlignWithMargins = True
              Left = 131
              Top = 4
              Width = 173
              Height = 25
              Margins.Left = 15
              Align = alLeft
              Caption = 'Negative Stock Compens'
              TabOrder = 2
              OnClick = CBNegativeStockCompensClick
            end
          end
          object GITM: TDBGrid
            AlignWithMargins = True
            Left = 4
            Top = 40
            Width = 1167
            Height = 251
            Margins.Top = 0
            Align = alClient
            DataSource = DM.DITM
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = GITMDrawColumnCell
            OnDblClick = GITMDblClick
            OnTitleClick = GITMTitleClick
          end
        end
      end
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 1076
    Top = 633
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 559
    Top = 110
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 560
    Top = 159
  end
  object FolderSelectDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Title = 'Select Backup Folder'
    Left = 558
    Top = 212
  end
end
