object FormCNTMerge: TFormCNTMerge
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Merge 2 Contacts'
  ClientHeight = 687
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 688
    Height = 16
    Align = alTop
    Caption = 'Contact to Keep'
    ExplicitWidth = 90
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 237
    Width = 688
    Height = 16
    Align = alTop
    Caption = 'Contact to Destroy'
    ExplicitWidth = 105
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 224
    Width = 694
    Height = 10
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 3
    ExplicitTop = 211
    ExplicitWidth = 684
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 101
    Width = 688
    Height = 120
    Align = alTop
    DataSource = DSCNT1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 259
    Width = 688
    Height = 262
    Align = alClient
    DataSource = DSCNT2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 688
    Height = 70
    Align = alTop
    Enabled = False
    Lines.Strings = (
      
        'Purpose of this function: Replace Contact to Destroy by Contact ' +
        'To Keep, and Delete Contact to Destroy from '
      'Contact List.'
      ''
      
        '  - All Contact to destroy used in Invoice will be replace by Co' +
        'ntact to Keep. ')
    TabOrder = 2
  end
  object Memo2: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 574
    Width = 688
    Height = 110
    Align = alBottom
    Lines.Strings = (
      '')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 527
    Width = 688
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    object Button2: TButton
      AlignWithMargins = True
      Left = 279
      Top = 4
      Width = 405
      Height = 33
      Align = alClient
      Caption = 'Merge Contact'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 269
      Height = 33
      Align = alLeft
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object TCNTMIX: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CNT1'
        DataType = ftInteger
      end
      item
        Name = 'CNT2'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 480
    Top = 104
    object TCNTMIXCNT1: TIntegerField
      FieldName = 'CNT1'
    end
    object TCNTMIXCNT2: TIntegerField
      FieldName = 'CNT2'
    end
  end
  object TCNT1: TFDTable
    IndexFieldNames = 'CNT_FIRSTNAME'
    Connection = DM.Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.CNT'
    TableName = 'BAB.dbo.CNT'
    Left = 480
    Top = 32
    object TCNT1CNT_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNT_ID'
      Origin = 'CNT_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object TCNT1CNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'FirstName'
      DisplayWidth = 20
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object TCNT1CNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      DisplayWidth = 15
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
      Size = 15
    end
    object TCNT1CNT_ADDRESS: TWideStringField
      DisplayLabel = 'Address'
      DisplayWidth = 30
      FieldName = 'CNT_ADDRESS'
      Origin = 'CNT_ADDRESS'
      FixedChar = True
      Size = 70
    end
    object TCNT1CNT_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 25
      FieldName = 'CNT_COMMENT'
      Origin = 'CNT_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object DSCNT1: TDataSource
    DataSet = TCNT1
    Left = 552
    Top = 32
  end
  object DSCNTMIX: TDataSource
    DataSet = TCNTMIX
    Left = 552
    Top = 104
  end
  object TCNT2: TFDTable
    IndexFieldNames = 'CNT_FIRSTNAME'
    Connection = DM.Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.CNT'
    TableName = 'BAB.dbo.CNT'
    Left = 480
    Top = 176
    object TCNT2CNT_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNT_ID'
      Origin = 'CNT_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object TCNT2CNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'FirstName'
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object TCNT2CNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
      Size = 15
    end
    object TCNT2CNT_ADDRESS: TWideStringField
      DisplayLabel = 'Address'
      DisplayWidth = 30
      FieldName = 'CNT_ADDRESS'
      Origin = 'CNT_ADDRESS'
      FixedChar = True
      Size = 70
    end
    object TCNT2CNT_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 15
      FieldName = 'CNT_COMMENT'
      Origin = 'CNT_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object DSCNT2: TDataSource
    DataSet = TCNT2
    Left = 552
    Top = 176
  end
end
