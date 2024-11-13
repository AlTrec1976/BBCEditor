unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ActnList, ToolWin, ActnMan, ActnCtrls,
  XPStyleActnCtrls, ImgList, ActnMenus, ComCtrls, Menus, ActnPopup, ButtonGroup,
  IniFiles, XPMan, ShellAPI, HtmlHelpViewer, StrUtils, WinHelpViewer, ExtDlgs,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions;

type
  TfrmMain = class(TForm)
    Panel2: TPanel;
    Memo1: TMemo;
    ActionManager1: TActionManager;
    actBold: TAction;
    actItalic: TAction;
    actUnderline: TAction;
    actLink: TAction;
    actImage: TAction;
    actQuote: TAction;
    actList: TAction;
    imlMenu: TImageList;
    pnlSmile: TPanel;
    actColor: TAction;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    dlgFont: TFontDialog;
    dlgColor: TColorDialog;
    actFileOpen: TAction;
    StatusBar1: TStatusBar;
    actFileNew: TAction;
    actFileSave: TAction;
    actFileSaveAs: TAction;
    actFileExit: TAction;
    popMain: TPopupActionBar;
    popCut: TMenuItem;
    popCopy: TMenuItem;
    popPast: TMenuItem;
    N4: TMenuItem;
    popDel: TMenuItem;
    N6: TMenuItem;
    popSelectAll: TMenuItem;
    actTBSBar: TAction;
    actTBStandart: TAction;
    actTBTags: TAction;
    actViewOptions: TAction;
    actEditCut: TAction;
    actEditCopy: TAction;
    actEditPast: TAction;
    actEditDel: TAction;
    actEditSelectAll: TAction;
    actTBOptions: TAction;
    actFont: TAction;
    actTBEdit: TAction;
    popToolBar: TPopupActionBar;
    popStandart: TMenuItem;
    popTags: TMenuItem;
    popEdit: TMenuItem;
    N2: TMenuItem;
    popOption: TMenuItem;
    popAdvansed: TMenuItem;
    popSBar: TMenuItem;
    actTBAdvansed: TAction;
    actSize: TAction;
    actCustom: TAction;
    actCloseAll: TAction;
    imlSmile: TImageList;
    MainMenu1: TMainMenu;
    mnuFiles: TMenuItem;
    mnuFilesNew: TMenuItem;
    mnuFilesOpen: TMenuItem;
    N5: TMenuItem;
    mnuFilesSave: TMenuItem;
    mnuFilesSaveAs: TMenuItem;
    N9: TMenuItem;
    mnuFilesExit: TMenuItem;
    mnuView: TMenuItem;
    mnuViewTB: TMenuItem;
    mnuViewOptions: TMenuItem;
    mnuViewTBStandart: TMenuItem;
    mnuViewTBEdit: TMenuItem;
    mnuViewTBBBCodes: TMenuItem;
    mnuViewTBAdvansed: TMenuItem;
    mnuViewTBStatusBar: TMenuItem;
    N17: TMenuItem;
    mnuViewTBOptions: TMenuItem;
    mnuEdit: TMenuItem;
    mnuEditCut: TMenuItem;
    mnuEditCopy: TMenuItem;
    mnuEditPast: TMenuItem;
    N23: TMenuItem;
    mnuEditDel: TMenuItem;
    N25: TMenuItem;
    mnuEditSelectAll: TMenuItem;
    mnuBBC: TMenuItem;
    mnuBBCBold: TMenuItem;
    mnuBBCItalic: TMenuItem;
    mnuBBCUnderline: TMenuItem;
    N30: TMenuItem;
    mnuBBCLink: TMenuItem;
    mnuBBCImage: TMenuItem;
    N33: TMenuItem;
    mnuBBCQuote: TMenuItem;
    mnuBBCList: TMenuItem;
    N36: TMenuItem;
    mnuBBCColor: TMenuItem;
    mnuBBCFont: TMenuItem;
    mnuBBCSize: TMenuItem;
    N40: TMenuItem;
    mnuBBCCustom: TMenuItem;
    mnuBBCClose: TMenuItem;
    actPre: TAction;
    actMail: TAction;
    mnuBBCMail: TMenuItem;
    mnuBBCCode: TMenuItem;
    CoolBar1: TCoolBar;
    tlbStandart: TToolBar;
    tlbEdit: TToolBar;
    tlbTags: TToolBar;
    tlbStandartNew: TToolButton;
    tlbStandartOpen: TToolButton;
    tlbStandart1: TToolButton;
    tlbStandartSave: TToolButton;
    tlbStandartSaveAs: TToolButton;
    tlbStandart2: TToolButton;
    tlbStandartExit: TToolButton;
    tlbAdvansed: TToolBar;
    cmbColor: TColorBox;
    cmbFont: TComboBox;
    cmbSize: TComboBoxEx;
    tlbEditCut: TToolButton;
    tlbEditCopy: TToolButton;
    tlbEditPast: TToolButton;
    tlbEdit1: TToolButton;
    tlbEditDel: TToolButton;
    tlbEdit2: TToolButton;
    tlbEditSelectAll: TToolButton;
    tlbTagsBold: TToolButton;
    tlbTagsItalic: TToolButton;
    tlbTagsUnderline: TToolButton;
    tlbTags1: TToolButton;
    tlbTagsImage: TToolButton;
    tlbTagsLink: TToolButton;
    tlbTagsMail: TToolButton;
    tlbTags2: TToolButton;
    tlbTagsQuote: TToolButton;
    tlbTagsPre: TToolButton;
    tlbTagsList: TToolButton;
    tlbTags3: TToolButton;
    tlbTagsColor: TToolButton;
    tlbTagsFont: TToolButton;
    tlbTagsSize: TToolButton;
    tlbTagsCustom: TToolButton;
    tlbTags4: TToolButton;
    tlbTagsCloseAll: TToolButton;
    N1: TMenuItem;
    mnuHelpAbout: TMenuItem;
    btnSmile: TButtonGroup;
    actTop: TAction;
    actBottom: TAction;
    actRight: TAction;
    actLeft: TAction;
    mnuSmailes: TMenuItem;
    mnuSmailesTop: TMenuItem;
    mnuSmailesBottom: TMenuItem;
    mnuSmailesLeft: TMenuItem;
    mnuSmailesRight: TMenuItem;
    popAdvansedTag: TPopupActionBar;
    popATStandart: TMenuItem;
    popATAdvansed: TMenuItem;
    XPManifest1: TXPManifest;
    actEditUndo: TAction;
    actEditRedo: TAction;
    tlbEditUndo: TToolButton;
    tlbEditRedo: TToolButton;
    ToolButton3: TToolButton;
    mnuEditUndo: TMenuItem;
    mnuEditRedo: TMenuItem;
    N7: TMenuItem;
    actHelpContext: TAction;
    actHelpAbout: TAction;
    mnuHelpContext: TMenuItem;
    N8: TMenuItem;
    actStandart: TAction;
    actAdvansed: TAction;
    actViewViewer: TAction;
    mnuViewViewer: TMenuItem;
    N3: TMenuItem;
    actEditFind: TAction;
    actEditReplase: TAction;
    actEditSelect: TAction;
    actEditCopyAll: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    dlgFind: TFindDialog;
    dlgReplace: TReplaceDialog;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    actSelColon: TAction;
    actSelDash: TAction;
    actSelLink: TAction;
    popSel: TPopupActionBar;
    N18: TMenuItem;
    N19: TMenuItem;
    URL1: TMenuItem;
    N20: TMenuItem;
    actSelCan: TAction;
    N21: TMenuItem;
    N22: TMenuItem;
    N24: TMenuItem;
    N26: TMenuItem;
    URL2: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    actFileWizDesc: TAction;
    N34: TMenuItem;
    actSmileViz: TAction;
    N35: TMenuItem;
    N37: TMenuItem;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    mnuUtil: TMenuItem;
    mnuUtilEdTempl: TMenuItem;
    mnuUtilEdCat: TMenuItem;
    actUtilEdTempl: TAction;
    actUtilEdCat: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actUtilEdTemplExecute(Sender: TObject);
    procedure actUtilEdCatExecute(Sender: TObject);
    procedure actLinkExecute(Sender: TObject);
    procedure actSelLinkExecute(Sender: TObject);
    procedure actSelCanExecute(Sender: TObject);
    procedure actSelDashExecute(Sender: TObject);
    procedure actSelColonExecute(Sender: TObject);
    procedure popAdvansedTagPopup(Sender: TObject);
    procedure actTBOptionsExecute(Sender: TObject);
    procedure actSmileVizExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFileWizDescExecute(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure actEditSelectExecute(Sender: TObject);
    procedure dlgReplaceReplace(Sender: TObject);
    procedure actEditReplaseExecute(Sender: TObject);
    procedure actEditFindExecute(Sender: TObject);
    procedure dlgFindFind(Sender: TObject);
    procedure actEditCopyAllExecute(Sender: TObject);
    procedure actViewViewerExecute(Sender: TObject);
    procedure cmbFontDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actEditDelExecute(Sender: TObject);
    procedure tlbTagsMailMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure actAdvansedExecute(Sender: TObject);
    procedure actStandartExecute(Sender: TObject);
    procedure tlbTagsQuoteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tlbTagsLinkMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tlbTagsImageMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure actHelpContextExecute(Sender: TObject);
    procedure actHelpAboutExecute(Sender: TObject);
    procedure actEditUndoExecute(Sender: TObject);
    procedure actEditRedoExecute(Sender: TObject);
    procedure cmbSizeChange(Sender: TObject);
    procedure actSizeExecute(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure actLeftExecute(Sender: TObject);
    procedure actRightExecute(Sender: TObject);
    procedure actBottomExecute(Sender: TObject);
    procedure actTopExecute(Sender: TObject);
    procedure btnSmileClick(Sender: TObject);
    procedure actViewOptionsExecute(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure actFileSaveExecute(Sender: TObject);
    procedure cmbFontChange(Sender: TObject);
    procedure cmbColorChange(Sender: TObject);
    procedure actCloseAllExecute(Sender: TObject);
    procedure actCustomExecute(Sender: TObject);
    procedure actFontExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditSelectAllExecute(Sender: TObject);
    procedure actEditPastExecute(Sender: TObject);
    procedure actEditCopyExecute(Sender: TObject);
    procedure actEditCutExecute(Sender: TObject);
    procedure actTBAdvansedExecute(Sender: TObject);
    procedure actTBEditExecute(Sender: TObject);
    procedure actTBTagsExecute(Sender: TObject);
    procedure actTBStandartExecute(Sender: TObject);
    procedure actFileNewExecute(Sender: TObject);
    procedure actFileSaveAsExecute(Sender: TObject);
    procedure actFileOpenExecute(Sender: TObject);
    procedure actTBSBarExecute(Sender: TObject);
    procedure actFileExitExecute(Sender: TObject);
    procedure actColorExecute(Sender: TObject);
    procedure actListExecute(Sender: TObject);
    procedure actBoldExecute(Sender: TObject);
    procedure TagChange;
    procedure FOpen;
    procedure TBVizible;
    procedure TBViz(tb: TToolBar);
    procedure GetTeg(ind: Integer; btn: TAction);
    procedure StatusBar(Sender: TObject; var Done:Boolean);
    procedure SaveConf;
    function inserttag(s:string):string;
    function colname(rgb:Longint):string;
    function NumToken(aString, SepChar: string): Byte;
    function GetToken(aString, SepChar: string; TokenNum: Byte): string;
    function StrReplace(const Str, Str1, Str2: string): string;
    function BMSearch(StartPos: Integer; const S, P: string): Integer;
  private
    { Private declarations }
    FSelPos: integer;
    procedure ShowHint(Sender: TObject);
  public
    { Public declarations }
    AppIni: string;
    FlCount: Integer;
    function GetFileCount(Dir, Mask: string): integer;
  end;

const
  TagArr = 10;
  CoTags = 17;
  bTags: array[0..CoTags] of string =
    ('<','>','[',']','<*>','<img=','<img>','</img>',
     '<url>','<url=','</url>','<email>','</email>',
     '<color','<size','<font','</color>','</size>');
  hTags: array[0..CoTags] of string =
    ('&lt;','&gt;','<','>','<LI>','<IMG src=','<IMG src=','>',
     '<A href=','<A href=','</A>','<A href="mailto:','">Написать письмо</A>',
     '<FONT color','<FONT size','<FONT','</FONT>','</FONT>');

var
  frmMain: TfrmMain;
  FIni: TIniFile;
  AppCapt: string;
  FChange: string;
  TagAdv: Integer;
  StrAdv: String;
  TagClose: array[0..TagArr] of string;
  TagTags: array[0..TagArr] of TAction;
  //RepTags: array[0..CoTags] of string;

implementation

uses Types, untAbout, CategoryButtons, untViewer, untWizDesc, untConfig;

{$R *.dfm}

procedure TfrmMain.actAdvansedExecute(Sender: TObject);
var
  btn: TAction;
  sel, str: String;
begin
  sel:= Memo1.SelText;
  case TagAdv of
    1:
    begin
      btn:= actImage;
      str:= 'адрес картинки в сети,';
    end;
    2:
    begin
      btn:= actLink;
      str:= 'адрес ресурса Internet,';
    end;
    3:
    begin
      btn:= actMail;
      str:= 'адрес E-Mail';
    end;
    4:
    begin
      btn:= actQuote;
      str:= 'имя автора цитаты';
    end;
  end;

  StrAdv:= InputBox('Дополнение к тегу '+btn.Hint,
    'Введите '+str+' для дополнения тега '+btn.Hint,sel);

  if StrAdv <> '' then
    GetTeg(btn.Tag,btn);
  TagAdv:= 0;
end;

procedure TfrmMain.actBoldExecute(Sender: TObject);
begin
  if TAction(Sender).Name = actFont.Name then
    if actFont.Checked then
      GetTeg((TAction(Sender).Tag),(TAction(Sender)))
    else
    begin
      if dlgFont.Execute then
      begin
        cmbFont.Text:= dlgFont.Font.Name;
        GetTeg((TAction(Sender).Tag),(TAction(Sender)));
      end
    end
  else if TAction(Sender).Name = actColor.Name then
    if actColor.Checked then
      GetTeg((TAction(Sender).Tag),(TAction(Sender)))
    else
    begin
      if dlgColor.Execute then
      begin
        cmbColor.Selected:= dlgColor.Color;
        GetTeg((TAction(Sender).Tag),(TAction(Sender)));
      end
    end
  else
    GetTeg((TAction(Sender).Tag),(TAction(Sender)));
end;

procedure TfrmMain.actBottomExecute(Sender: TObject);
begin
  actTop.Checked:= False;
  actBottom.Checked:= True;
  actLeft.Checked:= False;
  actRight.Checked:= False;

  FIni:= TIniFile.Create(AppIni);
  FIni.WriteString('SmlBar','Align','3');
  FIni.Free;

  pnlSmile.Align:= alBottom;
  pnlSmile.Height:= 38;
  btnSmile.Align:= alClient;
  Refresh;
end;

procedure TfrmMain.actCloseAllExecute(Sender: TObject);
var
i, nx, ny, id: Integer;
str, teg: string;

begin
  nx:= Memo1.CaretPos.X+1;
  ny:= Memo1.CaretPos.Y;
  str:= Memo1.Lines.Strings[ny];
  teg:= '';

  id:= TagArr;
  while id >= 0 do
  begin
    teg:= teg + TagClose[id];
    id:= id - 1;
  end;
  for i := 0 to TagArr do
  begin
     TagClose[i]:= '';
  end;

  for i := 0 to TagArr do
    TagTags[id]:= nil;

  Insert(teg,str,nx);

  actBold.Checked:= False;
  actItalic.Checked:= False;
  actUnderline.Checked:= False;
  actImage.Checked:= False;
  actLink.Checked:= False;
  actColor.Checked:= False;
  actQuote.Checked:= False;
  actFont.Checked:= False;
  cmbFont.Enabled:= False;

  actBold.Enabled:= True;
  actItalic.Enabled:= True;
  actUnderline.Enabled:= True;
  actImage.Enabled:= True;
  actLink.Enabled:= True;
  actColor.Enabled:= True;
  actQuote.Enabled:= True;
  actFont.Enabled:= True;
  cmbFont.Enabled:= True;

  Memo1.Lines.Delete(ny);
  Memo1.Lines.Insert(ny,str);
  Memo1.CaretPos:=Point((nx+(Length(teg)-1)), ny);
  Memo1.SetFocus;

  TagChange;
end;

procedure TfrmMain.actColorExecute(Sender: TObject);
begin
  if actColor.Checked=False then
    if dlgColor.Execute then
    begin
      cmbColor.Selected:= dlgColor.Color;
    end;
  GetTeg(8,actColor);
end;

procedure TfrmMain.actCustomExecute(Sender: TObject);
begin
  //frmFont.ShowModal;
end;

procedure TfrmMain.actEditCopyExecute(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TfrmMain.actEditCutExecute(Sender: TObject);
begin
  Memo1.CutToClipboard;
end;

procedure TfrmMain.actEditDelExecute(Sender: TObject);
begin
  if Memo1.SelText = '' then
  begin
    Memo1.CaretPos:=Point(Memo1.CaretPos.X, Memo1.CaretPos.Y);
    Memo1.SelLength:= 1;
  end;
  Memo1.ClearSelection;
end;

procedure TfrmMain.actEditFindExecute(Sender: TObject);
begin
  FSelPos := 0;
  dlgFind.FindText:= Memo1.SelText;
  dlgFind.Execute;
end;

procedure TfrmMain.actEditPastExecute(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TfrmMain.actEditRedoExecute(Sender: TObject);
begin
  Memo1.Undo;
  actEditRedo.Enabled:= false;
  actEditUndo.Enabled:= true;
end;

procedure TfrmMain.actEditReplaseExecute(Sender: TObject);
begin
  FSelPos:= 0;
  dlgReplace.Execute;
end;

procedure TfrmMain.actEditSelectAllExecute(Sender: TObject);
begin
  Memo1.SelectAll;
end;

procedure TfrmMain.actEditSelectExecute(Sender: TObject);
var
//  str: string;
  i: integer;
begin
  FIni:= TIniFile.Create(AppIni);
  i:= StrToInt(FIni.ReadString('Edit','Sel','0'));
  FIni.Free;
  case i of
    0: actSelColonExecute(Sender);
    1: actSelDashExecute(Sender);
    2: actSelLinkExecute(Sender);
  end;
end;

procedure TfrmMain.actEditUndoExecute(Sender: TObject);
begin
  Memo1.Undo;
  actEditRedo.Enabled:= true;
  actEditUndo.Enabled:= false;
end;

procedure TfrmMain.actFileExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.actFileNewExecute(Sender: TObject);
var
  i: Integer;
  rep: Variant;
begin
  if Memo1.Modified then
  begin
  rep:= Application.MessageBox(PChar('Хотите перед закрытием сохранить изменённый файл:'
    + #13#10 + AppCapt + '?'),'Внимние! Файл не сохранён!!!',mb_YesNoCancel);
  { если принято предложение о сохранении }
    if rep = ID_YES then
    begin
    { Сохраняем отработанный файл }
      actFileSave.Execute;
    end;
    if rep <> ID_CANCEL then
    begin
      Memo1.Clear;
      for i := 0 to TagArr do
      begin
        TagClose[i]:= '';
      end;
      actBold.Checked:= False;
      actItalic.Checked:= False;
      actUnderline.Checked:= False;
      actImage.Checked:= False;
      actLink.Checked:= False;
      actColor.Checked:= False;
      actQuote.Checked:= False;
      actFont.Checked:= False;
      actSize.Checked:= False;
      TagChange;
      AppCapt:= 'Безымянный';
      FChange:= '';
    end;
  end;
end;

procedure TfrmMain.actFileOpenExecute(Sender: TObject);
var
  rep: Variant;
begin
{ Если файл изменён }
  if Memo1.Modified then
  begin
  rep:= Application.MessageBox(PChar('Хотите перед закрытием сохранить изменённый файл:'
    + #13#10 + AppCapt + '?'),'Внимние! Файл не сохранён!!!',mb_YesNoCancel);
  { если принято предложение о сохранении }
    if rep = ID_YES then
    begin
    { Сохраняем отработанный файл }
      actFileSave.Execute;
      { Открываем диалог открытия другого файла }
      if OpenDialog1.Execute then
      begin
        AppCapt:= OpenDialog1.FileName;
        Memo1.Lines.LoadFromFile(AppCapt);
        FChange:='';
      end;
    end;
  { если НЕ принято предложение о сохранении }
    if rep = ID_NO then
    begin
      if OpenDialog1.Execute then
      begin
        AppCapt:= OpenDialog1.FileName;
        Memo1.Lines.LoadFromFile(AppCapt);
        FChange:='';
      end;
    end;
  end
{ Если файл НЕ изменён }
  else
  begin
    if OpenDialog1.Execute then
    begin
    try
      AppCapt:= OpenDialog1.FileName;
      Memo1.Lines.LoadFromFile(AppCapt);
      FChange:='';
    except
      MessageBox(0,PWideChar('Указанного Вами файла: ' +
        ExtractFileName(OpenDialog1.FileName) + #13#10 +
        'не существует! Попробуйте снова!'),
        PWideChar('Ошибка! Файл не найден'),
        MB_OK);
      actFileOpenExecute(Sender);
    end;
    end;
  end;
end;

procedure TfrmMain.actFileSaveAsExecute(Sender: TObject);
var
  str, ras: string;
begin
  SaveDialog1.FileName:= AppCapt;

  if SaveDialog1.Execute then
  begin
    case SaveDialog1.FilterIndex of
      1: str:= '.bbc';
      2: str:= '.txt';
      3: str:= '';
    end;
    ras:= ExtractFileExt(SaveDialog1.FileName);
    if (ras='.bbc') or (ras='.txt') then
      AppCapt:=SaveDialog1.FileName
    else
      AppCapt:=SaveDialog1.FileName + str;
    Refresh;
    Memo1.Lines.SaveToFile(AppCapt);
    Memo1.Modified:= false;
  end;
end;

procedure TfrmMain.actFileSaveExecute(Sender: TObject);
begin
  if AppCapt = 'Безымянный' then
    actFileSaveAs.Execute
  else
  begin
    Memo1.Lines.SaveToFile(AppCapt);
    Memo1.Modified:= false;
  end;
  Refresh;
end;

procedure TfrmMain.actFileWizDescExecute(Sender: TObject);
begin
  FlCount:= GetFileCount('template', '*.tpb');
  SetLength(frmWizDesc.TplFName, FlCount);
  SetLength(frmWizDesc.TplName, FlCount);

  frmWizDesc.ShowModal;
end;

procedure TfrmMain.actFontExecute(Sender: TObject);
begin
  if actFont.Checked = False then
    if dlgFont.Execute then
    begin
      cmbFont.Text:= dlgFont.Font.Name;
    end;
  GetTeg(9,actFont);
end;

procedure TfrmMain.actHelpAboutExecute(Sender: TObject);
begin
  frmAbout.ShowModal;
end;

procedure TfrmMain.actHelpContextExecute(Sender: TObject);
begin
//  Application.HelpContext(1);
  HtmlHelp(Handle,PChar(Application.HelpFile),HH_DISPLAY_TOPIC,0);
end;

procedure TfrmMain.actLeftExecute(Sender: TObject);
begin
  actTop.Checked:= False;
  actBottom.Checked:= False;
  actLeft.Checked:= True;
  actRight.Checked:= False;

  FIni:= TIniFile.Create(AppIni);
  FIni.WriteString('SmlBar','Align','1');
  FIni.Free;

  pnlSmile.Align:= alLeft;
  pnlSmile.Width:= 54;
  btnSmile.Align:= alClient;
  Refresh;
end;

procedure TfrmMain.actLinkExecute(Sender: TObject);
var
  i: integer;
begin
  FIni:= TIniFile.Create(AppIni);
  case TagAdv of
    1: i:= StrToInt(FIni.ReadString('Tags','Img','0'));
    2: i:= StrToInt(FIni.ReadString('Tags','URL','0'));
    //3: i:= StrToInt(FIni.ReadString('Tags','URL','0'));
    4: i:= StrToInt(FIni.ReadString('Tags','Quote','0'));
  end;
  FIni.Free;

  case i of
    0: actStandartExecute(Sender);
    1: actAdvansedExecute(Sender);
  end;
end;

procedure TfrmMain.actListExecute(Sender: TObject);
var
  teg: string;
  str: string;
  nx, ny: Integer;
begin
  teg:= '[*]';
  nx:= Memo1.CaretPos.X+1;
  ny:= Memo1.CaretPos.Y;
  str:= Memo1.Lines.Strings[ny];

  Insert(teg,str,nx);
  actList.Checked:= True;
  Memo1.Lines.Delete(ny);
  Memo1.Lines.Insert(ny,str);
  Memo1.CaretPos:=Point((nx+(Length(teg)-1)), ny);
  Memo1.SetFocus;
end;

procedure TfrmMain.actRightExecute(Sender: TObject);
begin
  actTop.Checked:= False;
  actBottom.Checked:= False;
  actLeft.Checked:= False;
  actRight.Checked:= True;

  FIni:= TIniFile.Create(AppIni);
  FIni.WriteString('SmlBar','Align','2');
  FIni.Free;

  pnlSmile.Align:= alRight;
  pnlSmile.Width:= 54;
  btnSmile.Align:= alClient;
  Refresh;
end;

procedure TfrmMain.actSelCanExecute(Sender: TObject);
begin
  Memo1.SelLength:= 0;
end;

procedure TfrmMain.actSelColonExecute(Sender: TObject);
var
  ny: Integer;
  str, chr: string;
begin
  ny:= Memo1.CaretPos.Y;
  str:= Memo1.Lines.Strings[ny];
  Memo1.SelLength:= 0;
  chr:= ':';

  dlgFind.FindText:= GetToken(str, chr, 1);
  dlgFind.OnFind(dlgFind);
end;

procedure TfrmMain.actSelDashExecute(Sender: TObject);
var
  ny: Integer;
  str, chr: string;
begin
  ny:= Memo1.CaretPos.Y;
  str:= Memo1.Lines.Strings[ny];
  Memo1.SelLength:= 0;
  chr:= '-';

  dlgFind.FindText:= GetToken(str, chr, 1);
  dlgFind.OnFind(dlgFind);
end;

procedure TfrmMain.actSelLinkExecute(Sender: TObject);
var
  ny: Integer;
  str, chr: string;
begin
  ny:= Memo1.CaretPos.Y;
  str:= Memo1.Lines.Strings[ny];
  Memo1.SelLength:= 0;
  chr:= 'h';

  dlgFind.FindText:= GetToken(str, chr, 1);
  dlgFind.OnFind(dlgFind);
end;

procedure TfrmMain.actSizeExecute(Sender: TObject);
begin
  if cmbSize.SelText <> '' then
    GetTeg(10,actSize);
    cmbSize.Enabled:= True;
end;

procedure TfrmMain.actSmileVizExecute(Sender: TObject);
var
  i: integer;
begin
  FIni:= TIniFile.Create(AppIni);
  pnlSmile.Visible:= actSmileViz.Checked;
  FIni.WriteString('TBStand','Vis',BoolToStr(pnlSmile.Visible));
  actTop.Enabled:= actSmileViz.Checked;
  actLeft.Enabled:= actSmileViz.Checked;
  actRight.Enabled:= actSmileViz.Checked;
  actBottom.Enabled:= actSmileViz.Checked;

  i:= StrToInt(FIni.ReadString('SmlBar','Align','0'));
  FIni.Free;
  if actSmileViz.Checked then
  begin
    case i of
      0: actTopExecute(Sender);
      1: actLeftExecute(Sender);
      2: actRightExecute(Sender);
      3: actBottomExecute(Sender);
    end;
  end;

  Refresh;
end;

procedure TfrmMain.actStandartExecute(Sender: TObject);
var
  btn: TAction;
begin
  case TagAdv of
    1: btn:= actImage;
    2: btn:= actLink;
    3: btn:= actMail;
    4: btn:= actQuote;
  end;
  GetTeg(btn.Tag,btn);
  TagAdv:= 0;
end;

procedure TfrmMain.actTBStandartExecute(Sender: TObject);
begin
  TBViz(tlbStandart);
end;

procedure TfrmMain.actTBTagsExecute(Sender: TObject);
begin
  TBViz(tlbTags);
end;

procedure TfrmMain.actTopExecute(Sender: TObject);
begin
  actTop.Checked:= True;
  actBottom.Checked:= False;
  actLeft.Checked:= False;
  actRight.Checked:= False;

  FIni:= TIniFile.Create(AppIni);
  FIni.WriteString('SmlBar','Align','0');
  FIni.Free;

  pnlSmile.Align:= alTop;
  pnlSmile.Height:= 38;
  btnSmile.Align:= alClient;
  Refresh;
end;

procedure TfrmMain.actUtilEdCatExecute(Sender: TObject);
begin
  ShellExecute(Handle,'open',PWideChar(ExtractFilePath(Application.ExeName) +
    'CatEdit.exe'), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.actUtilEdTemplExecute(Sender: TObject);
begin
  ShellExecute(Handle,'open',PWideChar(ExtractFilePath(Application.ExeName) +
    'TemplEdit.exe'), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.actViewOptionsExecute(Sender: TObject);
begin
  SaveConf;
  frmConfig.PageControl1.ActivePageIndex:= 0;
  frmConfig.ShowModal;
end;

procedure TfrmMain.actViewViewerExecute(Sender: TObject);
var
  I,L,J,n: Integer;
  s, s1, z: string;
begin
  frmView.Memo1.Lines.Clear;
  s:= '<br>';
  for I := 0 to Memo1.Lines.Count - 1 do
  begin
    frmView.Memo1.Lines.Strings[I]:= Memo1.Lines.Strings[I];
    frmView.Memo1.Lines.Add('');
    for J := 0 to CoTags do
      frmView.Memo1.Lines.Strings[I]:=
        StrReplace(frmView.Memo1.Lines.Strings[I],bTags[J],hTags[J]);
    frmView.Memo1.Lines.Strings[I]:= frmView.Memo1.Lines.Strings[I]+ s;
  end;

  frmView.Memo1.Lines.Insert(0,'<HTML>');
  frmView.Memo1.Lines.Insert(1,'<HEAD>');
  frmView.Memo1.Lines.Insert(2,'</HEAD>');
  frmView.Memo1.Lines.Insert(3,'<BODY>');

  frmView.Memo1.Lines.Add('</BODY>');
  frmView.Memo1.Lines.Add('</HTML>');
  frmView.Memo1.Visible:= False;

  frmView.ShowModal;
end;

function TfrmMain.BMSearch(StartPos: Integer; const S, P: string): Integer;
type
  TBMTable = array[0..255] of Integer;
var
  Pos, lp, i: Integer;
  BMT: TBMTable;
begin

  for i := 0 to 255 do
    BMT[i] := Length(P);
  for i := Length(P) downto 1 do
    if BMT[Byte(P[i])] = Length(P) then
      BMT[Byte(P[i])] := Length(P) - i;

  lp := Length(P);
  Pos := StartPos + lp - 1;
  while Pos <= Length(S) do
    if P[lp] <> S[Pos] then
      Pos := Pos + BMT[Byte(S[Pos])]
    else if lp = 1 then
    begin
      Result := Pos;
      Exit;
    end
    else
      for i := lp - 1 downto 1 do
        if P[i] <> S[Pos - lp + i] then
        begin
          Inc(Pos);
          Break;
        end
        else if i = 1 then
        begin
          Result := Pos - lp + 1;
          Exit;
        end;
  Result := 0;
end;

procedure TfrmMain.btnSmileClick(Sender: TObject);
var
  nx, ny: Integer;
  str, strr: string;
begin
  str:= btnSmile.Items[btnSmile.ItemIndex].Caption;
  strr:= Memo1.Lines.Strings[Memo1.CaretPos.Y];
  nx:= Memo1.CaretPos.X+1;
  ny:= Memo1.CaretPos.Y;

  //btnSmile.ItemIndex:= -1;
  Insert(str,strr,nx);
  Memo1.Lines.Delete(ny);
  Memo1.Lines.Insert(Memo1.CaretPos.y,strr);
  Memo1.CaretPos:=Point((nx+(Length(str)-1)), ny);
  Memo1.SetFocus;
end;

procedure TfrmMain.cmbColorChange(Sender: TObject);
begin
  dlgColor.Color:=cmbColor.Selected;
  GetTeg(actColor.Tag,actColor);
end;

procedure TfrmMain.cmbFontChange(Sender: TObject);
begin
  if Memo1.SelText = '' then
  begin
    GetTeg(actFont.Tag,actFont);
//    cmbFont.Enabled:= False;
  end
  else
    GetTeg(actFont.Tag,actFont);

end;

procedure TfrmMain.cmbFontDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  CB: TComboBox;
begin
  // Прорисовываем имена шрифтов
  CB := Control as TComboBox;
  With CB.Canvas do begin
    FillRect(Rect); // Заливаем
    Font.Name := CB.Items[Index]; // Чтобы текст Item’а был в стиле своего шрифта
    Font.Size := 10; // Буквы 8 пт. читать замучаешься
    TextOut(Rect.Left, Rect.Top, CB.Items[Index]); // Выводим результат
  end;
end;

procedure TfrmMain.cmbSizeChange(Sender: TObject);
begin
  if cmbSize.SelText <> '' then
    GetTeg(actSize.Tag,actSize)
  {else
  begin
    GetTeg(actSize.Tag,actSize);
    cmbSize.Enabled:= False;
  end};
end;

function TfrmMain.colname(rgb: Longint): string;
begin
result:= '#'+Format('%.2x%.2x%.2x',
    [GetRValue(rgb),GetGValue(rgb),GetBValue(rgb)]);
FIni:= TIniFile.Create(AppIni);
if (FIni.ReadString('Tags','Color','0') = '1') then
begin
  case rgb of
		$FFF8F0: result:= 'AliceBlue';	//бледно-голубой
		$D7EBFA: result:= 'AntiqueWhite';	//античный белый
		$FFFF00: result:= 'Aqua';	//голубой
		$D4FF7F: result:= 'Aquamarine';	//аквамарин
		$FFFFF0: result:= 'Azure';	//лазурный
		$DCF5F5: result:= 'Beige';	//беж
		$C4E4FF: result:= 'Bisque';	//бисквитный
		$000000: result:= 'Black';	//черный
		$CDEBFF: result:= 'BlanchedAlmond';	//светло-кремовый
		$FF0000: result:= 'Blue';	//синий
		$E22B8A: result:= 'BlueViolet';	//сине-фиолетовый
		$2A2AA5: result:= 'Brown';	//коричневый
		$87B8DE: result:= 'BurlyWood';	//старое дерево
		$A09E5F: result:= 'CadetBlue';	//серо-голубой
		$00FF7F: result:= 'Chartreuse';	//зеленовато-желтый
		$1E69D2: result:= 'Chocolate';	//шоколадный
		$507FFF: result:= 'Coral';	//коралловый
		$ED9564: result:= 'CornflowerBlue';	//васильковый
		$DCF8FF: result:= 'Cornsilk';	//кукурузные рыльца
		$3C14DC: result:= 'Crimson';	//малиновый
		//$FFFF00: result:= 'Cyan';	//светло-голубой
		$8B0000: result:= 'DarkBlue';	//темно-синий
		$8B8B00: result:= 'DarkCyan';	//темно-голубой
		$0B86B8: result:= 'DarkGoldenRod';	//темно-золотисто-коричневый
		$A9A9A9: result:= 'DarkGray';	//темно-серый
		$006400: result:= 'DarkGreen';	//темно-зеленый
		$6BB7BD: result:= 'DarkKhaki';	//темный хаки
		$8B008B: result:= 'DarkMagenta';	//темно-пурпурный
		$2F6B55: result:= 'DarkOliveGreen';	//темно-оливково-зеленый
		$008CFF: result:= 'Darkorange';	//темно-оранжевый
		$CC3299: result:= 'DarkOrchid';	//темно-лиловый
		$00008B: result:= 'DarkRed';	//темно-красный
		$7A96E9: result:= 'DarkSalmon';	//темно-оранжево-розовый
		$8FBC8F: result:= 'DarkSeaGreen';	//темно-зеленое море
		$8B3D48: result:= 'DarkSlateBlue';	//темный серовато-синий
		$4F4F2F: result:= 'DarkSlateGray';	//темный синевато-серый
		$D1CE00: result:= 'DarkTurquoise';	//темно-бирюзовый
		$D30094: result:= 'DarkViolet';	//темно-фиолетовый 
		$9314FF: result:= 'DeepPink';	//темно-розовый
		$FFBF00: result:= 'DeepSkyBlue';	//темно-небесно-голубой
		$696969: result:= 'DimGray';	//тускло-серый
		$FF901E: result:= 'DodgerBlue';	//тускло-васильковый
		$7592D1: result:= 'Feldspar';	//полевой шпат
		$2222B2: result:= 'FireBrick';	//огнеупорный кирпич
		$F0FAFF: result:= 'FloralWhite';	//цветочно-белый
		$228B22: result:= 'ForestGreen';	//лесная зелень
		//$FF00FF: result:= 'Fuchsia';	//фуксия
		$DCDCDC: result:= 'Gainsboro';	//светло-серый
		$FFF8F8: result:= 'GhostWhite';	//туманно-белый
		$00D7FF: result:= 'Gold';	//золотой
		$20A5DA: result:= 'GoldenRod';	//золотисто-коричневый
		$808080: result:= 'Gray';	//серый
		$008000: result:= 'Green';	//зеленый
		$2FFFAD: result:= 'GreenYellow';	//зелено-желтый
		$F0FFF0: result:= 'HoneyDew';	//медовая роса
		$B469FF: result:= 'HotPink';	//ярко-розовый
		$5C5CCD: result:= 'IndianRed';	//индийский-красный
		$82004B: result:= 'Indigo';	//индиго
		$F0FFFF: result:= 'Ivory';	//слоновая кость
		$8CE6F0: result:= 'Khaki';	//хаки
		$FAE6E6: result:= 'Lavender';	//бледно-лиловый
		$F5F0FF: result:= 'LavenderBlush';	//бледный розово-лиловый
		$00FC7C: result:= 'LawnGreen';	//зеленая трава
		$CDFAFF: result:= 'LemonChiffon';	//лимонный
		$E6D8AD: result:= 'LightBlue';	//светло-синий
		$8080F0: result:= 'LightCoral';	//светло-коралловый
		$FFFFE0: result:= 'LightCyan';	//светло-светло-голубой
		$D2FAFA: result:= 'LightGoldenRodYellow';	//светлый коричнево-желтый
		$D3D3D3: result:= 'LightGrey';	//светло-серый
		$90EE90: result:= 'LightGreen';	//светло-зеленый
		$C1B6FF: result:= 'LightPink';	//светло-розовый
		$7AA0FF: result:= 'LightSalmon';	//светлый оранжево-розовый
		$AAB220: result:= 'LightSeaGreen';	//светло-зеленое море
		$FACE87: result:= 'LightSkyBlue';	//светло-небесно-голубой
		$FF7084: result:= 'LightSlateBlue';	//светлый серовато-синий
		$998877: result:= 'LightSlateGray';	//светлый синевато-серый
		$DEC4B0: result:= 'LightSteelBlue';	//светлый голубовато стальной
		$E0FFFF: result:= 'LightYellow';	//светло-желтый
		$00FF00: result:= 'Lime';	//лайм
		$32CD32: result:= 'LimeGreen';	//зеленый лайм
		$E6F0FA: result:= 'Linen';	//льняной
		$FF00FF: result:= 'Magenta';	//пурпурный
		$000080: result:= 'Maroon';	//каштановый
		$AACD66: result:= 'MediumAquaMarine';	//умеренно аквамариновый
		$CD0000: result:= 'MediumBlue';	//умеренно синий
		$D355BA: result:= 'MediumOrchid';	//умеренно лиловый
		$D87093: result:= 'MediumPurple';	//умеренно пурпурный
		$71B33C: result:= 'MediumSeaGreen';	//умеренно-зеленое море
		$EE687B: result:= 'MediumSlateBlue';	//умеренно серовато-синий
		$9AFA00: result:= 'MediumSpringGreen';	//умеренная весенняя зелень
		$CCD148: result:= 'MediumTurquoise';	//умеренно-бирюзовый
		$8515C7: result:= 'MediumVioletRed';	//умеренно фиолетово красный
		$701919: result:= 'MidnightBlue';	//ночной синий
		$FAFFF5: result:= 'MintCream';	//мятно-кремовый
		$E1E4FF: result:= 'MistyRose';	//туманно-розовый
		$B5E4FF: result:= 'Moccasin';	//песочный
		$ADDEFF: result:= 'NavajoWhite';	//темно-песочный
		$800000: result:= 'Navy';	//темно-синий
		$E6F5FD: result:= 'OldLace';	//старые кружева
		$008080: result:= 'Olive';	//оливковый
		$238E6B: result:= 'OliveDrab';	//тускло-оливковый
		$00A5FF: result:= 'Orange';	//оранжевый
		$0045FF: result:= 'OrangeRed';	//оранжево-красный
		$D670DA: result:= 'Orchid';	//лиловый
		$AAE8EE: result:= 'PaleGoldenRod';	//бледно-золотисто-коричневый
		$98FB98: result:= 'PaleGreen';	//бледно-зеленый
		$EEEEAF: result:= 'PaleTurquoise';	//бледно-голубой
		$9370D8: result:= 'PaleVioletRed';	//бледно-фиолетово-красный
		$D5EFFF: result:= 'PapayaWhip';	//дыни
		$B9DAFF: result:= 'PeachPuff';	//персиковый
		$3F85CD: result:= 'Peru';	//коричневый
		$CBC0FF: result:= 'Pink';	//розовый
		$DDA0DD: result:= 'Plum';	//сливовый
		$E6E0B0: result:= 'PowderBlue';	//туманно-голубой
		$800080: result:= 'Purple';	//пурпурный
		$0000FF: result:= 'Red';	//красный
		$8F8FBC: result:= 'RosyBrown';	//розово-коричневый
		$E16941: result:= 'RoyalBlue';	//ярко-синий
		$13458B: result:= 'SaddleBrown';	//старая кожа
		$7280FA: result:= 'Salmon';	//оранжево-розовый
		$60A4F4: result:= 'SandyBrown';	//песочно-коричневый
		$578B2E: result:= 'SeaGreen';	//зеленое море
		$EEF5FF: result:= 'SeaShell';	//морская ракушка
		$2D52A0: result:= 'Sienna';	//охра
		$C0C0C0: result:= 'Silver';	//свето-серый
		$EBCE87: result:= 'SkyBlue';	//небесно-голубой
		$CD5A6A: result:= 'SlateBlue';	//серовато-синий
		$908070: result:= 'SlateGray';	//синевато-серый
		$FAFAFF: result:= 'Snow';	//снежный
		$7FFF00: result:= 'SpringGreen';	//весенняя зелень
		$B48246: result:= 'SteelBlue';	//сине-стальной
		$8CB4D2: result:= 'Tan';	//бронзы
		$808000: result:= 'Teal';	//сине-зеленый
		$D8BFD8: result:= 'Thistle';	//чертополох
		$4763FF: result:= 'Tomato';	//томат
		$D0E040: result:= 'Turquoise';	//бирюзовый
		$EE82EE: result:= 'Violet';	//фиолетовый
		$9020D0: result:= 'VioletRed';	//фиолетово-красный
		$B3DEF5: result:= 'Wheat';	//пшеничный
		$FFFFFF: result:= 'White';	//белый
		$F5F5F5: result:= 'WhiteSmoke';	//белый дым
		$00FFFF: result:= 'Yellow';	//желтый
		$32CD9A: result:= 'YellowGreen';	//желто-зеленый
  end;
end
else
  result:= '#'+Format('%.2x%.2x%.2x',
    [GetRValue(rgb),GetGValue(rgb),GetBValue(rgb)]);
end;

procedure TfrmMain.actTBAdvansedExecute(Sender: TObject);
begin
  TBViz(tlbAdvansed);
end;

procedure TfrmMain.actTBEditExecute(Sender: TObject);
begin
  TBViz(tlbEdit);
end;

procedure TfrmMain.actTBOptionsExecute(Sender: TObject);
begin
  frmConfig.PageControl1.ActivePageIndex:= 1;
  frmConfig.ShowModal;
end;

procedure TfrmMain.actTBSBarExecute(Sender: TObject);
begin
  StatusBar1.Visible:= actTBSBar.Checked;
end;

procedure TfrmMain.dlgFindFind(Sender: TObject);
 var
   S : string;
   startpos, n : integer;
 begin
   with TFindDialog(Sender) do
   begin
     {If the stored position is 0 this cannot be a find next. }
     if FSelPos = 0 then
       Options := Options - [frFindNext];

      { Figure out where to start the search and get the corresponding 
       text from the memo. }
     if frfindNext in Options then
     begin
       { This is a find next, start after the end of the last found word. }
       StartPos := FSelPos + Length(Findtext);
       S := Copy(Memo1.Lines.Text, StartPos, MaxInt);
     end
     else
     begin
       { This is a find first, start at the, well, start. }
       S := Memo1.Lines.Text;
       StartPos := 1;
     end;
     { Perform a global case-sensitive search for FindText in S }
     FSelPos := Pos(FindText, S);
     if FSelPos > 0 then
     begin
        { Found something, correct position for the location of the start 
         of search. }
       FSelPos := FSelPos + StartPos - 1;
       Memo1.SelStart := FSelPos - 1;
       Memo1.SelLength := Length(FindText);
       Memo1.SetFocus;
     end
     else
     begin
       { No joy, show a message. }
       if frfindNext in Options then
         S := Concat('Больше нет текста "', FindText,
           '" в данном документе.')
       else
         S := Concat('Текста "', FindText, '" больше нет.');
       MessageDlg(S, mtError, [mbOK], 0);
     end;
   end;
end;

procedure TfrmMain.dlgReplaceReplace(Sender: TObject);
begin
  with Sender as TReplaceDialog do
    while True do
    begin
      if Memo1.SelText <> FindText then
        dlgFindFind(Sender);
      if Memo1.SelLength = 0 then
        Break;
      Memo1.SelText := ReplaceText;
      if not (frReplaceAll in Options) then
        Break;
    end;
end;

procedure TfrmMain.FOpen;
begin
  if OpenDialog1.Execute then
  begin
    AppCapt:= OpenDialog1.FileName;
    Memo1.Lines.LoadFromFile(AppCapt);
    FChange:='';
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HtmlHelp(0, nil, HH_CLOSE_ALL, 0);
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  rep: variant;
  i: integer;
begin
  if Memo1.Modified then
  begin
    rep:= Application.MessageBox(PChar('Хотите перед закрытием сохранить изменённый файл:'
      + #13#10 + AppCapt + '?'),'Внимние! Файл не сохранён!!!',mb_YesNoCancel);

    case rep of
      //ID_CANCEL
      2: CanClose:=False;

      //ID_YES
      6:
      begin
        actFileSave.Execute;
        HtmlHelp(0, nil, HH_CLOSE_ALL, 0);
        CanClose:=True;
      end;

      //ID_NO
      7:
      begin
        HtmlHelp(0, nil, HH_CLOSE_ALL, 0);
        CanClose:=True;
      end;
    end;
  end;

  if CanClose then
    SaveConf;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  i: Integer;
  v: variant;
begin
  Application.HelpFile := ExtractFilePath(Application.ExeName) + 'help.chm';
  Application.OnIdle:=StatusBar;
  AppIni:= ExtractFilePath(Application.ExeName) + 'bbcedit.ini';
  {
  cmbColor.Items.SaveToFile(ExtractFilePath(Application.ExeName) + 'color.dat');
  cmbColor.Items.LoadFromFile(ExtractFilePath(Application.ExeName) + 'color.dat');
 //cmbColor.AddItem('кукурузные рыльца');
  cmbColor.Clear;
  cmbColor.Items.Add('Выбрать...');
  for i := 1 to 144 do
  begin
    cmbColor.Items.Add('белый');
    cmbColor.Color[i]: $ffffff;
  end;
  
  frmView.Memo1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + 'tags.cfg');
  CoTags:= frmView.Memo1.Lines.Count-1;
  for I := 0 to CoTags do
  begin
    RepTags[I]:= frmView.Memo1.Lines.Strings[I];
  end;
  frmView.Memo1.Clear; }
  FlCount:= 0;
  cmbFont.Items.Clear;
  cmbFont.Items:= Screen.Fonts;
  cmbFont.ItemIndex:=0;

  if GetFileCount('non', 'TemplEdit.exe') <> 0 then
    actUtilEdTempl.Visible:= true;

  if GetFileCount('non', 'CatEdit.exe') <> 0 then
    actUtilEdCat.Visible:= true;

  if ((actUtilEdTempl.Visible = true) or (actUtilEdCat.Visible = true)) then
    mnuUtil.Visible:= true;

  for i := 0 to btnSmile.Images.Count - 1 do
    btnSmile.Items[i].Hint:= 'Вставка тега смайлика ' +
    btnSmile.Items[i].Caption;

  Memo1.Clear;
  AppCapt:= 'Безымянный';
  Memo1.Modified:= false;
end;

procedure TfrmMain.FormPaint(Sender: TObject);
begin
  if Memo1.Modified then
    FChange:= ' <изменён>'
  else
    FChange:= '';
  frmMain.Caption:= 'AlexSid BBCode Editor - ' + AppCapt + FChange
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  StatusBar1.Panels[0].Width:= frmMain.Width - 420;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  i: integer;
  parameter: string;
begin
  parameter := ParamStr(1);
  if parameter = '/message' then
  begin
    ShowMessage('Parameter /message.');
  end;

  FIni:= TIniFile.Create(AppIni);
  Width:= StrToInt(FIni.ReadString('Main','Width','800'));
  Height:= StrToInt(FIni.ReadString('Main','Height','600'));
  i:= StrToInt(FIni.ReadString('Main','State','0'));
  case i of
    0: WindowState:=wsNormal;
    1: WindowState:=wsMinimized;
    2: WindowState:=wsMaximized;
  end;
  Top:= StrToInt(FIni.ReadString('Main','Top','10'));
  Left:= StrToInt(FIni.ReadString('Main','Left','20'));

  OpenDialog1.FilterIndex:= StrToInt(FIni.ReadString('Main','Save','0'))+1;
  SaveDialog1.FilterIndex:= StrToInt(FIni.ReadString('Main','Save','0'))+1;

  StatusBar1.Visible:= StrToBool(FIni.ReadString('StatBar','Vis','-1'));
  actTBSBar.Checked:= StatusBar1.Visible;
  actSmileViz.Checked:= StrToBool(FIni.ReadString('SmlBar','Vis','-1'));

  pnlSmile.Visible:= actSmileViz.Checked;
  actTop.Enabled:= actSmileViz.Checked;
  actLeft.Enabled:= actSmileViz.Checked;
  actRight.Enabled:= actSmileViz.Checked;
  actBottom.Enabled:= actSmileViz.Checked;

  i:= StrToInt(FIni.ReadString('SmlBar','Align','0'));
  FIni.Free;
  if actSmileViz.Checked then
  begin
   case i of
      0: actTopExecute(Sender);
      1: actLeftExecute(Sender);
      2: actRightExecute(Sender);
      3: actBottomExecute(Sender);
    end;
  end;
  TBVizible;

  actTBStandart.Checked:= tlbStandart.Visible;
  actTBEdit.Checked:= tlbEdit.Visible;
  actTBTags.Checked:= tlbTags.Visible;
  actTBAdvansed.Checked:= tlbAdvansed.Visible;

end;

function TfrmMain.GetFileCount(Dir, Mask: string): integer;
var
  fs: TSearchRec;
  str: string;
begin
  Result := 0;
  if Dir <> 'non' then
    str:= ExtractFilePath(Application.ExeName) + Dir + '\' + Mask
  else
    str:= ExtractFilePath(Application.ExeName) + '\' + Mask;

  if FindFirst(str, faAnyFile - faDirectory - faVolumeID, fs) = 0
    then
    repeat
      inc(Result);
    until FindNext(fs) <> 0;
  FindClose(fs);
end;

procedure TfrmMain.GetTeg(ind: Integer; btn: TAction);
var
  str, teg, tg, sel, char: string;
  i, nt, nx, ny, id: Integer;
  cl: LongInt;
  clr: Integer;
begin
  char:='';
  case ind of
    21: tg:= 'b';
    22: tg:= 'i';
    23: tg:= 'u';
    24:
    begin
      tg:= 'img';
      char:='=' + StrAdv;
    end;
    25:
    begin
      tg:= 'quote';
      char:='=' + StrAdv;
    end;
    26:
    begin
      tg:= 'url';
      char:='=' + StrAdv;
    end;
    27: tg:= 'pre';
    28:
    begin
      tg:= 'email';
      char:='=' + StrAdv;
    end;
    29:
    begin
      cl:= ColorToRGB(cmbColor.Selected);
      str:= Format('%.2x%.2x%.2x',[GetRValue(cl),GetGValue(cl),GetBValue(cl)]);
      tg:= 'color';
      char:= '=' + colname(cl);
    end;
    30:
    begin
      str:= cmbFont.Text;
      tg:= 'font';
      char:= '=' + str;
    end;
    31:
    begin
      str:= cmbSize.SelText;
      tg:= 'size';
      char:= '=' + str;
    end;
    32:
    begin
      tg:= '*';
      if Memo1.SelText = '' then
      begin
        teg:= '['+ tg + ']';
        inserttag(teg);
        exit;
      end;
    end;
  end;

  id:= 0;
  sel:= Memo1.SelText;
  nx:= Memo1.CaretPos.X+1;
  ny:= Memo1.CaretPos.Y;
  nt:= Memo1.SelStart;

  if sel <> '' then   //Если текст выделен
  begin
    nx:= nx - Memo1.SelLength;
    if ind = 32 then    //пункт списка
        teg:= '['+ tg + ']' + sel
    else if ind = 24 then   //Картинка вида [img=http://nmnmnmn]
      if char <> '=' then
        teg:= '['+ tg + char + ']'
      else
        teg:= '['+ tg + ']' + sel + '[/' + tg + ']'
    else               //Прочие теги
      if char <> '=' then
        teg:= '['+ tg + char + ']' + sel + '[/' + tg + ']'
      else
        teg:= '['+ tg + ']' + sel + '[/' + tg + ']';
    btn.Checked:= False;
    StrAdv:= '';
    inserttag(teg);
    if (ind = 24)or(ind = 25)or(ind = 26)or(ind = 28) then
      sel:= '';
    Memo1.SelStart:= (nt)+(Length('['+tg + char + ']'));
    Memo1.SelLength:= Length(sel);
  end
  else              //Если текст НЕ выделен
  begin
    if btn.Checked then
    begin
      teg:= '[/'+tg+']';

      btn.Checked:= False;
      StrAdv:= '';
      for i := 0 to TagArr do
        if TagTags[i] = btn then
          id:=i;
      i:= id -1;
      TagTags[id]:= nil;
      if i > 0 then
        TagTags[i].Enabled:= True;

      for i := 0 to TagArr do
        if TagClose[i] = teg then
          TagClose[i]:= '';
    end
    else
    begin
      if ind = 24 then   //Картинка вида [img=http://nmnmnmn]
      begin
        if char <> '=' then
        begin
          teg:= '['+ tg + char + ']';
          btn.Checked:= False;
          StrAdv:= '';
          inserttag(teg);
          exit;
        end
        else
        begin
          teg:= '['+ tg + ']' + sel + '[/' + tg + ']';
          btn.Checked:= False;
          StrAdv:= '';
          inserttag(teg);
          exit;
        end;
      end;

      if char <> '=' then
        teg:= '[' + tg + char + ']'
      else
        teg:= '[' + tg + ']';
      btn.Checked:= True;

      for i := 0 to TagArr do
        if TagTags[i] <> nil then
          id:=i;
      i:= id +1;
      TagTags[i]:= btn;
      if id > 0 then
        TagTags[id].Enabled:= False;

      for i := 0 to TagArr do
        if TagClose[i] <> '' then
          id:=i;
      i:= id +1;
      TagClose[i]:= '[/'+tg+']';
      Memo1.CaretPos:=Point((nx+(Length(teg)-1)), ny);
      Memo1.SetFocus;
    end;
  inserttag(teg);
  end;

  Memo1.SetFocus;
  TagChange;
end;

function TfrmMain.GetToken(aString, SepChar: string; TokenNum: Byte): string;
{
параметры: aString : полная строка

SepChar   : единственный символ, служащий
            разделителем между словами (подстроками)
TokenNum  : номер требуемого слова (подстроки))
result    : искомое слово или пустая строка, если количество слов
            меньше значения 'TokenNum'
}
var
  Token : string;
  str,s : string;
  StrLen: Byte;
  TNum  : Byte;
  TEnd  : Byte;
  i     : integer;
  sch   : pchar;
begin
  StrLen := Length(aString);
  TNum := 1;
  TEnd := StrLen;
  if SepChar <> 'h' then
  begin
    while ((TNum <= TokenNum) and (TEnd <> 0)) do
    begin
      TEnd := Posex(SepChar, aString, Memo1.CaretPos.X+1);
      if TEnd <> 0 then
      begin
        Token := Copy(aString, Memo1.CaretPos.X+1, TEnd-Memo1.CaretPos.X);
        Delete(aString, 1, TEnd);
        Inc(TNum);
      end
      else
      begin
        Token := aString;
      end;
    end;
    if TNum >= TokenNum then
    begin
      GetToken := Token;
    end
    else
    begin
      GetToken := '';
    end;
  end
  else
  begin
    SepChar:= 'http://';

    while ((TNum <= TokenNum) and (TEnd <> 0)) do
    begin
      TEnd := Posex(SepChar, aString, Memo1.CaretPos.X+1);
      if TEnd <> 0 then
      begin
        Token := Copy(aString, BMSearch(Memo1.CaretPos.X+1,aString,'http://'),
          Length(aString)-BMSearch(Memo1.CaretPos.X+1,aString,'http://')+1);
        i:= 1;
        str:= '';
        while s <> ' ' do
        begin
          s:= Copy(Token,i,1);
          str:= str + s;
          i:= i+1;
        end;
        Token := Copy(str,1,Length(str)-1);
        Delete(aString, 1, TEnd);
        Inc(TNum);
      end
      else
      begin
        Token := '';
      end;
    end;
//
//    if Token = '' then
//    begin
//      SepChar:= 'www.';
//
//      while ((TNum <= TokenNum) and (TEnd <> 0)) do
//      begin
//        TEnd := Posex(SepChar, aString, Memo1.CaretPos.X+1);
//        if TEnd <> 0 then
//        begin
//          Token := Copy(aString, BMSearch(Memo1.CaretPos.X+1,aString,'www.'),
//            Length(aString)-BMSearch(Memo1.CaretPos.X+1,aString,'www.')+1);
//          i:= 1;
//          str:= '';
//          while s <> ' ' do
//          begin
//            s:= Copy(Token,i,1);
//            str:= str + s;
//            i:= i+1;
//          end;
//          Token := Copy(str,1,Length(str)-1);
//          Delete(aString, 1, TEnd);
//          Inc(TNum);
//        end;
//      end
//    end
//    else
//    begin
//      Token := '';
//    end;

    if TNum >= TokenNum then
    begin
      GetToken := Token;
    end
    else
    begin
      GetToken := '';
    end;
  end;
end;

function TfrmMain.inserttag(s: string): string;
var
 u:integer;
begin
  for u:=1 to length(s) do
    Memo1.Perform(WM_CHAR, ord(s[u]),0);
end;

procedure TfrmMain.Memo1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TfrmMain.Memo1DblClick(Sender: TObject);
var
  i, n, ni, nx, nt, ny, Line: Integer;
  str, sel: string;
begin
  nx:= Memo1.CaretPos.X;
  ny:= Memo1.CaretPos.Y;
  str:= Memo1.Lines.Strings[ny];
  sel:= Memo1.SelText;

  n:= Pos(':',str);
  {with (Sender as TMemo) do
   begin
     Line      := Perform(EM_LINEFROMCHAR, SelStart, 0);
     SelStart  := Perform(EM_LINEINDEX, n, 0);
     SelLength := Length(Lines[ny]);
   end; }

  {//Memo1.PaintTo(Memo1.Handle,7,12);
  Memo1.SelStart:=nx; // установить начальное положение выделения
  Memo1.SelLength:=n; // установить длину выделенного текста  }
end;

procedure TfrmMain.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if GetKeyState(VK_Insert)=1 then
    Memo1.SelLength := 1;
  Refresh;
end;

function TfrmMain.NumToken(aString, SepChar: string): Byte;
{
parameters: aString : полная строка

SepChar : единственный символ, служащий
разделителем между словами (подстроками)
result    : количество найденных слов (подстрок)
}
var
  RChar: Char;
  StrLen: Byte;
  TNum: Byte;
  TEnd: Byte;
begin
  if SepChar = ' ' then
  begin
    RChar := '*'
  end
  else
  begin
    RChar := '#'
  end;
  StrLen := Length(aString);
  TNum := 0;
  TEnd := StrLen;
  while TEnd <> 0 do
  begin
    Inc(TNum);
    TEnd := Pos(SepChar, aString);
    if TEnd <> 0 then
    begin
      aString[TEnd] := RChar;
    end;
  end;
  Result := TNum;
end;

procedure TfrmMain.popAdvansedTagPopup(Sender: TObject);
begin
//  if TToolButton(Sender) = tlbTagsLink then
//    Memo1.Lines.Add('123');
end;

procedure TfrmMain.actEditCopyAllExecute(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.CopyToClipboard;
  Memo1.SelLength:= 0;
end;

procedure TfrmMain.SaveConf;
var
  i: integer;
begin
    if WindowState = wsNormal then
      i:= 0
    else if WindowState = wsMinimized then
      i:= 1
    else
      i:= 2;
    FIni:= TIniFile.Create(AppIni);
    FIni.WriteString('Main','State',IntToStr(i));
    FIni.WriteString('Main','Width',IntToStr(Width));
    FIni.WriteString('Main','Height',IntToStr(Height));
    FIni.WriteString('Main','Top',IntToStr(Top));
    FIni.WriteString('Main','Left',IntToStr(Left));

    FIni.WriteString('StatBar','Vis',BoolToStr(StatusBar1.Visible));
    FIni.WriteString('SmlBar','Vis',BoolToStr(pnlSmile.Visible));
    FIni.WriteString('TBEdit','Vis',BoolToStr(actTBEdit.Checked));
    FIni.WriteString('TBTags','Vis',BoolToStr(actTBTags.Checked));
    FIni.WriteString('TBAdv','Vis',BoolToStr(actTBAdvansed.Checked));
    if tlbStandart.Visible then
    begin
      FIni.WriteString('TBStand','Width',IntToStr(tlbStandart.Width));
      FIni.WriteString('TBStand','Left',IntToStr(tlbStandart.Left));
      FIni.WriteString('TBStand','Top',IntToStr(tlbStandart.Top));
    end;

    if tlbEdit.Visible then
    begin
      FIni.WriteString('TBEdit','Width',IntToStr(tlbEdit.Width));
      FIni.WriteString('TBEdit','Left',IntToStr(tlbEdit.Left));
      FIni.WriteString('TBEdit','Top',IntToStr(tlbEdit.Top));
    end;

    if tlbTags.Visible then
    begin
      FIni.WriteString('TBTags','Width',IntToStr(tlbTags.Width));
      FIni.WriteString('TBTags','Left',IntToStr(tlbTags.Left));
      FIni.WriteString('TBTags','Top',IntToStr(tlbTags.Top));
    end;

    if tlbAdvansed.Visible then
    begin
      FIni.WriteString('TBAdv','Width',IntToStr(tlbAdvansed.Width));
      FIni.WriteString('TBAdv','Left',IntToStr(tlbAdvansed.Left));
      FIni.WriteString('TBAdv','Top',IntToStr(tlbAdvansed.Top));
    end;
    FIni.Free;
end;

procedure TfrmMain.ShowHint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:= Application.Hint;
end;

procedure TfrmMain.StatusBar(Sender: TObject; var Done: Boolean);
var
  MS: TMemoryStatus;
begin
  StatusBar1.Panels[0].Text:='  ' + Application.Hint;

  if GetKeyState(VK_Numlock)=1 then
    StatusBar1.Panels[1].Text:= 'Цифры'
  else
    StatusBar1.Panels[1].Text:= 'Стрелки';

  if GetKeyState(VK_CAPITAL)=1 then
    StatusBar1.Panels[2].Text:='ABC'
  else
    StatusBar1.Panels[2].Text:='abc';

  if GetKeyState(VK_Insert)=1 then
    StatusBar1.Panels[3].Text:='Замена'
  else
    StatusBar1.Panels[3].Text:='Вставка';

  StatusBar1.Panels[4].Text:=TimeToStr(Time);

  GlobalMemoryStatus(MS);
  StatusBar1.Panels[5].Text:='Память загружена на: ' +
    Format('%d %%', [MS.dwMemoryLoad]);
end;

function TfrmMain.StrReplace(const Str, Str1, Str2: string): string;
// str - исходная строка
// str1 - подстрока, подлежащая замене
// str2 - заменяющая строка
var
  P, L: Integer;
begin
  Result := str;
  L := Length(Str1);
  repeat
    P := Pos(Str1, Result); // ищем подстроку
    if P > 0 then
    begin
      Delete(Result, P, L); // удаляем ее
      Insert(Str2, Result, P); // вставляем новую
    end;
  until P = 0;
end;

procedure TfrmMain.TagChange;
var
  i, id: Integer;
begin
  for i := 0 to TagArr do
    if TagClose[i]='' then
      id:=0
    else
    begin
      id:=1;
      Break;
    end;

  if id = 0 then
    actCloseAll.Enabled:=False
  else
    actCloseAll.Enabled:=True;
end;

procedure TfrmMain.TBViz(tb: TToolBar);
var
  i: integer;
  str: string;
  act: TAction;
begin
  if tb = tlbTags then
  begin
    str:= 'TBTags';
    act:= actTBTags;
  end;

  if tb = tlbEdit then
  begin
    str:= 'TBEdit';
    act:= actTBEdit;
  end;

  if tb = tlbStandart then
  begin
    str:= 'TBStand';
    act:= actTBStandart;
  end;

  if tb = tlbAdvansed then
  begin
    str:= 'TBAdv';
    act:= actTBAdvansed;
  end;

  if tb.ShowCaptions then
    if tb.List = false then
      i:= 1
    else
      i:= 2
  else
    if tb.List = false then
      i:= 0;

  FIni:= TIniFile.Create(AppIni);
  FIni.WriteString(str,'Width',IntToStr(tb.Width));
  FIni.WriteString(str,'Left',IntToStr(tb.Left));
  FIni.WriteString(str,'Top',IntToStr(tb.Top));
  FIni.WriteString(str,'Capt',IntToStr(i));

  tb.Visible:= act.Checked;
  FIni.WriteString(str,'Vis',BoolToStr(act.Checked));
  FIni.Free;
  TBVizible;
end;

procedure TfrmMain.TBVizible;
var
  i: integer;
begin
  FIni:= TIniFile.Create(AppIni);

  tlbStandart.Visible:= StrToBool(FIni.ReadString('TBStand','Vis','-1'));
  tlbEdit.Visible:= StrToBool(FIni.ReadString('TBEdit','Vis','-1'));
  tlbTags.Visible:= StrToBool(FIni.ReadString('TBTags','Vis','-1'));
  tlbAdvansed.Visible:= StrToBool(FIni.ReadString('TBAdv','Vis','-1'));

  if tlbStandart.Visible then
  begin
    tlbStandart.Width:= StrToInt(FIni.ReadString('TBStand','Width','136'));
    tlbStandart.Left:= StrToInt(FIni.ReadString('TBStand','Left','9'));
    tlbStandart.Top:= StrToInt(FIni.ReadString('TBStand','Top','0'));
    i:= StrToInt(FIni.ReadString('TBStand','Capt','0'));
    case i of
      0:
      begin
        tlbStandart.ShowCaptions:=false;
        tlbStandart.List:= false;
      end;
      1:
      begin
        tlbStandart.ShowCaptions:=true;
        tlbStandart.List:= false;
      end;
      2:
      begin
        tlbStandart.ShowCaptions:=true;
        tlbStandart.List:= true;
      end;
    end;
  end;

  if tlbEdit.Visible then
  begin
    tlbEdit.Width:= StrToInt(FIni.ReadString('TBEdit','Width','310'));
    tlbEdit.Left:= StrToInt(FIni.ReadString('TBEdit','Left','154'));
    tlbEdit.Top:= StrToInt(FIni.ReadString('TBEdit','Top','0'));
    i:= StrToInt(FIni.ReadString('TBEdit','Capt','0'));
    case i of
      0:
      begin
        tlbEdit.ShowCaptions:=false;
        tlbEdit.List:= false;
      end;
      1:
      begin
        tlbEdit.ShowCaptions:=true;
        tlbEdit.List:= false;
      end;
      2:
      begin
        tlbEdit.ShowCaptions:=true;
        tlbEdit.List:= true;
      end;
    end;
  end;

  if tlbTags.Visible then
  begin
    tlbTags.Width:= StrToInt(FIni.ReadString('TBTags','Width','401'));
    tlbTags.Left:= StrToInt(FIni.ReadString('TBTags','Left','369'));
    tlbTags.Top:= StrToInt(FIni.ReadString('TBTags','Top','27'));
    i:= StrToInt(FIni.ReadString('TBTags','Capt','0'));
    case i of
      0:
      begin
        tlbTags.ShowCaptions:=false;
        tlbTags.List:= false;
      end;
      1:
      begin
        tlbTags.ShowCaptions:=true;
        tlbTags.List:= false;
      end;
      2:
      begin
        tlbTags.ShowCaptions:=true;
        tlbTags.List:= true;
      end;
    end;
  end;

  if tlbAdvansed.Visible then
  begin
    tlbAdvansed.Width:= StrToInt(FIni.ReadString('TBAdv','Width','350'));
    tlbAdvansed.Left:= StrToInt(FIni.ReadString('TBAdv','Left','9'));
    tlbAdvansed.Top:= StrToInt(FIni.ReadString('TBAdv','Top','27'));
    i:= StrToInt(FIni.ReadString('TBAdv','Capt','0'));
    case i of
      0:
      begin
        tlbAdvansed.ShowCaptions:=false;
        tlbAdvansed.List:= false;
      end;
      1:
      begin
        tlbAdvansed.ShowCaptions:=true;
        tlbAdvansed.List:= false;
      end;
      2:
      begin
        tlbAdvansed.ShowCaptions:=true;
        tlbAdvansed.List:= true;
      end;
    end;
  end;
  FIni.Free;
  Refresh;
end;

procedure TfrmMain.tlbTagsImageMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  TagAdv:= 1;
end;

procedure TfrmMain.tlbTagsLinkMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  TagAdv:= 2;
end;

procedure TfrmMain.tlbTagsMailMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  TagAdv:= 3;
end;

procedure TfrmMain.tlbTagsQuoteMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  TagAdv:= 4;
end;

end.
