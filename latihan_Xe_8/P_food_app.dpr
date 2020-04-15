program P_food_app;

uses
  Vcl.Forms,
  U_food_app in 'U_food_app.pas' {Form1},
  F_foods in 'F_foods.pas' {Frame_foods: TFrame},
  F_Drink in 'F_Drink.pas' {Frame_Drink: TFrame},
  F_deserts in 'F_deserts.pas' {Frame_deserts: TFrame},
  F_mycart in 'F_mycart.pas' {Frame_myCart: TFrame},
  F_about in 'F_about.pas' {Frame_about: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
