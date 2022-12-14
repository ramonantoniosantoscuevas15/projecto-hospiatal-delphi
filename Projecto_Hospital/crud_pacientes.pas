unit crud_pacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tform_pacientes = class(TForm)
    Label1: TLabel;
    edtid: TEdit;
    Label2: TLabel;
    edtnombre: TEdit;
    Label3: TLabel;
    edtapellido: TEdit;
    Label4: TLabel;
    edtcedula: TEdit;
    Label5: TLabel;
    edtedad: TEdit;
    Label6: TLabel;
    edtseguro: TEdit;
    btninsertar: TButton;
    btnactualizar: TButton;
    btneliminar: TButton;
    procedure btninsertarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
  private
    { Private declarations }
    procedure insertar;
    procedure mostrar_limpiar;
    procedure actualizar;
    procedure eliminar;
  public
    { Public declarations }
  end;

var
  form_pacientes: Tform_pacientes;

implementation

{$R *.dfm}

uses Upacientes;

{ Tform_pacientes }

procedure Tform_pacientes.actualizar;
begin
  with pacientes.query do
  begin
    active := false;
    sql.Clear;
    sql.Text := 'Update pacientes set nombre=' + quotedstr(edtnombre.Text) +
      ',apellido=' + quotedstr(edtapellido.Text) + ',cedula=' +
      quotedstr(edtcedula.Text) + ',edad=' + quotedstr(edtedad.Text) +
      ',seguro=' + quotedstr(edtseguro.Text) + 'Where id=' +
      quotedstr(edtid.Text);
    Execsql;
  end;
  showmessage('Campos Actualizados');
  close;
end;

procedure Tform_pacientes.btnactualizarClick(Sender: TObject);
begin
  actualizar;
end;

procedure Tform_pacientes.btneliminarClick(Sender: TObject);
begin
  eliminar;
end;

procedure Tform_pacientes.btninsertarClick(Sender: TObject);
begin
  insertar;
end;

procedure Tform_pacientes.eliminar;
begin
  if application.MessageBox('?Esta Seguro de Eliminar Este Archivo?',
    'Eliminar', mb_IconQuestion + mb_yesno) = Id_no then
  begin
    exit;
  end
  else
  begin
    with pacientes.query do
    begin
      sql.Clear;
      sql.Text := 'Delete from pacientes where id =' + quotedstr(edtid.Text);
      Execsql;
    end;
    showmessage('Se Elimino Un Paciente ');
    close;
  end;
end;

procedure Tform_pacientes.FormShow(Sender: TObject);
begin
  mostrar_limpiar;
end;

procedure Tform_pacientes.insertar;
begin
  if (edtnombre.Text = '') or (edtapellido.Text = '') or (edtcedula.Text = '')
    or (edtedad.Text = '') or (edtseguro.Text = '') then
  begin
    application.MessageBox('Rellene Todos Los Campos', 'Falta de Informacion',
      Mb_IconWarning + mb_ok);

  end
  else
  begin
    with pacientes.query do
    begin
      active := false;
      sql.Clear;
      sql.Text :=
        'Insert into pacientes (nombre,apellido,cedula,edad,seguro) values(' +
        quotedstr(edtnombre.Text) + ',' + quotedstr(edtapellido.Text) + ',' +
        quotedstr(edtcedula.Text) + ',' + quotedstr(edtedad.Text) + ',' +
        quotedstr(edtseguro.Text) + ')';
      Execsql;
    end;
    showmessage('Se A?adio Un Nuevo Paciente');
    close;
  end;

end;

procedure Tform_pacientes.mostrar_limpiar;
begin
  if (self.Caption = 'Insertar Datos') then
  begin
    edtid.Clear;
    edtnombre.Clear;
    edtapellido.Clear;
    edtcedula.Clear;
    edtedad.Clear;
    edtseguro.Clear;
  end
  else if (self.Caption = 'Actulizar Datos') then
  begin
    with pacientes.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Select * From pacientes where id = ' + self.Hint;
      active := true;
    end;
    edtid.Text := pacientes.query.FieldByName('id').AsString;
    edtnombre.Text := pacientes.query.FieldByName('nombre').AsString;
    edtapellido.Text := pacientes.query.FieldByName('apellido').AsString;
    edtcedula.Text := pacientes.query.FieldByName('cedula').AsString;
    edtedad.Text := pacientes.query.FieldByName('edad').AsString;
    edtseguro.Text := pacientes.query.FieldByName('seguro').AsString;
  end
  else if (self.Caption = 'Eliminar Datos') then
  begin
    edtnombre.Clear;
    edtapellido.Clear;
    edtcedula.Clear;
    edtedad.Clear;
    edtseguro.Clear;
    with pacientes.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Select * From pacientes where id = ' + self.Hint;
      active := true;
    end;
    edtid.Text := pacientes.query.FieldByName('id').AsString;

  end;

end;

end.
