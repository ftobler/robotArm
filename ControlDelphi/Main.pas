unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, UnitRobotArm, Spin;

type


  TForm1 = class(TForm)
    Panel1: TPanel;
    Button10: TButton;
    Button11: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button19: TButton;
    Button12: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Panel2: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    EditCoarse: TEdit;
    EditFine: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    Memo1: TMemo;
    Button9: TButton;
    Memo2: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Button25: TButton;
    Edit2: TEdit;
    Button27: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
  private
    { Private declarations }
    robot : TRobotArm;
  public
    { Public declarations }

    procedure onReceive(Sender : TObject);
    procedure status(const text : String);
    procedure updatePosStatus;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R BUTTON.RES}

procedure TForm1.FormCreate(Sender: TObject);
begin
  robot := TRobotArm.Create;
  robot.onReceive := onReceive;
  status('ready');
  updatePosStatus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if robot.connect(strtoint(Edit1.text))
    then status('com open')
    else status('cannot open com');
  sleep(500);
  robot.setStepperPower(false);
  robot.gotoPos(0, 120, 120);
  robot.setStepperPower(true);
end;

procedure TForm1.status(const text : String);
begin
  Label1.Caption := text;
end;

procedure TForm1.updatePosStatus;
begin
  Label5.Caption := 'X' + floatToStr(robot.getXPos) + ' Y' + floatToStr(robot.getYPos) + ' Z' + floatToStr(robot.getZPos);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  robot.setStepperPower(true);
  updatePosStatus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  robot.setStepperPower(false);
  updatePosStatus;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  robot.setFanPower(true);
  updatePosStatus;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  robot.setFanPower(false);
  updatePosStatus;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  robot.gotoPos(0, 120, 120);
  updatePosStatus;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  robot.gotoPos(0, 100, 0);
  updatePosStatus;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to Memo1.Lines.Count - 1 do
    begin
      if Memo1.Lines.Strings[i] <> ''
        then robot.writeCommand(Memo1.Lines.Strings[i]);
    end;
  updatePosStatus;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos + StrToFloat(EditCoarse.text), robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos - StrToFloat(EditCoarse.text), robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos, robot.getZPos + StrToFloat(EditCoarse.text));
  updatePosStatus;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos, robot.getZPos - StrToFloat(EditCoarse.text));
  updatePosStatus;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos + StrToFloat(EditCoarse.text), robot.getYPos, robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos - StrToFloat(EditCoarse.text), robot.getYPos, robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.onReceive(Sender : TObject);
var
  s : string;
begin
  while (robot.log.Count > 0) do
    begin
      s := robot.log.strings[0];
      robot.log.Delete(0);
      memo2.Lines.Add('log: ' + s);
    end;
  while (robot.inbuf.Count > 0) do
    begin
      s := robot.inbuf.strings[0];
      robot.inbuf.Delete(0);
      memo2.Lines.Add('rx: ' + s);
    end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  robot.gotoPos(0, 40, 70);
  updatePosStatus;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  robot.gotoPos(0, 19.5, 134);
  updatePosStatus;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  robot.gripper(true, SpinEdit1.value);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  robot.gripper(false, SpinEdit2.value);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos, robot.getZPos + StrToFloat(EditFine.text));
  updatePosStatus;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos - StrToFloat(EditFine.text), robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos + StrToFloat(EditFine.text), robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos, robot.getYPos, robot.getZPos - StrToFloat(EditFine.text));
  updatePosStatus;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos + StrToFloat(EditFine.text), robot.getYPos, robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  robot.gotoPos(robot.getXPos - StrToFloat(EditFine.text), robot.getYPos, robot.getZPos);
  updatePosStatus;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  robot.writeCommand(Edit2.text);
  updatePosStatus;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
  robot.writeCommand(Edit2.SelText);
  updatePosStatus;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  memo1.lines.add('G1 X' + floatToStr(robot.getXPos) + ' Y' + floatToStr(robot.getYPos) + ' Z' + floatToStr(robot.getZPos));
end;

end.
