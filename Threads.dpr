program Threads;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {uFrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuFrmMain, uFrmMain);
  Application.Run;
end.
