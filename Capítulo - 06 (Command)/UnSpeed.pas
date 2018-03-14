unit UnSpeed;

interface

uses
  UnCommandInterface;

type
  TSpeedOfCar = class
    Speed: Integer;
    procedure HighSpeed;
    procedure MediuSpeed;
    procedure LowSpeed;
    procedure off;
    constructor Create;
  end;

var
    MySpeed : TSpeedOfCar;
    Velocimentro : Integer;


implementation

{ TSpeedOfCar }

constructor TSpeedOfCar.Create;
begin
  off;
end;

procedure TSpeedOfCar.HighSpeed;
begin
  Speed := 3;
  Writeln('Carro est� extremamente r�pido, exatamente com 100 Km/h');
end;

procedure TSpeedOfCar.LowSpeed;
begin
  Speed := 1;
  Writeln('Carro est� bem devagar, exatamente com 20 Km/h');
end;

procedure TSpeedOfCar.MediuSpeed;
begin
  Speed := 2;
  Writeln('Carro est� em uma velocidade m�dia, exatamente com 50 km/h');
end;

procedure TSpeedOfCar.off;
begin
  Speed := 0;
  Writeln('Carro est� parado, exatamente com 0 Km/h');
end;

end.
