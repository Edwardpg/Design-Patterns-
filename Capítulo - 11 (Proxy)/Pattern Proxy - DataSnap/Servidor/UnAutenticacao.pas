unit UnAutenticacao;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    BtnLogar: TBitBtn;
    EdPorta: TEdit;
    LbSelecionePort: TLabel;
    LbServidor: TLabel;
    procedure BtnLogarClick(Sender: TObject);
  private
    procedure ReadAndStart;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  ServerContainerUnit1;

{$R *.dfm}

procedure TFormPrincipal.BtnLogarClick(Sender: TObject);
begin
  if BtnLogar.Caption = 'Iniciar' then
  begin
    ReadAndStart;
    if ServerContainer1.DSServer1.Started then
      BtnLogar.Caption := 'Parar';
      LbServidor.Caption := 'Servidor Conectado com Sucesso';
  end
  else
  begin
    ServerContainer1.DSServer1.Stop;
    if not ServerContainer1.DSServer1.Started then
      BtnLogar.Caption := 'Iniciar';
      LbServidor.Caption := 'Servidor Desconectado com Sucesso';
  end;

end;

procedure TFormPrincipal.ReadAndStart;
begin
  ServerContainer1.DSTCPServerTransport1.Port := StrToInt(EdPorta.Text);
  ServerContainer1.DSServer1.Start;
end;

end.
