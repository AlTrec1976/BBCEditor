unit untWizDesc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  IniFiles, Jpeg, Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, XPMan,
  ExtDlgs, Grids, ValEdit;

type
  TfrmWizDesc = class(TForm)
    Panel2: TPanel;
    btnHelp: TBitBtn;
    btnBack: TBitBtn;
    btnNext: TBitBtn;
    btnConr: TBitBtn;
    XPManifest1: TXPManifest;
    dlgSave: TSaveTextFileDialog;
    btnAdd: TBitBtn;
    pgcWizard: TPageControl;
    tbsBase: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    btnPath: TSpeedButton;
    Panel1: TPanel;
    lblBase: TStaticText;
    txtName: TLabeledEdit;
    cmbType: TComboBox;
    cmbTampl: TComboBox;
    chkSave: TCheckBox;
    txtPath: TLabeledEdit;
    tbsChar: TTabSheet;
    vleChar: TValueListEditor;
    Panel3: TPanel;
    lblChar: TStaticText;
    tbsDesc: TTabSheet;
    Panel5: TPanel;
    lblDesc: TStaticText;
    tbsLinks: TTabSheet;
    vleLink: TValueListEditor;
    Panel4: TPanel;
    lblLink: TStaticText;
    Label1: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    btnOk: TBitBtn;
    procedure vleLinkClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbsLinksExit(Sender: TObject);
    procedure txtNameExit(Sender: TObject);
    procedure tbsDescExit(Sender: TObject);
    procedure tbsCharExit(Sender: TObject);
    procedure tbsBaseExit(Sender: TObject);
    procedure cmbTypeChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnPathClick(Sender: TObject);
    procedure chkSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbTamplChange(Sender: TObject);
    function InsTags(Str, Str1, Mark: string): string;
    function HtmlTags(Str, Mark: string): string;
    function WStr(Url,Img: string): string;

  private
    { Private declarations }
  public
    { Public declarations }
    TplFName: array of string;
    TplName: array of string;
  end;
const
  Cnt = 20;

var
  frmWizDesc: TfrmWizDesc;
  CaptDesc, PathDesc: string;
  CharName: array[0..Cnt] of string;

implementation

uses untMain, untViewer, untAbout;

{$R *.dfm}

procedure TfrmWizDesc.btnAddClick(Sender: TObject);
var
  str: string;
begin
  case pgcWizard.ActivePage.PageIndex of
    1:
    begin
      str:= InputBox('Ввод заголовка','Введите заголовок','');
      if str <> '' then
        vleChar.InsertRow(str,'',true);
    end;
    3:
    begin
      str:= InputBox('Ввод заголовка','Введите адрес URL','http://');
      if str <> '' then
        vleLink.InsertRow(str,'',true);
    end;
  end;
end;

procedure TfrmWizDesc.btnBackClick(Sender: TObject);
begin
  pgcWizard.ActivePageIndex:= pgcWizard.ActivePageIndex-1;
end;

procedure TfrmWizDesc.btnNextClick(Sender: TObject);
begin
  pgcWizard.ActivePageIndex:= pgcWizard.ActivePageIndex+1
end;

procedure TfrmWizDesc.btnOkClick(Sender: TObject);
var
  i, y: integer;
  cp, vr, str: string;
begin
    Memo3.Lines.Clear;
    Memo3.Lines.Add(InsTags(txtName.Text,'','Caption'));

    cp:= vleLink.Cells[0,1];
    vr:= vleLink.Cells[1,1];
    str:= WStr(cp,vr);

    if (str = 'img') or (str = 'uimg') then
      Memo3.Lines.Add(InsTags(cp,vr,WStr(cp,vr)));

    for i := 1 to vleChar.RowCount - 1 do
    begin
      cp:= vleChar.Cells[0,i];
      vr:= vleChar.Cells[1,i];

      if cp = '-' then
      begin
          Memo3.Lines.Add(' ');
        end
        else
        if ((cp <> '') and (vr <> '')) then
        begin
          str:= WStr('',vr);
          if str = 'img' then
            vr:= InsTags(vr,vr,'url');

          Memo3.Lines.Add(InsTags((cp + ':'),'','Title') + ' ' +
            InsTags(vr,'','Charact'));
        end;
      end;

    if Memo1.Text <> '' then
    begin
      Memo3.Lines.Add(InsTags('Описание:','','Title'));

      for y := 0 to Memo1.Lines.Count - 1 do
      begin
        Memo3.Lines.Add(InsTags(Memo1.Lines.Strings[y],'','Descript'));
      end;
    end;

    if vleLink.RowCount > 1 then
    begin
//      y:= 0;
      Memo3.Lines.Add(InsTags('Скриншоты:','','Title'));
      for i := 2 to vleLink.RowCount - 1 do
      begin
        cp:= vleLink.Cells[0,i];
        vr:= vleLink.Cells[1,i];
//        if ((cp <> '') or (vr <> '')) then
//          y:= y + 1;

        if (WStr(cp,vr) <> '') then
          if (vr <> '') then
            Memo3.Lines.Add(InsTags(cp,vr,WStr(cp,vr)))
          else
            Memo3.Lines.Add(InsTags(cp,cp,WStr(cp,vr)));

      end;
    end;

    if Memo2.Text <> '' then
    begin
      Memo3.Lines.Add(InsTags('От автора:','','Title'));

      for y := 0 to Memo2.Lines.Count - 1 do
      begin
        Memo3.Lines.Add(InsTags(Memo2.Lines.Strings[y],'','Postcript'));
      end;
    end;

  frmMain.Memo1.Text:= Memo3.Text;
  Close;
end;

procedure TfrmWizDesc.btnPathClick(Sender: TObject);
begin
//  if dlgSave.Execute then
//  begin
//    if ExtractFileExt(dlgSave.FileName) <> '.bb!' then
//      dlgSave.FileName:= dlgSave.FileName + '.bb!';
//    txtPath.Text:= dlgSave.FileName;
//  end;
end;

procedure TfrmWizDesc.chkSaveClick(Sender: TObject);
begin
//  txtPath.Enabled:= chkSave.Checked;
//  btnPath.Enabled:= chkSave.Checked;
end;

procedure TfrmWizDesc.cmbTamplChange(Sender: TObject);
var
  i: integer;
  str: string;
  //fl: TFileName;
begin
  frmView.Close;
  Memo3.Clear;

  Memo3.Lines.Add('<HTML>');
  Memo3.Lines.Add('<HEAD>');
  Memo3.Lines.Add('</HEAD>');
  Memo3.Lines.Add('<BODY>');

  Memo3.Lines.Add(HtmlTags('Название раздачи категории ' +
    cmbType.Text, 'Caption') + '<br>');
  Memo3.Lines.Add('<br>');

  str:= '<img src="' + ExtractFilePath(Application.ExeName) +
    'template\logo.gif' + '" width="300" height="400" border="0">' + '<br>';

  Memo3.Lines.Add(str);
  Memo3.Lines.Add('<br>');

  str:= 'Какой-то текст';
  for I := 1 to vleChar.RowCount - 1 do
    if vleChar.Cells[0,i] <> '' then
      Memo3.Lines.Add(HtmlTags(vleChar.Cells[0,i] + ': ', 'Title') +
        HtmlTags(str, 'Charact') + '<br>');
  Memo3.Lines.Add('<br>');

  Memo3.Lines.Add(HtmlTags('Описание: ', 'Title') + '<br>');
  str:= 'Здесь будет полное описание раздачи, как например это:';
  Memo3.Lines.Add(HtmlTags(str, 'Descript') + '<br>');
  str:= 'AlexSid BBCode Editor является бесплатным специализированным ' +
    'текстовым редактором с функциями автоматической вставки тегов BBCode.'; 
  Memo3.Lines.Add(HtmlTags(str, 'Descript') + '<br>');
  str:= 'Теперь можно забыть о неудобных on-line редакторах BBCode при ' +
    'оформлении сообщений форумов, написании коментариев и т.д. Отредактировав ' +
    'или написав сообщение в удобном и привычном режиме, который предоставит' +
    ' AlexSid BBCode Editor, Вам останется только перенести его в окно ' +
    'соответсвующего форума и нажать кнопку "Отправить"!';
  Memo3.Lines.Add(HtmlTags(str, 'Descript') + '<br>');
  Memo3.Lines.Add('<br>');

  Memo3.Lines.Add(HtmlTags('Скриншоты: ', 'Title') + '<br>');
  str:= '<img src="' + ExtractFilePath(Application.ExeName) +
    'template\logo.gif' + '" width="200" height="150" border="0">';
  Memo3.Lines.Add(str + ' ' + str + ' ' + str + ' ' + '<br>');

  Memo3.Lines.Add(HtmlTags('От автора: ', 'Title') + '<br>');
  str:= 'Ну, а здесь - какой-либо комментарий от автора раздачи, ' +
    'как например тот, что Вы здесь видите!';
  Memo3.Lines.Add(HtmlTags(str, 'Postcript'));

  Memo3.Lines.Add('</BODY>');
  Memo3.Lines.Add('</HTML>');
  frmView.Memo1.Visible:= False;

  frmView.Memo1.Text:= Memo3.Text;
  frmView.Caption:= 'Предосмотр шаблона - ' + cmbTampl.Text;
  frmView.Show;
  frmWizDesc.SetFocus;
end;

procedure TfrmWizDesc.cmbTypeChange(Sender: TObject);
var
  FIni: TIniFile;
  str: string;
  i, n: integer;
begin
  vleChar.Strings.Clear;
  str:= ExtractFilePath(Application.ExeName) + 'template\type.cfg';
  FIni:= TIniFile.Create(str);

  for I := 0 to High(CharName) - 1 do
  begin
    str:= FIni.ReadString(cmbType.Text,'C'+(IntToStr(i+1)),'0');
    if str <> '0' then
      vleChar.InsertRow(str,'',true);
  end;

  str:= FIni.ReadString(cmbType.Text,'TMPL','0');
  if str <> '0' then
  begin
    str:= ExtractFilePath(Application.ExeName) + 'template\' + str + '.tpb';
    for I := 0 to High(TplFName) do
    begin
      if TplFName[i] = str then
        n:= i;
    end;
  end
  else
  begin
    n:= 0;
  end;
  FIni.Free;

  cmbTampl.ItemIndex:= n;
  try
    cmbTamplChange(Sender);
  except
  end;
end;

procedure TfrmWizDesc.FormPaint(Sender: TObject);
begin
  case pgcWizard.ActivePageIndex of
    0:
    begin
    btnNext.Visible:= true;
    btnOk.Visible:= false;
    btnBack.Enabled:= false;
    btnAdd.Visible:= false;
    end;
    1:
    begin
      frmView.Close;
      btnBack.Enabled:= true;
      btnNext.Visible:= true;
      btnOk.Visible:= false;
      btnAdd.Visible:= true;
    end;
    2:
    begin
      frmView.Close;
      btnBack.Enabled:= true;
      btnNext.Visible:= true;
      btnOk.Visible:= false;
      btnAdd.Visible:= false;
    end;
    3:
    begin
      frmView.Close;
      btnBack.Enabled:= true;
      btnNext.Visible:= false;
      btnOk.Visible:= true;
      btnAdd.Visible:= true;
    end;
  end;
end;

procedure TfrmWizDesc.FormShow(Sender: TObject);
var
  FIni: TIniFile;
  i: integer;
  sr: TSearchRec;
  FileName, Folder, str: string;
begin
  btnBack.Enabled:= False;
  txtName.Text:= '';
  cmbTampl.Items.Clear;
  cmbType.Items.Clear;

  vleChar.Strings.Clear;
  vleLink.Strings.Clear;

  i:= 0;
  Folder:= ExtractFilePath(Application.ExeName) + 'template\';
  //ScanFolder(str);
  if FindFirst(Folder+'*.tpb',faAnyFile,sr) = 0 then
  begin
    repeat
      FileName:= Folder + sr.Name;
      TplFName[i]:= FileName;
      FIni:= TIniFile.Create(TplFName[i]);
      str:= FIni.ReadString('Main','Name','0');
      if str <> '0' then
      begin
        TplName[i]:= str;
        cmbTampl.Items.Add(TplName[i]);
        i:= i+1;
      end;
      FIni.Free;
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;

  pgcWizard.ActivePageIndex:= 0;
  chkSave.Checked:= false;
  txtPath.Enabled:= chkSave.Checked;
  btnPath.Enabled:= chkSave.Checked;

  lblBase.Caption:= 'Это Первая страница Мастера Описания. Внесите сюда данные'
    + ' раздачи. Поля отмеченные звёздочкой(*) - обязательны для заполнения. '
    + 'Поле Название будет как именем файла по-умолчанию, так и заголовком раздачи';
  lblChar.Caption:= 'Здесь внесите характеристики раздачи. Нажав на кнопку Добавить, '
    + 'введите новые поля ввода. При этом все изменения будут действовать в ' +
    'течении данной сессии не изменяя описание категорий.';
  lblDesc.Caption:= 'В поле описание внесите описание раздачи, а в поле ' +
    'Примечание - то что Вы хотите написать лично от себя';
  lblLink.Caption:= 'На данной странице добавляются ссылки и изображения, ' +
    'при этом самой первой идёт постер раздачи, а все остальные - скриншоты! ' +
    'Указывая ссылку напротив картинки Вы тем самым создаёте гиперссылку ' +
    'картинки. Если напротив ссылки написать любой текст, то он автоматитчески ' +
    'превратится в гиперссылку!';

  str:= ExtractFilePath(Application.ExeName) + 'template\type.cfg';
  FIni:= TIniFile.Create(str);
  FIni.ReadSections(cmbType.Items);
  FIni.Free;

  cmbType.ItemIndex:= 0;
  //cmbTampl.ItemIndex:= 0;

  txtPath.Enabled:= False;
  chkSave.Enabled:= false;
  txtPath.Hint:= 'К сожалению в настоящей версии недоступна';
  chkSave.Hint:= 'К сожалению в настоящей версии недоступна';

  cmbTypeChange(Sender);
  cmbTamplChange(Sender);

  pgcWizard.ActivePageIndex:= 0;
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
end;

function TfrmWizDesc.HtmlTags(Str, Mark: string): string;
var
  tag, fnt, clr, sz: string;
  FIni: TIniFile;
begin
    fnt:= '';
    clr:= '';
    sz:= '';

    Result:= str;
    FIni:= TIniFile.Create(TplFName[cmbTampl.ItemIndex]);

    fnt:= FIni.ReadString(Mark,'Font','0');
    clr:= FIni.ReadString(Mark,'Color','0');
    sz:= FIni.ReadString(Mark,'Size','0');

    if fnt = '0' then
      fnt:= '';
    if clr = '0' then
      clr:= '';
    if sz = '0' then
      sz:= '';

    if ((fnt <> '0') or (clr <> '0') or (sz <> '0')) then
    begin
      if fnt <> '' then
        fnt:= ' face="' + fnt + '"';
      if clr <> '' then
        clr:= ' color="' + clr + '"';
      if sz <> '' then
        sz:= ' size="' + sz + '"';

      tag:= fnt + clr + sz;

      Result:= '<font' + tag + '>' + Result + '</font>';
    end;

    tag:= FIni.ReadString(Mark,'B','0');
    if tag <> '0' then
      Result:= '<b>' + Result + '</b>';

    tag:= FIni.ReadString(Mark,'I','0');
    if tag <> '0' then
      Result:= '<i>' + Result + '</i>';

    tag:= FIni.ReadString(Mark,'U','0');
    if tag <> '0' then
      Result:= '<u>' + Result + '</u>';
    FIni.Free;
end;

function TfrmWizDesc.InsTags(Str, Str1, Mark: string): string;
var
  tag: string;
  FIni: TIniFile;
begin
  if (Mark = 'url') or (Mark = 'uimg') or (Mark = 'img') then
  begin
    if Mark = 'url' then
      Result:= '[url=' + Str + ']' + Str1 + '[/url]';

    if Mark = 'uimg' then
      Result:= '[url=' + Str + ']' + '[img=' + Str1 + ']' + '[/url]';

    if Mark = 'img' then
      Result:= '[img=' + Str1 + ']';
  end
  else
  begin
    Result:= str;
    FIni:= TIniFile.Create(TplFName[cmbTampl.ItemIndex]);

    tag:= FIni.ReadString(Mark,'Font','0');
    if tag <> '0' then
      Result:= '[font=' + tag + ']' + Result + '[/font]';

    tag:= FIni.ReadString(Mark,'Color','0');
    if tag <> '0' then
      Result:= '[color=' + tag + ']' + Result + '[/font]';

    tag:= FIni.ReadString(Mark,'Size','0');
    if tag <> '0' then
      Result:= '[size=' + tag + ']' + Result + '[/font]';

    tag:= FIni.ReadString(Mark,'B','0');
    if tag <> '0' then
      Result:= '[b]' + Result + '[/b]';

    tag:= FIni.ReadString(Mark,'I','0');
    if tag <> '0' then
      Result:= '[i]' + Result + '[/i]';

    tag:= FIni.ReadString(Mark,'U','0');
    if tag <> '0' then
      Result:= '[u]' + Result + '[/u]';

    FIni.Free;
  end;
end;

procedure TfrmWizDesc.tbsBaseExit(Sender: TObject);
begin
  {
  if txtPath.Text = '' then
    chkSave.Checked:= false;

  if chkSave.Checked then
  begin
    Memo3.Lines.Add(InsTags(txtName.Text,'','Caption'));
    Memo3.Lines.SaveToFile(txtPath.Text);
  end;
  }
end;

procedure TfrmWizDesc.tbsCharExit(Sender: TObject);
//var
//  i: integer;
//  cp, vr: string;
begin
  {
  if chkSave.Checked then
  begin
    Memo3.Lines.Clear;
    Memo3.Lines.Add(InsTags(txtName.Text,'','Caption'));

    for i := 0 to vleChar.RowCount - 1 do
    begin
      cp:= vleChar.Cells[0,i];
      vr:= vleChar.Cells[1,i];

      if (cp <> '') and (vr <> '') then
        Memo3.Lines.Add(InsTags((cp + ': '),'','Title') +
          InsTags((' ' + vr),'','Charact'));
    end;

    Memo3.Lines.SaveToFile(txtPath.Text);
  end;
  }
end;

procedure TfrmWizDesc.tbsDescExit(Sender: TObject);
//var
//  i, y: integer;
//  cp, vr: string;
begin
  {
  if chkSave.Checked then
  begin
    Memo3.Lines.Clear;
    Memo3.Lines.Add(InsTags(txtName.Text,'','Caption'));

    for i := 0 to vleChar.RowCount - 1 do
    begin
      cp:= vleChar.Cells[0,i];
      vr:= vleChar.Cells[1,i];

      if (cp <> '') and (vr <> '') then
        Memo3.Lines.Add(InsTags((cp + ':'),'','Title') + ' ' + InsTags(vr,'','Charact'));
    end;

    if Memo1.Text <> '' then
    begin
      Memo3.Lines.Add(InsTags('Описание:','','Title'));

      for y := 0 to Memo1.Lines.Count - 1 do
      begin
        Memo3.Lines.Add(InsTags(Memo1.Lines.Strings[y],'','Descript'));
      end;
    end;

    if Memo2.Text <> '' then
    begin
      Memo3.Lines.Add(InsTags('От автора:','','Title'));

      for y := 0 to Memo2.Lines.Count - 1 do
      begin
        Memo3.Lines.Add(InsTags(Memo2.Lines.Strings[y],'','Descript'));
      end;
    end;

    Memo3.Lines.SaveToFile(txtPath.Text);
  end;
  }
end;

procedure TfrmWizDesc.tbsLinksExit(Sender: TObject);
//var
//  i, y: integer;
//  cp, vr: string;
begin
//  if chkSave.Checked then
//  begin
//    Memo3.Lines.Clear;
//    Memo3.Lines.Add(InsTags(txtName.Text,'','Caption'));
//
//    cp:= vleLink.Cells[0,1];
//    vr:= vleLink.Cells[1,1];
//
//    if (WStr(cp,vr) = 'img') or (WStr(cp,vr) = 'uimg') then
//      Memo3.Lines.Add(InsTags(cp,vr,WStr(cp,vr)));
//
//    for i := 0 to vleChar.RowCount - 1 do
//    begin
//      cp:= vleChar.Cells[0,i];
//      vr:= vleChar.Cells[1,i];
//
//      if (cp <> '') and (vr <> '') then
//        Memo3.Lines.Add(InsTags((cp + ':'),'','Title') + ' ' + InsTags(vr,'','Charact'));
//    end;
//
//    if Memo1.Text <> '' then
//    begin
//      Memo3.Lines.Add(InsTags('Описание:','','Title'));
//
//      for y := 0 to Memo1.Lines.Count - 1 do
//      begin
//        Memo3.Lines.Add(InsTags(Memo1.Lines.Strings[y],'','Descript'));
//      end;
//    end;
//
//    if vleLink.RowCount > 3 then
//    begin
//      y:= 0;
//      Memo3.Lines.Add(InsTags('Скриншоты:','','Title'));
//      for i := 2 to vleLink.RowCount - 1 do
//      begin
//        cp:= vleLink.Cells[0,i];
//        vr:= vleLink.Cells[1,i];
//        if (cp <> '') or (vr <> '') then
//          y:= y + 1;
//
//        if (WStr(cp,vr) <> '') then
//          Memo3.Lines.Add(InsTags(cp,vr,WStr(cp,vr)));
//      end;
//    end;
//
//    if Memo2.Text <> '' then
//    begin
//      Memo3.Lines.Add(InsTags('От автора:','','Title'));
//
//      for y := 0 to Memo2.Lines.Count - 1 do
//      begin
//        Memo3.Lines.Add(InsTags(Memo2.Lines.Strings[y],'','Postcript'));
//      end;
//    end;
//
//    Memo3.Lines.SaveToFile(txtPath.Text);
//  end;
end;

procedure TfrmWizDesc.txtNameExit(Sender: TObject);
begin
//  if txtName.Text <> '' then
//    dlgSave.FileName:= txtName.Text;
end;

procedure TfrmWizDesc.vleLinkClick(Sender: TObject);
begin
//
end;

function TfrmWizDesc.WStr(Url, Img: string): string;
var
  str, st: string;
begin
  result:= '';

  if (Length(Url) > 9) then
    str:= Copy(Url,0,7);
  if (Length(Img) > 9) then
    st:= Copy(Img,0,7);

  if ((str = 'http://') and (st = 'http://')) then
    result:= 'uimg';
  if ((str <> 'http://') and (st = 'http://')) then
    result:= 'img';
  if ((str = 'http://') and (st <> 'http://')) then
      result:= 'url';

  if result = '' then
  begin
    if (Length(Url) > 9) then
      str:= Copy(Url,0,4);
    if (Length(Img) > 9) then
      st:= Copy(Img,0,4);

    if ((str = 'www.') and (st = 'www.')) then
      result:= 'uimg';
    if ((str <> 'www.') and (st = 'www.')) then
      result:= 'img';
    if ((str = 'www.') and (st <> 'www.')) then
      result:= 'url';
  end;
end;

end.
