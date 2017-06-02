unit UnitRobotArm;

interface

uses
  SysUtils, com, ExtCtrls, Classes, math, windows;

type
  TRobotArm = class
    public
      onReceive : TNotifyEvent;
      inbuf : TStringList;
      log : TStringList;
      constructor create;
      destructor destroy;
      function connect(comPort : integer) : boolean;
      function getXPos : single;
      function getYPos : single;
      function getZPos : single;
      procedure setXPos(aPos : single);
      procedure setYPos(aPos : single);
      procedure setZPos(aPos : single);
      procedure setStepperPower(enable : boolean);
      procedure setFanPower(enable : boolean);
      procedure gotoPos(x, y, z : single);
      procedure gripper(b : boolean; duration : integer);

      procedure writeCommand(const s : string);
    private
      com : TCom;
      timer : TTimer;
      outbuf : TStringList;
      xmm : single;
      ymm : single;
      zmm : single;
      canWriteCommand : boolean;
      procedure onTimer(Sender : TObject);
      procedure addPhraseToInbuf(s : string);
      function length(a, b, c : single) : single;
  end;

implementation

constructor TRobotArm.create;
begin
  com := TCom.Create(nil);
  timer := TTimer.Create(nil);
  timer.Interval := 20;
  timer.OnTimer := onTimer;
  timer.Enabled := false;
  outbuf := TStringList.Create;
  inbuf := TStringList.Create;
  log := TStringList.Create;
  canWriteCommand := true;
end;

destructor TRobotArm.destroy;
begin
  com.Close;
  com.Destroy;
  timer.Enabled := false;
  timer.Destroy;
  outbuf.clear;
  outbuf.free;
  inbuf.clear;
  inbuf.free;
  log.clear;
  log.free;
end;

function TRobotArm.connect(comPort : integer) : boolean;
begin
  com.Baud := 9600;
  Result := com.Open(comPort, RTS_ENABLED, DTR_DISABLED);
  if Result
    then timer.Enabled := true;
end;

function TRobotArm.getXPos : single;  
begin
  Result := xmm;
end;

function TRobotArm.getYPos : single;   
begin
  Result := ymm;
end;

function TRobotArm.getZPos : single;     
begin
  Result := zmm;
end;

procedure TRobotArm.setXPos(aPos : single); 
begin
  xmm := aPos;
end;

procedure TRobotArm.setYPos(aPos : single);  
begin
  ymm := aPos;
end;

procedure TRobotArm.setZPos(aPos : single);     
begin
  zmm := aPos;
end;

procedure TRobotArm.setStepperPower(enable : boolean);  
begin
  if enable
    then writeCommand('M17')
    else writeCommand('M18');
end;

procedure TRobotArm.setFanPower(enable : boolean); 
begin
  if enable
    then writeCommand('M106')
    else writeCommand('M107');
end;

procedure TRobotArm.gotoPos(x, y, z : single);
var
  len, v : single;
begin
  len := length(x-xmm, y-ymm, z-zmm);
  xmm := x;
  ymm := y;
  zmm := z;
  v := sqrt(len) * 10;
  writeCommand('G1 X' + floatToStr(xmm) + ' Y' + floatToStr(ymm) + ' Z' + floatToStr(zmm) {+ ' F' + floatToStr(v)});
end;

procedure TRobotArm.writeCommand(const s : string);
begin
  outbuf.Add(s);
  log.Add(s);
  onTimer(self);
end;

procedure TRobotArm.onTimer(Sender : TObject);
var
  s : string;
  active : boolean;
begin
  repeat
    active := false;
    if (outbuf.Count > 0) and canWriteCommand then
      begin
        s := outbuf.Strings[0];
        com.writeLn(s);
        outbuf.Delete(0);
        active := true;
        canWriteCommand := false;
      end;
    if com.InBufUsed > 0
      then
        begin
          com.read(s, com.InBufUsed);
          addPhraseToInbuf(s);
          if inbuf.Count > 0 then
            begin
              if pos('ok', inbuf.Strings[0]) = 1
                then canWriteCommand := true;
            end;
          active := true;
          if Assigned(onReceive)
            then onReceive(self);
        end;
  until not active;
end;

procedure TRobotArm.addPhraseToInbuf(s : string);
var
  first, last : integer;
  cut : string;
begin
  while s <> '' do
    begin
      first := 0;
      last := pos(#13#10, s);
      cut := copy(s, first, last - 1);
      s := copy(s, last + 2, 255);
      if (cut <> '')
        then inbuf.Add(cut);
    end;
end;

function TRobotArm.length(a, b, c : single) : single;
begin
  Result := sqrt(a*a + b*b + c*c);
end;

procedure TRobotArm.gripper(b : boolean; duration : integer);
begin
  //duration e.g. 50
  if b
    then writeCommand('M3 T' + inttostr(duration))
    else writeCommand('M5 T' + inttostr(duration));
end;

end.
 