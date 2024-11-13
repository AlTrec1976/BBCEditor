unit untAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XPMan, jpeg, ShellAPI, ExtCtrls;

type
  TfrmAbout = class(TForm)
    btnOk: TBitBtn;
    Image1: TImage;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    lblVersion: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    lblWWW: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblMail: TLabel;
    btnDonat: TSpeedButton;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure lblMailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblMailMouseLeave(Sender: TObject);
    procedure lblMailClick(Sender: TObject);
    procedure lblWWWMouseLeave(Sender: TObject);
    procedure lblWWWMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblWWWClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnDonatClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;
    function GetVersion: string;
implementation

uses untMain;

{$R *.dfm}

procedure TfrmAbout.BitBtn1Click(Sender: TObject);
begin
  Application.HelpCommand(frmMain.Memo1.HelpContext, 0);
  //HtmlHelp(Handle,PChar(Application.HelpFile),HH_DISPLAY_TOPIC,0);
end;

procedure TfrmAbout.btnOkClick(Sender: TObject);
begin
  Close;
end;

function GetVersion: string;
 var
   VerInfoSize: DWORD;
   VerInfo: Pointer;
   VerValueSize: DWORD;
   VerValue: PVSFixedFileInfo;
   Dummy: DWORD;
 begin
   VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
   with VerValue^ do
   begin
     Result := IntToStr(dwFileVersionMS shr 16);
     Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
     Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
     Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
   end;
   FreeMem(VerInfo, VerInfoSize);
 end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  lblVersion.Caption:= 'Версия ' + GetVersion;
end;

procedure TfrmAbout.lblMailClick(Sender: TObject);
begin
ShellExecute(Handle, nil, 'mailto:bbcedit@alexsid-soft.ru', nil, nil, SW_SHOW);
end;

procedure TfrmAbout.lblMailMouseLeave(Sender: TObject);
begin
  lblMail.Font.Style:=[fsUnderline];
end;

procedure TfrmAbout.lblMailMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblMail.Font.Style:=[fsBold,fsItalic,fsUnderline];
end;

procedure TfrmAbout.lblWWWClick(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'http://www.alexsid-soft.ru/', nil, nil, SW_SHOW);
end;

procedure TfrmAbout.lblWWWMouseLeave(Sender: TObject);
begin
  lblWWW.Font.Style:=[fsUnderline];
end;

procedure TfrmAbout.lblWWWMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lblWWW.Font.Style:=[fsBold,fsItalic,fsUnderline];
end;

procedure TfrmAbout.btnDonatClick(Sender: TObject);
begin
  Label7.Caption := 'Уважаемый пользователь, если вам понрави-' + #13#10 +
  'лась данная программа и вы хотите поддер-' + #13#10 +
  'жать этот проект, то сделать это можно' + #13#10 +
  'одним из способов:';
  Label9.Caption := 'в рублях - R244959589048' + #13#10 +
  'в долларах - Z396052671684' + #13#10 +
  'в евро - E221846216722';
  if btnDonat.Caption = 'Поддержка' then
  begin
    btnDonat.Caption:= 'Спасибо!';
    Image1.Visible:= false;
    Panel1.Visible:= true;
  end
  else
  begin
    btnDonat.Caption:= 'Поддержка';
    Image1.Visible:= true;
    Panel1.Visible:= false;
  end;
end;

end.
