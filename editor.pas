unit editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Formate1: TMenuItem;
    Font1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    FontDialog1: TFontDialog;
    Undo1: TMenuItem;
    SelectAll1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  File_Work:string;
implementation

{$R *.dfm}

procedure SaveAs;
begin
  If Form1.SaveDialog1.Execute then
  begin
    Form1.Memo1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
    File_Work:=Form1.SaveDialog1.FileName;
  end;
end;

procedure OpenFile;
begin
  If Form1.OpenDialog1.Execute then
  begin
    Form1.Memo1.Lines.LoadFromFile(Form1.OpenDialog1.FileName);
    File_Work:=Form1.OpenDialog1.FileName;
  end;
end;

procedure FrontOfText;
begin
  If Form1.FontDialog1.Execute then
    Form1.Memo1.Font:=Form1.FontDialog1.Font;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
begin
    SaveAs;
end;
procedure TForm1.Open1Click(Sender: TObject);
begin
  OpenFile;
end;

procedure TForm1.New1Click(Sender: TObject);
begin
  File_Work:='';
  Form1.Memo1.Clear;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
  Form1.Memo1.CutToClipboard;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  Form1.Memo1.CopyToClipboard;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  Form1.Memo1.PasteFromClipboard;
end;

procedure TForm1.Undo1Click(Sender: TObject);
begin
  Form1.Memo1.Undo;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
  FrontOfText;
end;

procedure TForm1.SelectAll1Click(Sender: TObject);
begin
  Form1.Memo1.SelectAll;
end;

end.
