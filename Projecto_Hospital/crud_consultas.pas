unit crud_consultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tform_consultas = class(TForm)
    cbmedicos: TComboBox;
    cbpacientes: TComboBox;
    dtp: TDateTimePicker;
    Label1: TLabel;
    edtprecio: TEdit;
    Label2: TLabel;
    edtid: TEdit;
    btninsertar: TButton;
    btnactualizar: TButton;
    btneliminar: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btninsertarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);

  private
    { Private declarations }
    procedure consulta1;
    procedure consulta2;
    procedure insertar;
    procedure mostrar_limpiar;
    procedure actualizar;
    procedure eliminar;
  public
    { Public declarations }
  end;

var
  form_consultas: Tform_consultas;

implementation

{$R *.dfm}

uses Uconsultas;

{ Tform_consultas }

procedure Tform_consultas.actualizar;
var
  dp: string;
begin
  dp := DateToStr(dtp.Date);
  if cbmedicos.ItemIndex = -1 then
  begin
    application.MessageBox('Seleccione el codigo medicos',
      'Falta de Informacion', Mb_IconWarning + mb_ok);
    cbmedicos.SetFocus;
    exit;
  end
  else if cbpacientes.ItemIndex = -1 then
  begin
    application.MessageBox('Seleccione el codigo pacientes',
      'Falta de Informacion', Mb_IconWarning + mb_ok);
    cbpacientes.SetFocus;
    exit;
  end
  else if (edtprecio.Text <> '') then
  begin
    with consultas.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Update consultas set idmedico= ' + cbmedicos.Items
        [cbmedicos.ItemIndex] + ',idpaciente=' + cbpacientes.Items
        [cbpacientes.ItemIndex] + ',fecha=' + quotedstr(dp) + ',precio=' +
        quotedstr(edtprecio.Text) + 'where id =' + quotedstr(edtid.Text);
      Execsql;
    end;
    showmessage('Campos Actualizados');
    close;
  end;

end;

procedure Tform_consultas.btnactualizarClick(Sender: TObject);
begin
  actualizar;
end;

procedure Tform_consultas.btneliminarClick(Sender: TObject);
begin
  eliminar;
end;

procedure Tform_consultas.btninsertarClick(Sender: TObject);
begin
  insertar;
end;

procedure Tform_consultas.consulta1;
begin
  consultas.query.sql.Clear;
  consultas.query.sql.Add('select id from medicos');
  consultas.query.Open();
  while not consultas.query.Eof do
  begin
    cbmedicos.Items.Add(consultas.query.FieldByName('id').AsString);

    consultas.query.Next;
  end;
end;

procedure Tform_consultas.consulta2;
begin
  consultas.query.sql.Clear;
  consultas.query.sql.Add('select id from pacientes');
  consultas.query.Open();
  while not consultas.query.Eof do
  begin
    cbpacientes.Items.Add(consultas.query.FieldByName('id').AsString);

    consultas.query.Next;
  end;

end;

procedure Tform_consultas.eliminar;
begin
  if application.MessageBox('?Esta Seguro de Eliminar Este Archivo?',
    'Eliminar', mb_IconQuestion + mb_yesno) = Id_no then
  begin
    exit;
  end
  else
  begin
    with consultas.query do
    begin
      sql.Clear;
      sql.Text := 'Delete from consultas where id =' + quotedstr(edtid.Text);
      Execsql;
    end;
    showmessage('Se Elimino Una Consulta ');
    close;
  end;
end;

procedure Tform_consultas.FormActivate(Sender: TObject);
begin
  consulta1;
  consulta2;
end;

procedure Tform_consultas.FormShow(Sender: TObject);
begin
  mostrar_limpiar;
end;

procedure Tform_consultas.insertar;
var
  dp: string;
begin
  dp := DateToStr(dtp.Date);
  if cbmedicos.ItemIndex = -1 then
  begin
    application.MessageBox('Seleccione el codigo medicos',
      'Falta de Informacion', Mb_IconWarning + mb_ok);
    cbmedicos.SetFocus;
    exit;
  end
  else if cbpacientes.ItemIndex = -1 then
  begin
    application.MessageBox('Seleccione el codigo pacientes',
      'Falta de Informacion', Mb_IconWarning + mb_ok);
    cbpacientes.SetFocus;
    exit;
  end
  else if (edtprecio.Text <> '') then
  begin
    with consultas.query do
    begin
      active := false;
      sql.Clear;
      sql.Text :=
        'Insert into consultas(idmedico,idpaciente,fecha,precio) values(' +
        cbmedicos.Items[cbmedicos.ItemIndex] + ',' + cbpacientes.Items
        [cbpacientes.ItemIndex] + ',' + quotedstr(dp) + ',' +
        quotedstr(edtprecio.Text) + ')';
      Execsql;
    end;
    showmessage('Se a?adio una Nueva Consulta');
    close;
  end;

end;

procedure Tform_consultas.mostrar_limpiar;
begin
  if (self.Caption = 'Insertar Datos') then
  begin
    edtid.Clear;
    edtprecio.Clear;
    cbmedicos.Clear;
    cbpacientes.Clear;

  end
  else if (self.Caption = 'Actualizar Datos') then
  begin
    cbmedicos.Clear;
    cbpacientes.Clear;
    with consultas.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Select * from consultas Where id =' + self.Hint;
      active := true;
    end;
    edtid.Text := consultas.query.FieldByName('id').AsString;
    edtprecio.Text := consultas.query.FieldByName('precio').AsString;

  end
  else if (self.Caption = 'Eliminar Datos') then
  begin
    cbmedicos.Clear;
    cbpacientes.Clear;
    with consultas.query do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'Select * from consultas Where id =' + self.Hint;
      active := true;
    end;
    edtid.Text := consultas.query.FieldByName('id').AsString;
  end;

end;

end.
