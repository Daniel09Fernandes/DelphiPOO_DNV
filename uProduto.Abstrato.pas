unit uProduto.Abstrato;

interface

  Type
    TProdutoBase = class abstract
      procedure Classificar( AClassificacao: string); virtual; abstract;
      function BuscarPrecoEntrada: Double; virtual; abstract;
    end;

implementation

{ TProdutoBase }


end.
