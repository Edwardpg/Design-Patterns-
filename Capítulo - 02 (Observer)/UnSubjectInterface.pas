unit UnSubjectInterface;

interface

uses
  UnObserverInterface;
type
  ISubjectVideos = interface
    procedure NovoVideo(Novo: IObserverVideo);
    procedure DeletarVideo(Deletar: IObserverVideo);
    procedure Notificar(Notificar: IObserverVideo);
  end;

implementation



end.
