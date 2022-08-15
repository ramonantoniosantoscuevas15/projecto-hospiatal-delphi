unit Uconsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  Tconsultas = class(TForm)
    DBGrid1: TDBGrid;
    query: TFDQuery;
    DataSource1: TDataSource;
    btninsertar: TButton;
    btnactualizar: TButton;
    btneliminar: TButton;
    btncerrar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btninsertarClick(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
  private
    { Private declarations }
    procedure mostrar;
  public
    { Public declarations }

  end;

var
  consultas: Tconsultas;

implementation

{$R *.dfm}

uses Udatos, crud_consultas;

{ TForm1 }

procedure Tconsultas.btnactualizarClick(Sender: TObject);
begin
  form_consultas.Caption := 'Actualizar Datos';
  form_consultas.Hint := DBGrid1.Fields[0].Text;
  form_consultas.ShowModal;
  mostrar;
end;

procedure Tconsultas.btncerrarClick(Sender: TObject);
begin
  close;
end;

procedure Tconsultas.btneliminarClick(Sender: TObject);
begin
  form_consultas.Caption := 'Eliminar Datos';
  form_consultas.Hint := DBGrid1.Fields[0].Text;
  form_consultas.ShowModal;
  mostrar;

end;

procedure Tconsultas.btninsertarClick(Sender: TObject);
begin
  form_consultas.Caption := 'Insertar Datos';
  form_consultas.ShowModal;
  mostrar;
end;

procedure Tconsultas.FormShow(Sender: TObject);
begin
  mostrar;
end;

procedure Tconsultas.mostrar;
begin
  with query do
  begin
    active := false;
    sql.Clear;
    sql.Text :=
      'select id,idmedico Codigo_medico, idpaciente codigo_paciente, fecha, precio  from consultas';
    active := true;
  end;
end;

end.
