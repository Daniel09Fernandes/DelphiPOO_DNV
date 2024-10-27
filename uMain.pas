unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uProduto.POO, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    published
      procedure Memo1Change(Sender: TObject);
  private
    FProduto : TProduto;
    procedure ColocarParaVenda(var AProduto :TProduto);
    procedure TesteDeValor(const AValor: Double);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  //Objeto          //Class
 // FProduto      := TProduto.Create;
  var FProduto1 := TProduto.Create;
  try
//    FProduto.Nome  := 'Bala de goma';
//    ColocarParaVenda(FProduto);
//
//    var Valor: Double := 2.30;
//    TesteDeValor(Valor);
//
//    FProduto.Preco := Valor;
//    Memo1.Lines.Add(format('Instancia de Valor:   %p',[@Valor] ));
//    Memo1.Lines.Add('Preco: ' + FProduto.Preco.ToString);
//    FProduto.ColocarParaVenda;
//    if FProduto.ProdutoEstaDisponivelParaVenda then
//      FProduto.ColocarComoIndisponivelParaVenda;

//    FProduto1.Nome := 'Chiclete';
//    FProduto1.Preco := 0.50;
//    ColocarParaVenda(FProduto1);
//
//    Memo1.Lines.Add(format('Instancia de FProduto1:   %p',[@FProduto1] ))
//    FProduto1.ColocarParaVenda;
//    if FProduto1.ProdutoEstaDisponivelParaVenda then
//      FProduto1.ColocarComoIndisponivelParaVenda;

       FProduto1.Classificar('oiii');

        var Prod2 := TProduto2.Create;

        prod2.Classificar('Ola 2');

        prod2.free;

  // var FProdutoImportado := TProdutoImportado.create;
   var FProdutoImportado  := TProdutoNacional.create;
   FProdutoImportado.Nome := 'Teste de importado';
   FProdutoImportado.ColocarComoIndisponivelParaVenda;
   FProdutoImportado.ProdutoEstaDisponivelParaVenda;
   FProdutoImportado.ColocarParaVenda('Sim');
   FProdutoImportado.ColocarParaVenda();
   FProdutoImportado.ColocarParaVenda(True);
   FProdutoImportado.ProdutoEstaDisponivelParaVenda;
  // var Tp :=  FProdutoImportado.TipoProduto;

 //  FProdutoImportado.EsteProdutoEImportado;
   FProdutoImportado.Free;

  finally

  //  FProduto.Free;
  //  FProduto1.Free;
  end;

end;

procedure TForm2.Memo1Change(Sender: TObject);
begin
//
end;

procedure TForm2.TesteDeValor(const AValor: Double);
begin
  ShowMessage(AValor.ToString);

   Memo1.Lines.Add(format('Instancia de AValor:   %p',[@AValor] ))
end;

procedure TForm2.ColocarParaVenda(var AProduto :TProduto);
begin
  AProduto.ColocarParaVenda;
  if AProduto.ProdutoEstaDisponivelParaVenda then
      AProduto.ColocarComoIndisponivelParaVenda;
end;

end.
