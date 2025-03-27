object FormITM: TFormITM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'New Item'
  ClientHeight = 620
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object GBNew: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 126
    Width = 538
    Height = 491
    Align = alBottom
    Caption = 'Create New Purchase Item'
    TabOrder = 0
    object LabelStep1: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 66
      Width = 522
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Align = alTop
      Caption = 'Step 1: Choose type of Item'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
      ExplicitWidth = 161
    end
    object LabelStep4: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 223
      Width = 143
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Step 4: Enter Description'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object LabelStep2: TLabel
      AlignWithMargins = True
      Left = 346
      Top = 66
      Width = 171
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Step 2: Choose Group of Item'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object LabelStep3: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 166
      Width = 114
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Step 3: Choose Unit'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object LabelStep5: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 294
      Width = 142
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Step 5: Default Pruchase'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object LabelStep6: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 324
      Width = 115
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Step 6: Default Sale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object LabelStep7: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 368
      Width = 93
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Step 7: Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 408
      Width = 55
      Height = 16
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Caption = 'Comment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object Panel13: TPanel
      AlignWithMargins = True
      Left = 8
      Top = 21
      Width = 522
      Height = 36
      Margins.Left = 6
      Margins.Right = 6
      Align = alTop
      BevelOuter = bvLowered
      BevelWidth = 2
      TabOrder = 0
      object DBText2: TDBText
        Left = 160
        Top = 8
        Width = 26
        Height = 25
        DataField = 'ITM_CP'
        DataSource = DM.DWITM
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 43
        Top = 8
        Width = 108
        Height = 16
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Caption = 'Item Code Number'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object DBEditCODE: TDBEdit
        Left = 176
        Top = 5
        Width = 74
        Height = 24
        DataField = 'ITM_CODE'
        DataSource = DM.DWITM
        TabOrder = 0
        OnChange = DBEditCODEChange
      end
      object DBEditINDICE: TDBEdit
        Left = 256
        Top = 5
        Width = 25
        Height = 24
        DataField = 'ITM_INDICE'
        DataSource = DM.DWITM
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 443
      Width = 528
      Height = 43
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 1
      object ButtonCancel: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 67
        Height = 35
        Align = alLeft
        Caption = 'Cancel'
        TabOrder = 0
        OnClick = ButtonCancelClick
      end
      object BitBtnOK: TBitBtn
        AlignWithMargins = True
        Left = 77
        Top = 4
        Width = 447
        Height = 35
        Align = alClient
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtnOKClick
      end
    end
    object DBEditStep3: TDBEdit
      Left = 129
      Top = 189
      Width = 42
      Height = 24
      DataField = 'ITM_UNIT'
      DataSource = DM.DWITM
      TabOrder = 2
    end
    object DBEditStep4: TDBEdit
      Left = 10
      Top = 245
      Width = 328
      Height = 24
      DataField = 'ITM_NAME'
      DataSource = DM.DWITM
      TabOrder = 3
      OnChange = DBEditStep4Change
    end
    object ButtonNormal: TButton
      Left = 127
      Top = 88
      Width = 102
      Height = 56
      Caption = 'Normal Item'
      TabOrder = 4
      OnClick = ButtonTypeClick
    end
    object ButtonDrop: TButton
      Left = 19
      Top = 88
      Width = 102
      Height = 25
      Caption = 'Drop (D)'
      TabOrder = 5
      OnClick = ButtonTypeClick
    end
    object ButtonWorkshop: TButton
      Left = 235
      Top = 88
      Width = 102
      Height = 25
      Caption = 'WorkShop (W)'
      TabOrder = 6
      OnClick = ButtonTypeClick
    end
    object ButtonImmo: TButton
      Left = 19
      Top = 119
      Width = 102
      Height = 25
      Caption = 'Immo (I)'
      TabOrder = 7
      OnClick = ButtonTypeClick
    end
    object Button6: TButton
      Left = 3
      Top = 188
      Width = 36
      Height = 26
      Caption = 'U'
      TabOrder = 8
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 45
      Top = 188
      Width = 36
      Height = 26
      Caption = 'Lot'
      TabOrder = 9
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 87
      Top = 188
      Width = 36
      Height = 26
      Caption = 'M2'
      TabOrder = 10
      OnClick = Button8Click
    end
    object DBEditStep5: TDBEdit
      Left = 177
      Top = 291
      Width = 160
      Height = 24
      DataField = 'ITM_PURCHASE'
      DataSource = DM.DWITM
      TabOrder = 11
      OnChange = DBEditStep5Change
    end
    object DBEditStep6: TDBEdit
      Left = 177
      Top = 321
      Width = 160
      Height = 24
      DataField = 'ITM_SALE'
      DataSource = DM.DWITM
      TabOrder = 12
      OnChange = DBEditStep6Change
    end
    object ButtonVirtual: TButton
      Left = 235
      Top = 119
      Width = 102
      Height = 25
      Caption = 'Virtual (V)'
      TabOrder = 13
      OnClick = ButtonTypeClick
    end
    object EditStepQty: TEdit
      Left = 235
      Top = 365
      Width = 46
      Height = 24
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 14
      Text = '1'
      OnChange = EditStepQtyChange
    end
    object DBEdit1: TDBEdit
      Left = 82
      Top = 405
      Width = 255
      Height = 24
      DataField = 'ITM_COMMENT'
      DataSource = DM.DWITM
      TabOrder = 15
      OnChange = DBEditStep6Change
    end
    object DBLookupListBox1: TDBLookupListBox
      Left = 354
      Top = 88
      Width = 171
      Height = 340
      DataField = 'ITM_GRP_ID'
      DataSource = DM.DWITM
      KeyField = 'GRP_ID'
      ListField = 'GRP_NAME'
      ListSource = DM.DWGRP
      TabOrder = 16
      OnClick = DBLookupListBox1Click
    end
    object ButtonMoins: TButton
      Left = 177
      Top = 365
      Width = 36
      Height = 24
      Caption = '-1'
      TabOrder = 17
      OnClick = ButtonMoinsClick
    end
    object ButtonPlus: TButton
      Left = 300
      Top = 365
      Width = 36
      Height = 24
      Caption = '+1'
      TabOrder = 18
      OnClick = ButtonPlusClick
    end
  end
  object GBCategory: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 538
    Height = 117
    Align = alClient
    Caption = ' Choose a Category '
    TabOrder = 1
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 21
      Width = 528
      Height = 91
      Align = alClient
      DataSource = DLF
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object WLF: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.LF'
      'WHERE (RTRIM(LF_CATEGORY) NOT LIKE '#39'* Sale Negative Item'#39') '
      'AND (RTRIM(LF_CATEGORY) NOT LIKE '#39'* Sale Without Code'#39')'
      'AND (RTRIM(LF_CATEGORY) NOT LIKE '#39'* Item Broken'#39')')
    Left = 251
    Top = 35
    object WLFLF_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LF_ID'
      Origin = 'LF_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object WLFLF_CATEGORY: TWideStringField
      DisplayLabel = 'Category'
      DisplayWidth = 20
      FieldName = 'LF_CATEGORY'
      Origin = 'LF_CATEGORY'
      Required = True
      FixedChar = True
    end
    object WLFLF_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 19
      FieldName = 'LF_COMMENT'
      Origin = 'LF_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object DLF: TDataSource
    DataSet = WLF
    Left = 299
    Top = 35
  end
end
