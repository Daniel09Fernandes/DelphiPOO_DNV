program DNV_POO;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2},
  uProduto.POO in 'uProduto.POO.pas',
  uProduto.Hernaca.Extendida.POO in 'uProduto.Hernaca.Extendida.POO.pas',
  uProduto.Abstrato in 'uProduto.Abstrato.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
