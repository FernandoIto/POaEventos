unit UnitViewPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit2, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
  private
    FContexto: TControle;
    { Private declarations }
    procedure MensagensMemo(MensagemTexto: string);
    procedure PosicaoPsBar(PosicaoCursor: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    FContexto := TControle.Create;
    FContexto.EvMensagem  := Self.MensagensMemo;
    FContexto.EvProgresso := Self.PosicaoPsBar;
    FContexto.AcionaEventos;
  finally
    FContexto.Free;
  end;
end;

procedure TForm1.MensagensMemo(MensagemTexto: string);
begin
  Self.Memo1.Lines.Add( MensagemTexto );
end;

procedure TForm1.PosicaoPsBar(PosicaoCursor: Integer);
begin
  Self.ProgressBar1.Position := PosicaoCursor;
end;

end.
 