unit untViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ActiveX;

type
  TfrmView = class(TForm)
    webViewer: TWebBrowser;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmView: TfrmView;

implementation

uses untMain;

{$R *.dfm}

procedure TfrmView.FormShow(Sender: TObject);
begin
  WB_LoadHTML(webViewer, Memo1.Text);
end;

procedure TfrmView.WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.Seek(0, 0);
        (WebBrowser.Document as
          IPersistStreamInit).Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;

end.
