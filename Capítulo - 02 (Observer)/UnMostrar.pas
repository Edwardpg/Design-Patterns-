unit UnMostrar;

interface

uses
  System.SysUtils, UnObserverInterface, UnSubjectInterface, UnTelaInterface,
  UnVideo;

type
  TMostrar = class(TInterfacedObject, IObserverVideo, ITela)
  private
    FNovo: Integer;
    FDeletar: Integer;
    FNotificar: Integer;
  public
    function atualizacoes(Novo, Deletar, Notificar: Integer): Boolean;
    function tela: string;
  end;

implementation

{ TMostrar }

function TMostrar.atualizacoes(Novo, Deletar, Notificar: Integer): Boolean;
begin
  FNovo := Novo;
  FDeletar := Deletar;
  FNotificar := Notificar;
  tela;
  Result := True;
end;

function TMostrar.tela: string;
begin
  Result := (Format('Novos videos: %d' + #13#10 + 'Deletados: %d' + #13#10 +
    'Notifica��es: %d', [FNovo, FDeletar, FNotificar]));

  Writeln(Result);
  Readln;
end;

end.
