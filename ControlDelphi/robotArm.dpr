program robotArm;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  UnitRobotArm in 'UnitRobotArm.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'RobotArm control';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
