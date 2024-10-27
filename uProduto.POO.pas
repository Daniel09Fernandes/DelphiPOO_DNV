unit uProduto.POO;

interface

uses
  Vcl.Dialogs,  uProduto.Abstrato;

type
  TTipoProduto = (tpNacional, tpImportado);

 TProduto = class(TProdutoBase)
 strict private
    FNome: String;
    FPreco: Double;
  private
    FClassificacao: string;
 strict protected
     FTipoProduto: TTipoProduto;
     FDisponivelVenda : Boolean;
   // property TipoProduto: TTipoProduto read FTipoProduto write FTipoProduto;
  public
    property Nome: String read FNome write FNome;
    property Preco: Double read FPreco write FPreco;
    property Classificacao: string read FClassificacao write FClassificacao;

    procedure ColocarParaVenda; overload;
    procedure ColocarParaVenda(p: string); overload;
    procedure ColocarParaVenda(p: boolean); overload;

    procedure ColocarComoIndisponivelParaVenda; virtual;

    function ProdutoEstaDisponivelParaVenda:Boolean;

    procedure Classificar( AClassificacao: string); override;
    function BuscarPrecoEntrada: Double; override;

    constructor Create();

  end;

  TProdutoImportado = class sealed(TProduto)
    public
      property TipoProduto : TTipoProduto read FTipoProduto write FTipoProduto;
      function EsteProdutoEImportado: Boolean;
      procedure ColocarComoIndisponivelParaVenda; override;
      constructor Create();
  end;

  TProdutoNacional = class(TProduto)
    public
      function EsteProdutoENacional: Boolean;
      procedure ColocarComoIndisponivelParaVenda; override;
      constructor Create();
  end;

  TProduto2 = class(TProdutoBase)
  private


  public
    procedure Classificar( AClassificacao: string); override;
    function BuscarPrecoEntrada: Double; override;
  end;

implementation

{ TProduto }
uses StrUtils, System.SysUtils;

function TProduto.BuscarPrecoEntrada: Double;
begin
  Result := 10;
end;

procedure TProduto.Classificar(AClassificacao: string);
begin
  inherited;
  FClassificacao := AClassificacao;
end;

procedure TProduto.ColocarComoIndisponivelParaVenda;
begin
  ShowMessage('Disparando a TProduto.ColocarComoIndisponivelParaVenda Virtual');
  FDisponivelVenda := False;
end;

procedure TProduto.ColocarParaVenda;
begin
  FDisponivelVenda := True;
end;

procedure TProduto.ColocarParaVenda(p: boolean);
begin
   FDisponivelVenda := p;
end;

procedure TProduto.ColocarParaVenda(p: string);
begin
   FDisponivelVenda := not (p.trim.isEmpty);
end;

constructor TProduto.Create();
begin
  FTipoProduto := tpNacional;
end;

function TProduto.ProdutoEstaDisponivelParaVenda: Boolean;
begin
  Result := FDisponivelVenda;
end;

{ TProdutoImportado }

procedure TProdutoImportado.ColocarComoIndisponivelParaVenda;
begin

  ShowMessage('Disparando a TProdutoImportado.ColocarComoIndisponivelParaVenda override');
   inherited;
  FDisponivelVenda := False;
end;

constructor TProdutoImportado.Create();
begin
   TipoProduto := tpImportado;
end;

function TProdutoImportado.EsteProdutoEImportado: Boolean;
begin
  Result := true;
end;

{ TProdutoNacional }

procedure TProdutoNacional.ColocarComoIndisponivelParaVenda;
begin
 // inherited;
  ShowMessage('Disparando a TProdutoNacional.ColocarComoIndisponivelParaVenda override');
  FDisponivelVenda := False;
end;

constructor TProdutoNacional.Create;
begin
   FTipoProduto := tpNacional;
end;

function TProdutoNacional.EsteProdutoENacional: Boolean;
begin
  Result := true;
end;

{ TProduto2 }

function TProduto2.BuscarPrecoEntrada: Double;
begin
  Result := 20;
end;

procedure TProduto2.Classificar(AClassificacao: string);
begin
  inherited;
  ShowMessage(AClassificacao);
end;

end.
