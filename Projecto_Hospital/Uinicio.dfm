object Hospital: THospital
  Left = 0
  Top = 0
  Caption = 'Hospital'
  ClientHeight = 212
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 23
  object btnmedicos: TButton
    Left = 72
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Medicos'
    TabOrder = 0
    OnClick = btnmedicosClick
  end
  object btnpacientes: TButton
    Left = 240
    Top = 72
    Width = 83
    Height = 25
    Caption = 'Pacientes'
    TabOrder = 1
    OnClick = btnpacientesClick
  end
  object btnconsultas: TButton
    Left = 144
    Top = 136
    Width = 89
    Height = 25
    Caption = 'Consultas'
    TabOrder = 2
    OnClick = btnconsultasClick
  end
end
