object form_consultas: Tform_consultas
  Left = 0
  Top = 0
  Caption = 'Consultas'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 120
    Width = 56
    Height = 23
    Caption = 'Precio: '
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 26
    Height = 23
    Caption = 'ID: '
  end
  object Label3: TLabel
    Left = 385
    Top = 8
    Width = 123
    Height = 23
    Caption = 'Codigo Medicos'
  end
  object Label4: TLabel
    Left = 385
    Top = 131
    Width = 131
    Height = 23
    Caption = 'Codigo Pacientes'
  end
  object cbmedicos: TComboBox
    Left = 385
    Top = 40
    Width = 161
    Height = 31
    TabOrder = 0
    Text = 'Codigo medicos'
  end
  object cbpacientes: TComboBox
    Left = 376
    Top = 160
    Width = 169
    Height = 31
    TabOrder = 1
    Text = 'Codigo pacientes'
  end
  object dtp: TDateTimePicker
    Left = 360
    Top = 256
    Width = 186
    Height = 31
    Date = 44781.000000000000000000
    Time = 0.571206030093890100
    TabOrder = 2
  end
  object edtprecio: TEdit
    Left = 70
    Top = 117
    Width = 121
    Height = 31
    TabOrder = 3
  end
  object edtid: TEdit
    Left = 70
    Top = 37
    Width = 121
    Height = 31
    ReadOnly = True
    TabOrder = 4
  end
  object btninsertar: TButton
    Left = 24
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 5
    OnClick = btninsertarClick
  end
  object btnactualizar: TButton
    Left = 160
    Top = 360
    Width = 89
    Height = 25
    Caption = 'Actualuizar'
    TabOrder = 6
    OnClick = btnactualizarClick
  end
  object btneliminar: TButton
    Left = 360
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 7
    OnClick = btneliminarClick
  end
end
