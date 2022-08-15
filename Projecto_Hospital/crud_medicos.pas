unit crud_medicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tform_medicos = class(TForm)
    Label1: TLabel;
    edtid: TEdit;
    Label2: TLabel;
    edtnombre: TEdit;
    Label3: TLabel;
    edtapellido: TEdit;
    Label4: TLabel;
    edtespecialidad: TEdit;
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
  form_medicos: Tform_medicos;

implementation

{$R *.dfm}

uses Umedicos;
{ Tform_medicos }

procedure Tform_medicos.actualizar;
begin
  with medicos.query do
  begin
    active := false;
    sql.Clear;
    sql.Text := 'Update medicos set nombre=' + quotedstr(edtnombre.Text) +
      ',apellido=' + quotedstr(edtapellido.Text) + ',especialidad=' +
      quotedstr(edtespecialidad.Text) + 'Where id=' + quotedstr(edtid.Text);
    Execsql;
  end;
  showmessage('Campos Actualizados');
  close;
end;

procedure Tform_medicos.btnactualizarClick(Sender: TObject);
begin
  actualizar;
end;

procedure Tform_medicos.btneliminarClick(Sender: TObject);
begin
  eliminar;
end;

procedure Tform_medicos.btninsertarClick(Sender: TObject);
begin
  insertar;
end;

procedure Tform_medicos.eliminar;
begin
  if application.MessageBox('�Esta Seguro de Eliminar Este Archivo?',
    'Eliminar', mb_IconQuestion + mb_yesno) = Id_no then
  begin
    exit;
  end
  else
  begin
    with medicos.query do
    begin
      sql.Clear;
      sql.Text := 'Delete from medicos where id =' + quotedstr(edtid.Text);
      Execsql;
    end;
    showmessage('Se Elimino Un Medico ');
    close;
  end;

end;

procedure Tform_medicos.FormShow(Sender: TObject);
begin
  mostrar_limpiar;
end;

procedure Tform_medicos.insertar;
begin
  if (edtnombre.Text = '') or (edtapellido.Text = '') or
    (edtespecialidad.Text = '') then
  begin
    application.MessageBox('Rellene Todos Los Campos', 'Falta de Informacion',
      Mb_IconWarning + mb_ok);
  end
  else
  begin
    with medicos.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Insert into medicos(nombre,apellido,especialidad) values(' +
        quotedstr(edtnombre.Text) + ',' + quotedstr(edtapellido.Text) + ',' +
        quotedstr(edtespecialidad.Text) + ')';
      Execsql;
    end;
    showmessage('Se A�adio Un Nuevo Medico');
    close;

  end;

end;

procedure Tform_medicos.mostrar_limpiar;
begin
  if (self.Caption = 'Insertar Datos') then
  begin
    edtid.Clear;
    edtnombre.Clear;
    edtapellido.Clear;
    edtespecialidad.Clear;
  end;
  if (self.Caption = 'Actualizar Datos') then
  begin
    with medicos.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Select * From medicos where id = ' + self.Hint;
      active := true;
    end;
    edtid.Text := medicos.query.FieldByName('id').AsString;
    edtnombre.Text := medicos.query.FieldByName('nombre').AsString;
    edtapellido.Text := medicos.query.FieldByName('apellido').AsString;
    edtespecialidad.Text := medicos.query.FieldByName('especialidad').AsString;
  end;
  if (self.Caption = 'Eliminar Datos') then
  begin
    edtid.Clear;
    edtnombre.Clear;
    edtapellido.Clear;
    edtespecialidad.Clear;
    with medicos.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Select * From medicos where id = ' + self.Hint;
      active := true;
    end;
    edtid.Text := medicos.query.FieldByName('id').AsString;

  end;

end;

end.
