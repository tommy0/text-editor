object Form1: TForm1
  Left = 213
  Top = 115
  Width = 928
  Height = 502
  Caption = 'Text Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 912
    Height = 443
    Align = alClient
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object MainMenu1: TMainMenu
    object File1: TMenuItem
      Caption = 'File...'
      object New1: TMenuItem
        Caption = 'New'
        ShortCut = 16462
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = Open1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As...'
        ShortCut = 16467
        OnClick = SaveAs1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Cut1: TMenuItem
        Caption = 'Cut'
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = 'Copy'
        ShortCut = 16451
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
        ShortCut = 16470
        OnClick = Paste1Click
      end
      object Undo1: TMenuItem
        Caption = 'Undo'
        ShortCut = 16474
        OnClick = Undo1Click
      end
      object SelectAll1: TMenuItem
        Caption = 'Select All'
        ShortCut = 16449
        OnClick = SelectAll1Click
      end
    end
    object Formate1: TMenuItem
      Caption = 'Formate'
      object Font1: TMenuItem
        Caption = 'Font...'
        OnClick = Font1Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Text File(*.txt)|*.txt|All Files|*.'
    Left = 32
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File(*.txt)|*.txt|All Files|*.*'
    Left = 64
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 96
  end
end
