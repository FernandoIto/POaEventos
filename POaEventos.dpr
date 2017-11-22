program POaEventos;

uses
  Forms,
  UnitViewPrincipal in 'UnitViewPrincipal.pas' {Form1},
  UnitControle in 'UnitControle.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
