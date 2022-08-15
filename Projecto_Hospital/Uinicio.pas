unit Uinicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  THospital = class(TForm)
    btnmedicos: TButton;
    btnpacientes: TButton;
    btnconsultas: TButton;
    procedure btnmedicosClick(Sender: TObject);
    procedure btnpacientesClick(Sender: TObject);
    procedure btnconsultasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Hospital: THospital;

implementation

{$R *.dfm}

uses Umedicos, Upacientes, Uconsultas;

procedure THospital.btnconsultasClick(Sender: TObject);
begin
  consultas.ShowModal;
end;

procedure THospital.btnmedicosClick(Sender: TObject);
begin
  medicos.ShowModal;
end;

procedure THospital.btnpacientesClick(Sender: TObject);
begin
  pacientes.ShowModal;
end;

end.
