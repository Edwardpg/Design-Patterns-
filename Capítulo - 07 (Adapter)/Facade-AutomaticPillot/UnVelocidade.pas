unit UnVelocidade;

interface

type
  TVelocidade = class
    procedure OnVelocidadePilotoAutomatico;
    procedure OffVelocidadePilotoAutomatico;
  end;

implementation

{ TVelocidade }

procedure TVelocidade.OffVelocidadePilotoAutomatico;
begin
  Writeln('Desligando piloto autom�tico e sua velocidade m�dia....');
end;

procedure TVelocidade.OnVelocidadePilotoAutomatico;
begin
  Writeln('Ligando piloto automatico e mantendo sua velocidade m�dia....');
end;

end.
