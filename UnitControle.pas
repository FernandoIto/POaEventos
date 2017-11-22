unit UnitControle;

interface

uses
  SysUtils;

type
  TEvMensagem = procedure(Mensagem: string) of object;
  TEvProgresso = procedure(Posicao: Integer) of object;

  TControle = class
  private
    FPosicao: Integer;
    FMensagem: string;
    FEvMensagem: TEvMensagem;
    FEvProgresso: TEvProgresso;
    procedure SetMensagem(const Value: string);
    procedure SetPosicao(const Value: Integer);

  published
    property Mensagem: string read FMensagem write SetMensagem;
    property Posicao: Integer read FPosicao write SetPosicao;
    property EvMensagem: TEvMensagem read FEvMensagem write FEvMensagem;
    property EvProgresso: TEvProgresso read FEvProgresso write FEvProgresso;
  public
    procedure AcionaEventos;
  end;

implementation

{ TControle }

procedure TControle.AcionaEventos;
var
  Indice: Integer;
begin
  for Indice := 1 to 100 do
  begin
    Mensagem := 'Programação orientada a eventos nr: ' + IntToStr( Indice );
    Posicao  := Indice;
  end;
end;

procedure TControle.SetMensagem(const Value: string);
begin
  if Assigned( FEvMensagem ) then
  begin
    FEvMensagem( Value );
  end;
end;

procedure TControle.SetPosicao(const Value: Integer);
begin
  if Assigned( FEvProgresso ) then
  begin
    FEvProgresso( Value );
  end;
end;

end.
 