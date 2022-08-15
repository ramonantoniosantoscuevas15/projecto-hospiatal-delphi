object form_medicos: Tform_medicos
  Left = 0
  Top = 0
  Caption = 'form_medicos'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 17
    Height = 23
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 68
    Height = 23
    Caption = 'Nombre '
  end
  object Label3: TLabel
    Left = 8
    Top = 176
    Width = 62
    Height = 23
    Caption = 'Apellido'
  end
  object Label4: TLabel
    Left = 8
    Top = 256
    Width = 93
    Height = 23
    Caption = 'Especialidad'
  end
  object edtid: TEdit
    Left = 31
    Top = 21
    Width = 121
    Height = 31
    Color = clActiveBorder
    ReadOnly = True
    TabOrder = 0
  end
  object edtnombre: TEdit
    Left = 82
    Top = 93
    Width = 121
    Height = 31
    TabOrder = 1
  end
  object edtapellido: TEdit
    Left = 82
    Top = 168
    Width = 121
    Height = 31
    TabOrder = 2
  end
  object edtespecialidad: TEdit
    Left = 107
    Top = 253
    Width = 121
    Height = 31
    TabOrder = 3
  end
  object btninsertar: TButton
    Left = 8
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Insetar'
    TabOrder = 4
    OnClick = btninsertarClick
  end
  object btnactualizar: TButton
    Left = 168
    Top = 352
    Width = 89
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 5
    OnClick = btnactualizarClick
  end
  object btneliminar: TButton
    Left = 384
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 6
    OnClick = btneliminarClick
  end
end
