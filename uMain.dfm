object uFrmMain: TuFrmMain
  Left = 0
  Top = 0
  Caption = 'Threads'
  ClientHeight = 206
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object lbltimetask: TLabel
    Left = 0
    Top = 183
    Width = 446
    Height = 23
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    Alignment = taCenter
    Caption = 'TimeTasks'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 137
    ExplicitWidth = 87
  end
  object btnTask: TButton
    Left = 25
    Top = 109
    Width = 125
    Height = 63
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'TTask'
    TabOrder = 0
    OnClick = btnTaskClick
  end
  object btnPadrao: TButton
    Left = 161
    Top = 37
    Width = 125
    Height = 63
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Sleep'
    TabOrder = 1
    OnClick = btnPadraoClick
  end
  object btnITask: TButton
    Left = 161
    Top = 109
    Width = 125
    Height = 63
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'ITask'
    TabOrder = 2
    OnClick = btnITaskClick
  end
  object btnifuture: TButton
    Left = 297
    Top = 109
    Width = 125
    Height = 63
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'IFuture'
    TabOrder = 3
    OnClick = btnifutureClick
  end
  object cbt1: TCheckBox
    Left = 325
    Top = 39
    Width = 97
    Height = 17
    Caption = 'iFTasks T1'
    Color = clRed
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object cbt3: TCheckBox
    Left = 325
    Top = 85
    Width = 97
    Height = 17
    Caption = 'iFTasks T3'
    Color = clRed
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object cbt2: TCheckBox
    Left = 325
    Top = 62
    Width = 97
    Height = 17
    Caption = 'iFTasks T2'
    Color = clRed
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object TimerIFuture: TTimer
    Enabled = False
    OnTimer = TimerIFutureTimer
    Left = 96
    Top = 56
  end
end
