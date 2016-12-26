unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,IdHashMessageDigest;

type
  TForm1 = class(TForm)
    edtArquivo1: TEdit;
    edtArquivo2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lblResultado: TLabel;
    dlgOpen1: TOpenDialog;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Comparar(Caminho_1:string;Caminho_2:string);
    function MD5Arquivo(const fileName : string) : string;
    function CapturarCaminhoArquivo:string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btn1Click(Sender: TObject);
begin
  edtArquivo1.Text := CapturarCaminhoArquivo;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  edtArquivo2.Text := CapturarCaminhoArquivo;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if (edtArquivo1.Text <> '') and (edtArquivo2.Text <> '') then
  Comparar(edtArquivo1.Text, edtArquivo2.Text);
end;

function TForm1.CapturarCaminhoArquivo: string;
begin
if dlgOpen1.Execute then
  Result := dlgOpen1.FileName
else
  Result := '';
end;

procedure TForm1.Comparar(Caminho_1:string;Caminho_2:string);
var
arq_1 ,arq_2: TextFile;
Md5_1, Md5_2 : string;
begin

  Md5_1 := MD5Arquivo(Caminho_1);
  Md5_2 := MD5Arquivo(Caminho_2);

  if Md5_1 = Md5_2 then
    lblResultado.Caption := 'Arquivos iguais'
  else
    lblResultado.Caption := 'Arquivos Diferentes';

end;

function TForm1.MD5Arquivo(const fileName : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
  fs : TFileStream;
begin
  idmd5 := TIdHashMessageDigest5.Create;

  fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
  try
    result := idmd5.HashStreamAsHex(fs);
  finally
    fs.Free;
    idmd5.Free;
  end;
end;

end.
