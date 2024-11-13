unit untConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  IniFiles, Dialogs, ComCtrls, Menus, StdCtrls, Buttons, ExtCtrls, XPMan;

type
  TfrmConfig = class(TForm)
    Panel1: TPanel;
    btnHelp: TBitBtn;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    btnApply: TBitBtn;
    PageControl1: TPageControl;
    tbsMain: TTabSheet;
    tbsView: TTabSheet;
    tbsTags: TTabSheet;
    XPManifest1: TXPManifest;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbUrl: TComboBox;
    cmbQuote: TComboBox;
    cmbImg: TComboBox;
    Label4: TLabel;
    cmbSel: TComboBox;
    rdoColor: TRadioGroup;
    GroupBox2: TGroupBox;
    chkTBStandart: TCheckBox;
    chkTBEdit: TCheckBox;
    chkTBAdvanced: TCheckBox;
    chkTBTags: TCheckBox;
    chkTBStatBar: TCheckBox;
    chkTBSmileBar: TCheckBox;
    GroupBox4: TGroupBox;
    chkAssBbc: TCheckBox;
    chkAssTxt: TCheckBox;
    chkAssBb: TCheckBox;
    GroupBox5: TGroupBox;
    rdoSaveBbc: TRadioButton;
    rdoSaveTxt: TRadioButton;
    Label5: TLabel;
    cmbCode: TComboBox;
    rdoSmile: TRadioGroup;
    procedure btnHelpClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure GroupBox5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses untMain;

{$R *.dfm}

procedure TfrmConfig.btnApplyClick(Sender: TObject);
var
  FIni: TIniFile;
  i: integer;
begin
  FIni:= TIniFile.Create(frmMain.AppIni);

  FIni.WriteString('TBStand','Vis',BoolToStr(chkTBStandart.Checked));
  FIni.WriteString('TBEdit','Vis',BoolToStr(chkTBEdit.Checked));
  FIni.WriteString('TBAdv','Vis',BoolToStr(chkTBAdvanced.Checked));
  FIni.WriteString('TBTags','Vis',BoolToStr(chkTBTags.Checked));
  FIni.WriteString('StatBar','Vis',BoolToStr(chkTBStatBar.Checked));
  FIni.WriteString('SmlBar','Vis',BoolToStr(chkTBSmileBar.Checked));
  FIni.WriteString('SmlBar','Align',IntToStr(rdoSmile.ItemIndex));

  chkAssBbc.Checked:= false;
  chkAssTxt.Checked:= false;
  chkAssBb.Checked:= false;

  if rdoSaveBbc.Checked then
    i:= 0
  else
    i:= 1;
  if rdoSaveTxt.Checked then
    i:= 1
  else
    i:= 0;
  FIni.WriteString('Main','Save',IntToStr(i));

  FIni.WriteString('Main','Code',IntToStr(cmbCode.ItemIndex));

  FIni.WriteString('Tags','URL',IntToStr(cmbUrl.ItemIndex));
  FIni.WriteString('Tags','Img',IntToStr(cmbImg.ItemIndex));
  FIni.WriteString('Tags','Quote',IntToStr(cmbQuote.ItemIndex));
  FIni.WriteString('Edit','Sel',IntToStr(cmbSel.ItemIndex));

  FIni.WriteString('Tags','Color',IntToStr(rdoColor.ItemIndex));

  FIni.Free;
  btnApply.Enabled:= false;
end;

procedure TfrmConfig.btnHelpClick(Sender: TObject);
begin
  Application.HelpFile := ExtractFilePath(Application.ExeName) + 'help.hlp';
  Application.HelpContext(PageControl1.ActivePage.HelpContext);
end;

procedure TfrmConfig.btnOkClick(Sender: TObject);
begin
  btnApplyClick(Sender);
  frmMain.FormShow(Sender);
  Close;
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
begin
  rdoSaveBbc.Checked:= false;
  rdoSaveTxt.Checked:= false;
  btnApply.Enabled:= false;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
var
  FIni: TIniFile;
  i: integer;
begin
  FIni:= TIniFile.Create(frmMain.AppIni);

  chkTBStandart.Checked:= StrToBool(FIni.ReadString('TBStand','Vis','-1'));
  chkTBEdit.Checked:= StrToBool(FIni.ReadString('TBEdit','Vis','-1'));
  chkTBAdvanced.Checked:= StrToBool(FIni.ReadString('TBAdv','Vis','-1'));
  chkTBTags.Checked:= StrToBool(FIni.ReadString('TBTags','Vis','-1'));
  chkTBStatBar.Checked:= StrToBool(FIni.ReadString('StatBar','Vis','-1'));
  chkTBSmileBar.Checked:= StrToBool(FIni.ReadString('SmlBar','Vis','-1'));
  rdoSmile.ItemIndex:= StrToInt(FIni.ReadString('SmlBar','Align','0'));

  chkAssBbc.Checked:= false;
  chkAssTxt.Checked:= false;
  chkAssBb.Checked:= false;

  i:= StrToInt(FIni.ReadString('Main','Save','0'));
  case i of
    0: rdoSaveBbc.Checked:= true;
    1: rdoSaveTxt.Checked:= true;
  end;

  cmbCode.ItemIndex:= StrToInt(FIni.ReadString('Main','Code','0'));

  cmbUrl.ItemIndex:= StrToInt(FIni.ReadString('Tags','URL','0'));
  cmbImg.ItemIndex:= StrToInt(FIni.ReadString('Tags','Img','0'));
  cmbQuote.ItemIndex:= StrToInt(FIni.ReadString('Tags','Quote','0'));
  cmbSel.ItemIndex:= StrToInt(FIni.ReadString('Edit','Sel','0'));

  rdoColor.ItemIndex:= StrToInt(FIni.ReadString('Tags','Color','0'));

  FIni.Free;
  btnApply.Enabled:= false;
end;

procedure TfrmConfig.GroupBox5Click(Sender: TObject);
begin
  btnApply.Enabled:= true;
end;

end.
