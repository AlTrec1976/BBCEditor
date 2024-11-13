program bbc;

uses
  Forms,
  untMain in 'untMain.pas' {frmMain},
  untAbout in 'untAbout.pas' {frmAbout},
  untViewer in 'untViewer.pas' {frmView},
  untWizDesc in 'untWizDesc.pas' {frmWizDesc},
  untConfig in 'untConfig.pas' {frmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'AlexSid BBCode Editor';
  Application.HelpFile := 'help.chm';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmView, frmView);
  Application.CreateForm(TfrmWizDesc, frmWizDesc);
  Application.CreateForm(TfrmConfig, frmConfig);
  Application.Run;
end.
