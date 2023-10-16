program ActoriousClient;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  Main in 'Main.pas' {MainForm: TWebForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
