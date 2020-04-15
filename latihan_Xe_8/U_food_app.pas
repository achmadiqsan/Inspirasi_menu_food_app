unit U_food_app;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  F_foods, F_about, F_mycart, F_deserts, F_Drink;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Frame_foods1: TFrame_foods;
    Frame_Drink1: TFrame_Drink;
    Frame_deserts1: TFrame_deserts;
    Frame_myCart1: TFrame_myCart;
    Frame_about1: TFrame_about;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape1MouseLeave(Sender: TObject);
    procedure Shape2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape2MouseLeave(Sender: TObject);
    procedure Shape3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape3MouseLeave(Sender: TObject);
    procedure Shape1MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure Shape2MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure Shape3MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
  Frame_foods1.Visible := true;
  Frame_Drink1.Visible := false;
  Frame_deserts1.Visible := false;
  Frame_myCart1.Visible := false;
  Frame_about1.Visible := false;
  Panel3.Visible := true;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := false;
  Panel7.Visible := false;
end;

procedure TForm1.Shape1MouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  application.Terminate;
end;

procedure TForm1.Shape1MouseLeave(Sender: TObject);
begin
  Shape1.brush.Color := clred;
  Shape1.pen.Color := clred;
end;

procedure TForm1.Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Shape1.brush.Color := clmaroon;
  Shape1.pen.Color := clmaroon;
end;

procedure TForm1.Shape2MouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  form1.WindowState := wsMaximized ;
end;

procedure TForm1.Shape2MouseLeave(Sender: TObject);
begin
  Shape2.brush.Color := clsilver;
  Shape2.pen.Color := clsilver;
end;

procedure TForm1.Shape2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Shape2.brush.Color := clgray;
  Shape2.pen.Color := clgray;
end;

procedure TForm1.Shape3MouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  form1.WindowState := wsNormal;
end;

procedure TForm1.Shape3MouseLeave(Sender: TObject);
begin
  Shape3.brush.Color := cllime;
  Shape3.pen.Color := cllime;
end;

procedure TForm1.Shape3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Shape3.brush.Color := clgreen;
  Shape3.pen.Color := clgreen;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Frame_foods1.Visible := true;
  Frame_Drink1.Visible := false;
  Frame_deserts1.Visible := false;
  Frame_myCart1.Visible := false;
  Frame_about1.Visible := false;
  Panel3.Visible := true;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := false;
  Panel7.Visible := false;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Panel3.Visible := false;
  Frame_foods1.Visible := false;
  Frame_Drink1.Visible := true;
  Frame_deserts1.Visible := false;
  Frame_myCart1.Visible := false;
  Frame_about1.Visible := false;
  Panel4.Visible := true;
  Panel5.Visible := false;
  Panel6.Visible := false;
  Panel7.Visible := false;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Panel3.Visible := false;
  Panel4.Visible := false;
  Frame_foods1.Visible := false;
  Frame_Drink1.Visible := false;
  Frame_deserts1.Visible := true;
  Frame_myCart1.Visible := false;
  Frame_about1.Visible := false;
  Panel5.Visible := true;
  Panel6.Visible := false;
  Panel7.Visible := false;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  Panel3.Visible := false;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Frame_foods1.Visible := false;
  Frame_Drink1.Visible := false;
  Frame_deserts1.Visible := false;
  Frame_myCart1.Visible := true;
  Frame_about1.Visible := false;
  Panel6.Visible := true;
  Panel7.Visible := false;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  Panel3.Visible := false;
  Panel4.Visible := false;
  Panel5.Visible := false;
  Panel6.Visible := false;
  Frame_foods1.Visible := false;
  Frame_Drink1.Visible := false;
  Frame_deserts1.Visible := false;
  Frame_myCart1.Visible := false;
  Frame_about1.Visible := true;
  Panel7.Visible := true;
end;

end.
