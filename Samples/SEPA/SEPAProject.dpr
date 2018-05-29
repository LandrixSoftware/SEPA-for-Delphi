program SEPAProject;

uses
  Vcl.Forms,
  SEPAUnit1 in 'SEPAUnit1.pas' {Form1},
  intf.SEPATypes in '..\..\intf.SEPATypes.pas',
  intf.SEPA in '..\..\intf.SEPA.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
