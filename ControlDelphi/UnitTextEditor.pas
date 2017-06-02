unit UnitTextEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormTextEditor = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Panel1Resize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    okClick : boolean;
  public
    { Public declarations }
    function execute(sl : TStringList) : boolean;
  end;

var
  FormTextEditor: TFormTextEditor;

implementation

{$R *.dfm}

procedure TFormTextEditor.Panel1Resize(Sender: TObject);
begin
  panel2.Left := (Panel1.Width - panel2.Width) div 2;
end;

function TFormTextEditor.execute(sl : TStringList) : boolean;
begin
  okClick := false;
  memo1.Lines.Assign(sl);
  showmodal;

  if okClick
    then sl.Text := memo1.Text;

  Result := okClick;
end;

procedure TFormTextEditor.Button1Click(Sender: TObject);
begin
  okClick := true;
  close;
end;

procedure TFormTextEditor.Button2Click(Sender: TObject);
begin
  close;
end;

end.
