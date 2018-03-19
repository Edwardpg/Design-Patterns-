unit UnCombustivel;

interface

type
  TCombustivel = class
    procedure CombustivelPilotoAutomatico;
    procedure SemCombustivelPilotoAutomatico;
  end;

implementation

{ TCombustivel }

procedure TCombustivel.CombustivelPilotoAutomatico;
begin
  Writeln('O carro possui combust�vel suficiente para o piloto autom�tico');
end;

procedure TCombustivel.SemCombustivelPilotoAutomatico;
begin
  Writeln('Falha carro n�o possui combust�vel suficiente para o piloto autom�tico');
end;

end.
