program Projecto_Hospital;

uses
  Vcl.Forms,
  Uinicio in 'Uinicio.pas' {Hospital},
  Udatos in 'Udatos.pas' {Datos: TDataModule},
  Umedicos in 'Umedicos.pas' {Medicos},
  crud_medicos in 'crud_medicos.pas' {form_medicos},
  Upacientes in 'Upacientes.pas' {pacientes},
  crud_pacientes in 'crud_pacientes.pas' {form_pacientes},
  Uconsultas in 'Uconsultas.pas' {consultas},
  crud_consultas in 'crud_consultas.pas' {form_consultas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THospital, Hospital);
  Application.CreateForm(TDatos, Datos);
  Application.CreateForm(TMedicos, Medicos);
  Application.CreateForm(Tform_medicos, form_medicos);
  Application.CreateForm(Tpacientes, pacientes);
  Application.CreateForm(Tform_pacientes, form_pacientes);
  Application.CreateForm(Tconsultas, consultas);
  Application.CreateForm(Tform_consultas, form_consultas);
  Application.Run;
end.
