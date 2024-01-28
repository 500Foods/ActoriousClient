unit Main;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Math,
  System.DateUtils,
  System.StrUtils,

  JS,
  Web,

  WEBLib.REST,
  WebLib.JSON,
  jsdelphisystem,


  XData.Web.Connection,
  XData.Web.Client,
  XData.Web.JsonDataset,
  XData.Web.Dataset,

  WEBLib.Storage,
  WEBLib.Graphics,
  WEBLib.Controls,
  WEBLib.Forms,
  WEBLib.Dialogs,
  Vcl.Controls,
  WEBLib.WebCtrls,
  Vcl.StdCtrls,
  WEBLib.StdCtrls,
  WEBLib.ComCtrls,
  WEBLib.WebTools,
  WEBLib.Buttons,
  WEBLib.ExtCtrls;

type
  TMainForm = class(TWebForm)
    divTop: TWebHTMLDiv;
    divMain: TWebHTMLDiv;
    divInfo: TWebHTMLDiv;
    divInfoPages: TWebPageControl;
    pageBio: TWebTabSheet;
    divBiography: TWebHTMLDiv;
    divBottom: TWebHTMLDiv;
    divActorTabulatorHolder: TWebHTMLDiv;
    divRoleTabulatorHolder: TWebHTMLDiv;
    divButtons: TWebHTMLDiv;
    divButtonHolder: TWebPanel;
    btnBio: TWebButton;
    btnPhoto: TWebButton;
    btnVideo: TWebButton;
    btnConnect: TWebButton;
    divMainHolder: TWebHTMLDiv;
    divViewerHolder: TWebHTMLDiv;
    divLogo: TWebHTMLDiv;
    divBirthdayNav: TWebHTMLDiv;
    divBirthDay: TWebHTMLDiv;
    divPrevBirthDay: TWebHTMLDiv;
    divNextBirthDay: TWebHTMLDiv;
    divBlock: TWebHTMLDiv;
    btnBackground: TWebButton;
    divAttribution: TWebHTMLDiv;
    pageAbout: TWebTabSheet;
    divAbout: TWebHTMLDiv;
    pagePhotos: TWebTabSheet;
    pageVideos: TWebTabSheet;
    pageBackgrounds: TWebTabSheet;
    pageConnect: TWebTabSheet;
    divDepartedNav: TWebHTMLDiv;
    divDeathDay: TWebHTMLDiv;
    divPrevDeathDay: TWebHTMLDiv;
    divNextDeathDay: TWebHTMLDiv;
    divReleaseNav: TWebHTMLDiv;
    divReleaseDay: TWebHTMLDiv;
    divPrevReleaseDay: TWebHTMLDiv;
    divNextReleaseDay: TWebHTMLDiv;
    divTop100Nav: TWebPanel;
    btnTop1000: TWebButton;
    divPeopleNav: TWebPanel;
    btnActors: TWebButton;
    btnDirectors: TWebButton;
    btnWriters: TWebButton;
    btnSettings: TWebButton;
    btnAbout: TWebButton;
    divSearchNav: TWebHTMLDiv;
    edtSearch: TWebEdit;
    tmrFocus: TWebTimer;
    tmrStart: TWebTimer;
    btnDiscord: TWebButton;
    pageDiscord: TWebTabSheet;
    btnDiscordLaunch: TWebButton;
    lblSupport: TWebLabel;
    pageSettings: TWebTabSheet;
    divSettings: TWebHTMLDiv;
    tmrSearch: TWebTimer;
    btnSearch: TWebButton;
    tmrImageCheck: TWebTimer;
    divPhotoSlider: TWebHTMLDiv;
    btnRelatives: TWebButton;
    WebHttpRequest1: TWebHttpRequest;
    divBlockControls: TWebHTMLDiv;
    btnBlockClose: TWebButton;
    btnBlockZoomReset: TWebButton;
    btnBlockZoomPlus: TWebButton;
    btnBlockZoomMinus: TWebButton;
    btnBlockPrevious: TWebButton;
    btnBlockNext: TWebButton;
    divVideoSlider: TWebHTMLDiv;
    divBackgroundSlider: TWebHTMLDiv;
    divBlockData: TWebHTMLDiv;
    btnBlockCount: TWebButton;
    btnBlockLine: TWebButton;
    btnBlockTotal: TWebButton;
    divTopButtons: TWebHTMLDiv;
    divLinkSet1: TWebHTMLDiv;
    WebHTMLDiv4: TWebHTMLDiv;
    linkFavourite: TWebHTMLDiv;
    WebHTMLDiv7: TWebHTMLDiv;
    linkLoading: TWebHTMLDiv;
    linkLogin: TWebHTMLDiv;
    WebHTMLDiv12: TWebHTMLDiv;
    WebHTMLDiv13: TWebHTMLDiv;
    divLinkSet2: TWebHTMLDiv;
    linkList4: TWebHTMLDiv;
    linkFrequent: TWebHTMLDiv;
    linkTour: TWebHTMLDiv;
    linkLink: TWebHTMLDiv;
    linkRelatives: TWebHTMLDiv;
    linkEMail: TWebHTMLDiv;
    divLinkSet4: TWebHTMLDiv;
    linkWikiData: TWebHTMLDiv;
    linkRottenTomatoes: TWebHTMLDiv;
    linkMetaCritic: TWebHTMLDiv;
    linkIMDb: TWebHTMLDiv;
    linkWeb: TWebHTMLDiv;
    linkGoogleImageSearch: TWebHTMLDiv;
    divLinkSet5: TWebHTMLDiv;
    linkTwitter: TWebHTMLDiv;
    linkInstagram: TWebHTMLDiv;
    linkFacebook: TWebHTMLDiv;
    linkModels: TWebHTMLDiv;
    linkWikipedia: TWebHTMLDiv;
    linkCitizenship: TWebHTMLDiv;
    linkShare: TWebHTMLDiv;
    divPhotoHolder: TWebHTMLDiv;
    divPhoto: TWebHTMLDiv;
    divProgressSpinner: TWebHTMLDiv;
    divPhotoBorder: TWebHTMLDiv;
    divProgress: TWebHTMLDiv;
    divLinkSet3: TWebHTMLDiv;
    WebHTMLDiv3: TWebHTMLDiv;
    WebHTMLDiv6: TWebHTMLDiv;
    WebHTMLDiv8: TWebHTMLDiv;
    WebHTMLDiv9: TWebHTMLDiv;
    WebHTMLDiv10: TWebHTMLDiv;
    WebHTMLDiv11: TWebHTMLDiv;
    WebHTMLDiv14: TWebHTMLDiv;
    linkPizza: TWebHTMLDiv;
    btnBlockSelect: TWebButton;
    WebHTMLDiv1: TWebHTMLDiv;
    WebHTMLDiv2: TWebHTMLDiv;
    divSettingsSwitch1: TWebHTMLDiv;
    tmrTooltips: TWebTimer;
    linkScore: TWebHTMLDiv;
    linkJustWatch: TWebHTMLDiv;
    linkTMDb: TWebHTMLDiv;
    linkLetterboxd: TWebHTMLDiv;
    linkHeight: TWebHTMLDiv;
    linkConnections: TWebHTMLDiv;
    procedure tmrImageCheckEnable;
    procedure WebFormCreate(Sender: TObject);
    [async] procedure CheckVersion;
    [async] procedure GetBirthDays(aMonth: Integer; aDay: Integer);
    [async] procedure GetDeathDays(aMonth: Integer; aDay: Integer);
    [async] procedure GetTop1000;
    [async] procedure GetLookupList(LookupList: String);
    [async] procedure GetReference(Reference: String);
    function GetAge(BirthDate, CurrentDate: String): Integer;
    procedure divPhotoClick(Sender: TObject);
    procedure ShowViewer;
    procedure divViewerHolderClick(Sender: TObject);
    procedure divNextBirthDayClick(Sender: TObject);
    procedure btnBioClick(Sender: TObject);
    procedure btnPhotoClick(Sender: TObject);
    procedure btnVideoClick(Sender: TObject);
    procedure btnBackgroundClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnSettingsClick(Sender: TObject);
    procedure WebFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SetBootstrapTooltip(button: TWebButton; placement: String);
    procedure SetBootstrapTooltipDiv(element: TWebHTMLDiv; hint: string; placement: String);
    procedure WebFormShow(Sender: TObject);
    procedure tmrFocusTimer(Sender: TObject);
    procedure tmrStartTimer(Sender: TObject);
    procedure btnActorsClick(Sender: TObject);
    procedure btnWritersClick(Sender: TObject);
    procedure btnDirectorsClick(Sender: TObject);
    procedure btnDiscordClick(Sender: TObject);
    procedure btnDiscordLaunchClick(Sender: TObject);
    procedure WebFormResize(Sender: TObject);
    procedure btnTop1000Click(Sender: TObject);
    procedure switchLimitPerson(Checked: Boolean);
    procedure btnAboutClick(Sender: TObject);
    procedure divPrevBirthDayClick(Sender: TObject);
    procedure divPrevDeathDayClick(Sender: TObject);
    procedure divNextDeathDayClick(Sender: TObject);
    procedure divPrevReleaseDayClick(Sender: TObject);
    procedure divNextReleaseDayClick(Sender: TObject);
    procedure switchLimitTop(Checked: Boolean);
    [async] procedure btnSearchClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
    procedure tmrSearchTimer(Sender: TObject);
    procedure edtSearchEnter(Sender: TObject);
    procedure switchLimitSearch(Checked: Boolean);
    procedure tmrImageCheckTimer(Sender: TObject);
    [async] procedure btnRelativesClick(Sender: TObject);
    procedure btnSetRelatives(relative: Integer; name: String);
    procedure btnBlockZoomPlusClick(Sender: TObject);
    procedure btnBlockZoomMinusClick(Sender: TObject);
    procedure btnBlockZoomResetClick(Sender: TObject);
    procedure btnBlockPreviousClick(Sender: TObject);
    procedure btnBlockNextClick(Sender: TObject);
    procedure btnBlockSelectClick(Sender: TObject);
    procedure LaunchTour(TourMode: String);
    procedure linkTourClick(Sender: TObject);
    procedure linkRelativesClick(Sender: TObject);
    procedure HideToolTips;
    [async] procedure linkFrequentClick(Sender: TObject);
    procedure tmrTooltipsTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Startup: Boolean;
    StartupMode: String;
    TourActive: Boolean;

    ActorTabulator: JSValue;
    RoleTabulator: JSValue;
    TablesReady: Integer;

    Server: String;
    Carnival: TXDataWebConnection;
    Client: TXDataWebClient;

    Version: String;
    Release: String;
    VersionNum: String;
    VersionCheck: Boolean;

    Pending: TStringList;

    AdultContent: Boolean;

    CurrentBirthDate: String;
    CurrentDeathDate: String;
    CurrentReleaseDate: String;

    CurrentPerson: Integer;
    CurrentRole: Integer;

    ViewerVisible: Boolean;
    ViewerMode: String;
    ViewerURL1: String;
    ViewerURL2: String;
    ViewerURLA: String;
    ViewerURLN: Integer;
    ViewerURLC: Integer;
    ViewerURLT: Integer;

    Photo1: String;
    Photo2: String;
    PhotoA: String;

    TopTitle: String;

    NowSearching: Boolean;
    QuickSearch: Boolean;

    DataLimited: Boolean;
    DataLimitedTop: Boolean;

    // Cache Top100 Search
    Top1000CacheDate: TDateTime;
    Top1000CacheData: String;

    // Cache Top5000 Search
    Top5000CacheDate: TDateTime;
    Top5000CacheData: String;

    // Cache Day Data
    BirthdayCacheDate: Array[1..366] of TDateTime;
    BirthdayCacheData: Array[1..366] of String;
    DeathdayCacheDate: Array[1..366] of TDateTime;
    DeathdayCacheData: Array[1..366] of String;
    ReleasedayCacheDate: Array[1..366] of TDateTime;
    ReleasedayCacheData: Array[1..366] of String;

    // Used for Rendering Top Menu
    MenuType: Integer;
    BioWords: Integer;
    PhotoCount: Integer;
    VideoCount: Integer;
    BackgroundCount: Integer;

    // PanZoom Object
    pz: JSValue;


    procedure StopLinkerRemoval(P: Pointer);
    procedure PreventCompilerHint(I: integer); overload;
    procedure PreventCompilerHint(S: string); overload;
    procedure PreventCompilerHint(J: JSValue); overload;
    procedure PreventCompilerHint(H: TJSHTMLElement); overload;

  end;

var
  MainForm: TMainForm;
  Birthdate: JSValue;
  Deathdate: JSValue;
  Releasedate: JSValue;



implementation

{$R *.dfm}

procedure TMainForm.HideToolTips;
begin
  {$IFNDEF WIN32} asm {
    setTimeout(function() {
      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
      tooltipTriggerList.forEach( (e) => e.setAttribute('data-bs-delay', '{"show": 1000, "hide": 100}'));
      var tooltipList = tooltipTriggerList.map( function(tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl, {
          trigger : 'hover'
        });
      });
    },500);

    setTimeout(function() {
      var badtooltips = document.getElementsByClassName('bs-tooltip-auto');
      if (badtooltips.length > 0) {
        for (var i = 0; i < badtooltips.length; i++) {
          badtooltips[i].style.setProperty('opacity','0');
          var x = badtooltips[i];
          setTimeout(function() {
            x.remove()
          }, 500);
        }
      }
    },1250);
  } end; {$ENDIF}
end;

procedure TMainForm.tmrImageCheckEnable;
begin
  MainForm.tmrImageCheck.Enabled := True;
end;

procedure TMainForm.btnAboutClick(Sender: TObject);
begin
  divInfoPages.activePage := pageAbout;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-secondary','btn-primary');
end;

procedure TMainForm.btnBlockSelectClick(Sender: TObject);
begin
  // Select the person from the currently visible photo
  // The idea is to be able to view the person from their preview
  showmessage('moving to person');
end;

procedure TMainForm.btnDiscordClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pageDiscord;
  divInfoPages.SetFocus;

  MainForm.VersionCheck := True;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnDiscordLaunchClick(Sender: TObject);
begin
  window.open('https://discord.gg/TrvjHbwyyd','_blank');
end;

procedure TMainForm.btnSearchClick(Sender: TObject);
var
  Response: TXDataClientResponse; // The response coming back
  Data :String;                   // The response coming back, as text
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
begin

  if Length(Trim(edtSearch.Text)) < 3
  then exit;

  MainForm.NowSearching := True;

  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;
  if AdultContent then Progress := Progress + '[Adult]';

  MainForm.CurrentPerson := -1;
  MainForm.CurrentRole := -1;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  if MainForm.QuickSearch
  then Endpoint := 'IActorInfoService.SearchLocal'
  else EndPoint := 'IActorInfoService.SearchPeopleExtended';

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      edtSearch.text,
      Progress                                       // Progress Reference
    ]));
    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
      Data = JSON.parse(Data);
    } end; {$ENDIF}
  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;

  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var table1 = pas.Main.MainForm.ActorTabulator;
    var table2 = pas.Main.MainForm.RoleTabulator;
    var actorData = Data;

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if (actorData[i]['XXX'] == true) {
          actorData.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
          actorData.splice(i,1);
          acount++;
        }
      }
    }

    pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        table1.clearSort();
        table1.deselectRow();
        table1.setSort("Count","desc");

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          table1.selectRow(1);
          window.Actor_Selected(null, table1.getRow(1));

        }
        else {
          table2.clearData();
        }

       This.HideToolTips();

      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.NowSearching := False;
  MainForm.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(Data);
  MainForm.PreventCompilerHint(Blob);

end;

procedure TMainForm.btnTop1000Click(Sender: TObject);
begin
  GetTop1000;
end;

procedure TMainForm.divNextDeathDayClick(Sender: TObject);
var
  NewDate: String;
begin
  // Change FlatPickr to the previous date
  if (CurrentDeathDate = '')
  then CurrentDeathDate := FormatDateTime('yyyy-mm-dd', Now);

  NewDate := FormatDateTime('yyyy-mm-dd',EncodeDate(StrToInt(Copy(CurrentDeathDate,1,4)),StrToInt(Copy(CurrentDeathDate,6,2)),StrToInt(Copy(CurrentDeathDate,9,2)))+1);
  {$IFNDEF WIN32} asm {
    this.Deathdate.setDate(NewDate,true);
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(NewDate);
end;

procedure TMainForm.divNextReleaseDayClick(Sender: TObject);
var
  NewDate: String;
begin
  // Change FlatPickr to the previous date
  if (CurrentReleaseDate = '')
  then CurrentReleaseDate := FormatDateTime('yyyy-mm-dd', Now);

  NewDate := FormatDateTime('yyyy-mm-dd',EncodeDate(StrToInt(Copy(CurrentReleaseDate,1,4)),StrToInt(Copy(CurrentReleaseDate,6,2)),StrToInt(Copy(CurrentReleaseDate,9,2)))+1);
  {$IFNDEF WIN32} asm {
    this.Releasedate.setDate(NewDate,true);
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(NewDate);
end;

procedure TMainForm.divPrevBirthDayClick(Sender: TObject);
var
  NewDate: String;
begin
  // Change FlatPickr to the previous date
  if (CurrentBirthDate = '')
  then CurrentBirthDate := FormatDateTime('yyyy-mm-dd', Now);

  NewDate := FormatDateTime('yyyy-mm-dd',EncodeDate(StrToInt(Copy(CurrentBirthDate,1,4)),StrToInt(Copy(CurrentBirthDate,6,2)),StrToInt(Copy(CurrentBirthDate,9,2)))-1);
  {$IFNDEF WIN32} asm {
    this.Birthdate.setDate(NewDate,true);
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(NewDate);
end;

procedure TMainForm.divPrevDeathDayClick(Sender: TObject);
var
  NewDate: String;
begin
  // Change FlatPickr to the previous date
  if (CurrentDeathDate = '')
  then CurrentDeathDate := FormatDateTime('yyyy-mm-dd', Now);

  NewDate := FormatDateTime('yyyy-mm-dd',EncodeDate(StrToInt(Copy(CurrentDeathDate,1,4)),StrToInt(Copy(CurrentDeathDate,6,2)),StrToInt(Copy(CurrentDeathDate,9,2)))-1);
  {$IFNDEF WIN32} asm {
    this.Deathdate.setDate(NewDate,true);
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(NewDate);
end;

procedure TMainForm.divPrevReleaseDayClick(Sender: TObject);
var
  NewDate: String;
begin
  // Change FlatPickr to the previous date
  if (CurrentReleaseDate = '')
  then CurrentReleaseDate := FormatDateTime('yyyy-mm-dd', Now);

  NewDate := FormatDateTime('yyyy-mm-dd',EncodeDate(StrToInt(Copy(CurrentReleaseDate,1,4)),StrToInt(Copy(CurrentReleaseDate,6,2)),StrToInt(Copy(CurrentReleaseDate,9,2)))-1);
  {$IFNDEF WIN32} asm {
    this.Releasedate.setDate(NewDate,true);
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(NewDate);
end;

procedure TMainForm.edtSearchChange(Sender: TObject);
begin
  if Length(Trim(edtSearch.text)) < 3 then
  begin
    // do nothing
  end
  else
  begin
    tmrSearch.Enabled := False;
    tmrSearch.Enabled := True;
  end;
end;

procedure TMainForm.edtSearchEnter(Sender: TObject);
begin
  edtSearch.SelectAll;
end;

procedure TMainForm.switchLimitPerson(Checked: Boolean);
var
  i: Integer;
begin
  if Checked then
  begin
    DataLimited := True;
    {$IFNDEF WIN32} asm {
      switchSettingsLabel1.innerHTML = 'Limit Person Requests to 50 Records';
  } end; {$ENDIF}
  end
  else
  begin
    DataLimited := False;
    {$IFNDEF WIN32} asm {
      switchSettingsLabel1.innerHTML = 'Person Requests Return All Records';
    } end; {$ENDIF}
  end;

  // Reset the cache
  Top1000CacheDate := Now - 1;
  Top1000CacheData := '[]';
  for i := 1 to 366 do
  begin
    BirthdayCacheDate[i] := Now - 1;
    BirthdayCacheData[i] := '[]';
    DeathdayCacheDate[i] := Now - 1;
    DeathdayCacheData[i] := '[]';
    ReleasedayCacheDate[i] := Now - 1;
    ReleasedayCacheData[i] := '[]';
  end;

end;

procedure TMainForm.switchLimitTop(Checked: Boolean);
var
  i: Integer;
begin
  if Checked then
  begin
    DataLimitedTop := True;
    btnTop1000.Caption := 'TMDb Top 1,000 Actors';
    {$IFNDEF WIN32} asm {
      switchSettingsLabel2.innerHTML = 'Limit Top Requests to 1,000 Records';
    } end; {$ENDIF}
  end
  else
  begin
    DataLimitedTop := False;
    btnTop1000.Caption := 'TMDb Top 5,000 Actors';
    {$IFNDEF WIN32} asm {
      switchSettingsLabel2.innerHTML = 'Limit Top Requests to 5,000 Records';
    } end; {$ENDIF}
  end;

  // Reset the cache
  Top1000CacheDate := Now - 1;
  Top1000CacheData := '[]';
  Top5000CacheDate := Now - 1;
  Top5000CacheData := '[]';
  for i := 1 to 366 do
  begin
    BirthdayCacheDate[i] := Now - 1;
    BirthdayCacheData[i] := '[]';
  end;

end;

procedure TMainForm.switchLimitSearch(Checked: Boolean);
begin
  if Checked then
  begin
    QuickSearch := True;
    {$IFNDEF WIN32} asm {
      switchSettingsLabel3.innerHTML = 'Limit Quick search to 50 Results';
      btnSearch.innerHTML = window.icon_magnifying_glass;
    } end; {$ENDIF}
  end
  else
  begin
    QuickSearch := False;
    {$IFNDEF WIN32} asm {
      switchSettingsLabel3.innerHTML = 'Slow Search Limited to 100 Results';
      btnSearch.innerHTML = window.icon_magnifying_glass_swap;
    } end; {$ENDIF}
  end;
end;

procedure TMainForm.tmrImageCheckTimer(Sender: TObject);
var
  reload: integer;
begin
  // The idea here is to reprocess any images that are still stuck on the
  // hourglass.  Not entirely sure why it happens, and its almost impossible
  // to recreate in testing, but it does happen routinely enough :(
  reload := 0;

  // We only want to do this once, normally
  {$IFNDEF WIN32} asm {
  	var errorElements = document.querySelectorAll(".lazy.entered.loaded");
	  errorElements.forEach(el => {
      if (el.src.indexOf('hourglass') > 0) {
        el.classList.remove("entered","loaded");
        el.removeAttribute("data-was-processed");
        el.removeAttribute("data-ll-status");
        reload = reload + 1;
      }
    });
    if (reload > 0) window.lazyLoadInstance.update();
  } end; {$ENDIF}

  if (reload = 0) then
  begin
    MainForm.tmrImageCheck.Enabled := False;
  end

end;

procedure TMainForm.tmrSearchTimer(Sender: TObject);
begin
  tmrSearch.Enabled := False;
//  if (NowSearching = False) then
//  begin
//    btnSearchClick(Sender);
//    tmrSearch.Enabled := False;
//  end;
end;

procedure TMainForm.WebFormCreate(Sender: TObject);
var
  i: Integer;
begin

  // WebFormCreate is called when the application first starts.
  // Here, we'll be initializing the Tabulator tables and the
  // Flatpickr controls as well as everything else.  There is
  // quite a bit of JavaScript to support these controls.

  PreventCompilerHint(1);

  // Startup
  // There are some things we do or don't do based on the first launch of the
  // app, such as setting the photo at the top.  It is loaded from the version
  // check, so the first table update doesn't need to updated it again.
  // For example.
  Startup := True;

  // ViewerVisible
  // When clicking an image, a viewer is used to show it larger with zoom
  // and other optinos are available.  This is not visible initially.
  ViewerVisible := False;

  // Current
  // These are used to track whatis currently selected in the tables as a way
  // to not have to do any unnecessary redraws or other extra work.
  CurrentPerson := -1;
  CurrentRole := -1;

  // TopTitle
  // This is used to locate the title in the Role Tabulator when clicking on
  // one of the top movie or top tv role icons.  The idea is to select the
  // correct title when switching actors, which happens after the image is
  // shown, rather inconveniently
  TopTitle := '';

  // If development, load data from development server.
  // If production, load data from production server.
  if (pos('actorious.com', lowercase(window.location.href)) > 0)
  then MainForm.Server := 'https://carnival.500foods.com:10999/actorious'
  else MainForm.Server := 'http://localhost:10999/actorious';


  // Check for Parameters

  // By default, we want to show results for today
  StartupMode := 'today';
  if GetQueryParam('R') <> '' then
  begin
    StartupMode := 'reference';
  end;

  // There is an adult mode that can be specified
  AdultContent := False;
  if GetQueryParam('X') <> '' then
  begin
    if GetQueryParam('X') ='XXX' then
    begin
      AdultContent := True;
      StartupMode := 'adult';
    end;
  end;

  // This is used to run the top-1000 query which is used as a bit
  // of a hack to get the top 1000 values cached in the server.
  // This is normally only run by the server after the top 1000
  // data has been retrieved from TMDB
  if (GetQueryParam('top-one-thousand') <> '') then
  begin
    StartupMode := 'top1000';
  end;

  // This is used to run the top-5000 query which is used as a bit
  // of a hack to get the top 5000 values cached in the server.
  // This is normally only run by the server after the top 5000
  // data has been retrieved from TMDB
  if (GetQueryParam('top-five-thousand') <> '') then
  begin
    StartupMode := 'top5000';
  end;

  // Global Sleep function :)
  {$IFNDEF WIN32} asm {
    window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); }
  } end; {$ENDIF}

  // Sort out Version Information
  {$IFNDEF WIN32} asm {
    this.Version = window.ProjectName;
    this.Release = new luxon.DateTime.fromISO(new Date(document.lastModified).toISOString()).toFormat('yyyy-MMM-dd');
  } end; {$ENDIF}

  VersionNum := StringReplace(Copy(Version, Pos('ActoriousClient',Version)+16,Length(Version)),'_','.',[rfReplaceAll]);
  VersionCheck := True;
  lblSupport.HTML := 'Support and discussions about Actorious are managed through Discord, a free service.'+
   '<br />'+
   '<br />'+
   Copy(Version,1,Pos('_',Version)-1)+
   '<br />'+
   'Version: '+VersionNum+
   '<br />'+
   ' Released: '+Release;
  CheckVersion;


  // Settings Defaults
  // Basically switches between different XData Service Endpoints
  // based on whether a limited ata option is set, which is the
  // default.  But can be changed in the app settings.
  DataLimited    := True;
  DataLImitedTop := True;
  QuickSearch    := True;
  NowSearching   := False;

  // If viewing adult content, remove these filters as there is far less data
  // available (which is a little surprising, actually?)
  if AdultContent then
  begin
    btnTop1000.Caption := 'TMDb Top Adult Actors';

    DataLimited    := False;
    DataLImitedTop := False;
    QuickSearch    := False;
    NowSearching   := False;
    {$IFNDEF WIN32} asm {
      switchSettings1.setAttribute('disabled','');
      switchSettings1.removeAttribute('checked');
      switchSettings2.setAttribute('disabled','');
      switchSettings2.removeAttribute('checked');
      switchSettings3.setAttribute('disabled','');
      switchSettings3.removeAttribute('checked');

      var root = document.querySelector(':root');
      setTimeout(function(){
        document.body.style.setProperty('background-color','#300000', 'important');
        root.style.setProperty('--bs-dark-rgb','96,0,0');
        root.style.setProperty('--bs-dark','#600000');
        root.style.setProperty('--bg-dark','#600000');
        root.style.setProperty('--bs-secondary','maroon');
      },10);

    } end; {$ENDIF}
  end
  else
  begin
    btnTop1000.Caption := 'TMDb Top 1,000 Actors';
  end;

  // Changed to HTML code for the switches, so here we connect their
  // events to the original Delphi component events
  {$IFNDEF WIN32} asm {
    switchSettings1.addEventListener("change", function() {
      pas.Main.MainForm.switchLimitPerson(this.checked);
    });
    switchSettings2.addEventListener("change", function() {
      pas.Main.MainForm.switchLimitTop(this.checked);
    });
    switchSettings3.addEventListener("change", function() {
      pas.Main.MainForm.switchLimitSearch(this.checked);
    });
  } end; {$ENDIF}


  // Backtrack if we're running the top5000 initially
  if (StartupMode = 'top5000') then
  begin
    DataLimitedTop := False;
    {$IFNDEF WIN32} asm {
      switchSettings2.setAttribute('disabled','');
      switchSettings2.removeAttribute('checked');
    } end; {$ENDIF}
    btnTop1000.Caption := 'TMDb Top 5,000 Actors';
  end;


  // We use this to know when it is time to request data,
  // basically once the Tabulator tables announce that
  // they are ready.  This makes the display a little nicer.
  TablesReady := 0;

  // Nothing going on to start with
  divProgress.Height := 0 ;

  // Pending contains all the requests that are pending.
  // We'll use this to update a display.  Requests could
  // eventually be queued by the client in this fashion.
  Pending := TStringList.Create;

  // Make sure we start with the Biography page being selected
  divInfoPages.ActivePage := pageBio;

  // Current Date should be today's date
  CurrentBirthDate := FormatDateTime('yyyy-mm-dd', Now);
  CurrentDeathDate := '';
  CurrentReleaseDate := '';

  // Set focus to Search field so the FlatPickrs aren't triggered all the time
  edtSearch.SetFocus;



  // Initialize Data Caches
  Top1000CacheDate := Now - 1;
  Top1000CacheData := '[]';
  Top5000CacheDate := Now - 1;
  Top5000CacheData := '[]';
  for i := 1 to 366 do
  begin
    BirthdayCacheDate[i] := Now - 1;
    BirthdayCacheData[i] := '[]';
    DeathdayCacheDate[i] := Now - 1;
    DeathdayCacheData[i] := '[]';
    ReleasedayCacheDate[i] := Now - 1;
    ReleasedayCacheData[i] := '[]';
  end;



  // Manually add Bootstrap tooltips to buttons
  SetBootstrapTooltip(btnSearch,'top');

  SetBootstrapTooltip(btnBio,'bottom');
  SetBootstrapTooltip(btnPhoto,'bottom');
  SetBootstrapTooltip(btnVideo,'bottom');
  SetBootstrapTooltip(btnBackground,'bottom');
  SetBootstrapTooltip(btnConnect,'bottom');
  SetBootstrapTooltip(btnSettings,'bottom');
  SetBootstrapTooltip(btnDiscord,'bottom');
  SetBootstrapTooltip(btnAbout,'bottom');

  SetBootstrapTooltipDiv(linkLogin, 'Login to TMDb Account', 'left');
  SetBootstrapTooltipDiv(linkFavourite, 'Mark as Favorite', 'left');

  SetBootstrapTooltipDiv(linkScore, 'Actorious Points', 'left');
  SetBootstrapTooltipDiv(linkRelatives, 'Friends and Family', 'right');
  SetBootstrapTooltipDiv(linkFrequent, 'Frequent Figures', 'right');
  SetBootstrapTooltipDiv(linkConnections, 'Connections', 'right');
  SetBootstrapTooltipDiv(linkTour, 'Take a Tour of Actorious and Explore its Features', 'right');
  SetBootstrapTooltipDiv(linkPIzza, 'Donate to the Actorious Project via Buy Me a Pizza', 'right');
  SetBootstrapTooltipDiv(linkEMail, 'Subscribe to Daily E-Mail', 'right');

  SetBootstrapTooltipDiv(linkTMDb, 'The Movie Database', 'left');
  SetBootstrapTooltipDiv(linkLetterboxd, 'Letterboxd Search', 'left');
  SetBootstrapTooltipDiv(linkJustWatch, 'JustWatch', 'left');
  SetBootstrapTooltipDiv(linkWikiData, 'WikiData', 'left');
  SetBootstrapTooltipDiv(linkGoogleImageSearch, 'Google Image Search', 'left');
  SetBootstrapTooltipDiv(linkIMDb, 'IMDb', 'left');
  SetBootstrapTooltipDiv(linkMetaCritic, 'MetaCritic', 'left');
  SetBootstrapTooltipDiv(linkRottenTomatoes, 'Rotten Tomatoes', 'left');
  SetBootstrapTooltipDiv(linkWeb, 'Website', 'left');

  SetBootstrapTooltipDiv(linkcitizenship, 'Country/Citizenship Country/Production', 'right');
  SetBootstrapTooltipDiv(linkHeight, 'Height', 'right');
  SetBootstrapTooltipDiv(linkWikipedia, 'Wikipedia', 'right');
  SetBootstrapTooltipDiv(linkFacebook, 'Facebook', 'right');
  SetBootstrapTooltipDiv(linkInstagram, 'Instagram', 'right');
  SetBootstrapTooltipDiv(linkTwitter, '𝕏', 'right');
  SetBootstrapTooltipDiv(linkModels, 'Models.com', 'right');
  SetBootstrapTooltipDiv(linkShare, 'Share', 'right');

  // Shade all the link buttons to start with
  linkLogin.ElementHandle.style.setProperty('opacity','0.25');
  linkFavourite.ElementHandle.style.setProperty('opacity','0.25');

  linkScore.ElementHandle.style.setProperty('opacity','0.25');
  linkLink.ElementHandle.style.setProperty('opacity','0.25');
  linkEMail.ElementHandle.style.setProperty('opacity','.25');
  linkTour.ElementHandle.style.setProperty('opacity','1.0'); // Always available

  linkTMDb.ElementHandle.style.setProperty('opacity','0.25');
  linkLetterboxd.ElementHandle.style.setProperty('opacity','0.25');
  linkJustWatch.ElementHandle.style.setProperty('opacity','0.25');
  linkWikiData.ElementHandle.style.setProperty('opacity','0.25');
//  linkRating.ElementHandle.style.setProperty('opacity','0.25');
  linkIMDb.ElementHandle.style.setProperty('opacity','0.25');
  linkRottenTomatoes.ElementHandle.style.setProperty('opacity','0.25');
  linkMetaCritic.ElementHandle.style.setProperty('opacity','0.25');
  linkWeb.ElementHandle.style.setProperty('opacity','0.25');

  linkCitizenship.ElementHandle.style.setProperty('opacity','0.25');
  linkHeight.ElementHandle.style.setProperty('opacity','0.25');
  linkWikipedia.ElementHandle.style.setProperty('opacity','0.25');
  linkFacebook.ElementHandle.style.setProperty('opacity','0.25');
  linkInstagram.ElementHandle.style.setProperty('opacity','0.25');
  linkTwitter.ElementHandle.style.setProperty('opacity','0.25');
  linkModels.ElementHandle.style.setProperty('opacity','0.25');
  linkShare.ElementHandle.style.setProperty('opacity','0.25');

  linkGoogleImageSearch.ElementHandle.style.setProperty('opacity','0.25');

  // Setup the main UI
  {$IFNDEF WIN32} asm {

    // FlatPickr Navigation Icons
    divPrevBirthDay.innerHTML = window.icon_chveron_left;
    divPrevDeathDay.innerHTML = window.icon_chveron_left;
    divPrevReleaseDay.innerHTML = window.icon_chveron_left;

    divNextBirthDay.innerHTML = window.icon_chveron_right;
    divNextDeathDay.innerHTML = window.icon_chveron_right;
    divNextReleaseDay.innerHTML = window.icon_chveron_right;

    // FlatPickr Input fields
    divBirthDay.innerHTML =
      '<div id="divFlatPickr" class="d-flex align-items-center overflow-hidden" style="width: 100%; height:100%; border:none; cursor: pointer !important;">'+
        '<input type="text" class="bg-light px-1 border border-0" data-input placeholder="Birthday..." >'+
        '<div '+
          'onclick="window.birthdate_today(event)" '+
          'class="input-button bg-none" '+
          'style="margin: 0px 0px 0px -25px; '+
          'title="Toggle Birthday Calendar" '+
          'data-toggle '+
          'data-bs-toggle="tooltip" '+
          'data-bs-placement="top" '+
          'data-bs-delay={"show":1000,"hide":100}'+
          '>'+
          window.icon_birthday_cake+
        '</div>'+
      '</div>';

    divDeathDay.innerHTML =
      '<div id="divFlatPickr2" class="d-flex align-items-center overflow-hidden" style="width: 100%; height:100%; border:none; cursor: pointer !important;">'+
        '<input type="text" class="bg-light px-1 border border-0" data-input placeholder="Departed...">'+
        '<div '+
          'onclick="window.deathdate_today(event)" '+
          'class="input-button bg-none" '+
          'style="margin: 0px 0px 0px -25px;" '+
          'title="Toggle Departed Calendar" '+
          'data-toggle '+
          'data-bs-toggle="tooltip" '+
          'data-bs-placement="top" '+
          'data-bs-delay={"show":1000,"hide":100}'+
          '>'+
          window.icon_tombstone+
        '</div>'+
      '</div>';

    divReleaseDay.innerHTML =
      '<div id="divFlatPickr3" class="d-flex align-items-center overflow-hidden" style="width: 100%; height:100%; border:none; cursor: pointer !important;">'+
        '<input type="text" class="bg-light px-1 border border-0" data-input placeholder="Released...">'+
        '<div '+
          'onclick="window.releasedate_today(event)" '+
          'class="input-button bg-none" '+
          'style="margin: 0px 0px 0px -27px;" '+
          'title="Toggle Release Calendar" '+
          'data-toggle '+
          'data-bs-toggle="tooltip" '+
          'data-bs-placement="top" '+
          'data-bs-delay={"show":1000,"hide":100}'+
          '>'+
          window.icon_film+
        '</div>'+
      '</div>';

    btnSearch.innerHTML = window.icon_magnifying_glass;
    linkLink.innerHTML = '<div style="padding:2px 2px; fill:var(--bs-gray-200);">'+window.icon_link+'</div>';
    linkEMail.innerHTML = window.icon_envelope_open_text;
    linkTour.innerHTML = window.icon_signs_post;
    linkRelatives.innerHTML = window.icon_relatives;
    linkFrequent.innerHTML = window.icon_people_carry_box;
    linkConnections.innerHTML = window.icon_people_arrows2;


    ////////////////////////////////////////////////////////////////////////////
    // JS: RefreshMenu()
    //
    // Update the top Menu with whatever we know.  There are seven buttons, four
    // of which may have an optional number shown (Bio, Photo, Video, Backdrop)
    ////////////////////////////////////////////////////////////////////////////

    function RefreshMenu(force) {

      if (force == true) {
        // First official run-through, we want to setup a few other things
        btnBio.classList.replace('btn-secondary','btn-primary');
        btnActors.classList.replace('btn-secondary','btn-primary');
        btnTop1000.classList.replace('btn-secondary','btn-primary');

        btnActors.innerHTML = 'Actors';
        btnWriters.innerHTML = 'Writers';
        btnDirectors.innerHTML = 'Directors';

        linkEMail.style.opacity = 1.0;

      }
      else if (pas.Main.MainForm.Startup == true) {
        return;
      }

      if (pas.Main.MainForm.MenuType == 0) {
        // Drawing the top menu for the selected Person

//        btnBio.setAttribute('aria-label', 'Biography');
//        btnPhoto.setAttribute('aria-label', 'Photos');
//        btnVideo.setAttribute('aria-label', 'Videos');
//        btnBackground.setAttribute('aria-label', 'Backgrounds');
//        btnConnect.setAttribute('aria-label', 'Connections');
//        btnSettings.setAttribute('aria-label', 'Settings');
//        btnDiscord.setAttribute('aria-label', 'Support');
//        btnAbout.setAttribute('aria-label', 'About');

        if (divInfo.getBoundingClientRect().width > 800) {
          btnConnect.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_people_arrows_swap+'Connections</div>';
          btnSettings.innerHTML   = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_sliders+'Settings</div>';
          btnDiscord.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_bell_concierge+'Support</div>';
          btnAbout.innerHTML      = '<div class="d-flex align-items-center justify-content-center"><div style="margin-top:-2px;""><img style="height:24px; width:24px; margin-right:6px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon"></div>About Actorious</div>';

          if (pas.Main.MainForm.BioWords > 1) { btnBio.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_book_user+'Biography ('+pas.Main.MainForm.BioWords+' words)</div>'; }
          else { btnBio.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_book_user+'Biography (none)</div>'; }

          if (pas.Main.MainForm.PhotoCount > 0) { btnPhoto.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_polaroid_user+'Photos ('+pas.Main.MainForm.PhotoCount+')</div>'; }
          else { btnPhoto.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_polaroid_user+'Photos (none)</div>'; }
        }
        else {
          // Just draw the Icons
          btnBio.innerHTML        = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_book_user+'</div>';
          btnPhoto.innerHTML      = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_polaroid_user+'</div>';
          btnConnect.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_people_arrows_swap+'</div>';
          btnSettings.innerHTML   = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_sliders+'</div>';
          btnDiscord.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_bell_concierge+'</div>';
          btnAbout.innerHTML      = '<div class="d-flex align-items-center justify-content-center"><div style="margin-top:-2px;""><img style="height:24px; width:24px; margin-right:6px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon"></div></div>';
        }

        btnVideo.classList.add('d-none');
        btnBackground.classList.add('d-none');
//        btnConnect.classList.remove('d-none');

      }
      else if (pas.Main.MainForm.MenuType == 1) {
        // Drawing the top menu for the selected Movie

        if (window.innerWidth > 1800) {
          btnSettings.innerHTML   = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_sliders+'Settings</div>';
          btnDiscord.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_bell_concierge+'Support</div>';
          btnAbout.innerHTML      = '<div class="d-flex align-items-center justify-content-center"><div style="margin-top:-2px;""><img style="height:24px; width:24px; margin-right:6px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon"></div>About Actorious</div>';

          if (pas.Main.MainForm.BioWords > 1) { btnBio.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_film_swap+'Overview ('+pas.Main.MainForm.BioWords+' words)</div>'; }
          else { btnBio.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_film_swap+'Overview (none)</div>'; }

          if (pas.Main.MainForm.PhotoCount > 0) { btnPhoto.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_users_rectangle+'Posters ('+pas.Main.MainForm.PhotoCount+')</div>'; }
          else { btnPhoto.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_users_rectangle+'Posters (none)</div>'; }

          if (pas.Main.MainForm.VideoCount > 0) { btnVideo.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_clapperboard_play+'Videos ('+pas.Main.MainForm.VideoCount+')</div>'; }
          else { btnVideo.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_clapperboard_play+'Videos (none)</div>'; }

          if (pas.Main.MainForm.BackgroundCount > 0) { btnBackground.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_photo_film+'Backdrops ('+pas.Main.MainForm.BackgroundCount+')</div>'; }
          else { btnBackground.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_photo_film+'Backdrops (none)</div>'; }
        }
        else {
          // Just draw the Icons
          btnBio.innerHTML        = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_film_swap+'</div>';
          btnPhoto.innerHTML      = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_users_rectangle+'</div>';
          btnVideo.innerHTML      = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_clapperboard_play+'</div>';
          btnBackground.innerHTML = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_photo_film+'</div>';
          btnSettings.innerHTML   = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_sliders+'</div>';
          btnDiscord.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_bell_concierge+'</div>';
          btnAbout.innerHTML      = '<div class="d-flex align-items-center justify-content-center"><div style="margin-top:-2px;""><img style="height:24px; width:24px; margin-right:6px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon"></div></div>';
        }

        btnVideo.classList.remove('d-none');
        btnBackground.classList.remove('d-none');
//        btnConnect.classList.add('d-none');

      }
      else if (pas.Main.MainForm.MenuType == 2) {
        // Drawing the top menu for the selected TV Show

        if (window.innerWidth > 1000) {
          btnSettings.innerHTML   = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_sliders+'Settings</div>';
          btnDiscord.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_bell_concierge+'Support</div>';
          btnAbout.innerHTML      = '<div class="d-flex align-items-center justify-content-center"><div style="margin-top:-2px;""><img style="height:24px; width:24px; margin-right:6px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon" aria-label="About Actorious"></div>About Actorious</div>';

          if (pas.Main.MainForm.BioWords > 1) { btnBio.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_tv_swap+'Overview ('+pas.Main.MainForm.BioWords+' words)</div>'; }
          else { btnBio.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_tv_swap+'Overview (none)</div>'; }

          if (pas.Main.MainForm.PhotoCount > 0) { btnPhoto.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_users_rectangle+'Posters ('+pas.Main.MainForm.PhotoCount+')</div>'; }
          else { btnPhoto.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_users_rectangle+'Posters (none)</div>'; }

          if (pas.Main.MainForm.VideoCount > 0) { btnVideo.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_clapperboard_play+'Videos ('+pas.Main.MainForm.VideoCount+')</div>'; }
          else { btnVideo.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_clapperboard_play+'Videos (none)</div>'; }

          if (pas.Main.MainForm.BackgroundCount > 0) { btnBackground.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_photo_film+'Backdrops ('+pas.Main.MainForm.BackgroundCount+')</div>'; }
          else { btnBackground.innerHTML = '<div style="display:flex; justify-content:center; align-items:center; margin-right:6px;">'+window.icon_photo_film+'Backdrops (none)</div>'; }
        }
        else {
          // Just draw the Icons
          btnBio.innerHTML        = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_tv_swap+'</div>';
          btnPhoto.innerHTML      = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_users_rectangle+'</div>';
          btnVideo.innerHTML      = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_clapperboard_play+'</div>';
          btnBackground.innerHTML = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_photo_film+'</div>';
          btnSettings.innerHTML   = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_sliders+'</div>';
          btnDiscord.innerHTML    = '<div style="display:flex; justify-content:center; align-items:center;">'+window.icon_bell_concierge+'</div>';
          btnAbout.innerHTML      = '<div class="d-flex align-items-center justify-content-center"><div style="margin-top:-2px;""><img style="height:24px; width:24px; margin-right:6px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon"></div></div>';
        }

        btnVideo.classList.remove('d-none');
        btnBackground.classList.remove('d-none');
//        btnConnect.classList.add('d-none');

      }

      btnBio.setAttribute('aria-label', btnBio.textContent.replace('.fa-secondary{opacity:.4}','') || 'Biography' );
      btnPhoto.setAttribute('aria-label', btnPhoto.textContent.replace('.fa-secondary{opacity:.4}','') || 'Photo' );
      btnVideo.setAttribute('aria-label', btnVideo.textContent.replace('.fa-secondary{opacity:.4}','') || 'Video' );
      btnBackground.setAttribute('aria-label', btnBackground.textContent.replace('.fa-secondary{opacity:.4}','') || 'Background');
      btnConnect.setAttribute('aria-label', btnConnect.textContent.replace('.fa-secondary{opacity:.4}','') || 'Connect');
      btnSettings.setAttribute('aria-label', btnSettings.textContent.replace('.fa-secondary{opacity:.4}','') || 'Settings');
      btnDiscord.setAttribute('aria-label', btnDiscord.textContent.replace('.fa-secondary{opacity:.4}','') || 'Support');
      btnAbout.setAttribute('aria-label', btnAbout.textContent.replace('.fa-secondary{opacity:.4}','') || 'About Actorious');

    }


    window.RefreshMenu = RefreshMenu;


  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // This sets up our image lazy loading system.  Just need to add "lazy" as
  // a class to an <img> tag and, oddly, to make sure that when adding it via
  // innerHTML, that it is enclosed in a <div> tag.
  //
  // NOTE: Many images can be requested at one time.  So in this case, typically
  // an HTTP ERROR 429 will be issued. If we encounter an error (of any kind)
  // then we put up the hourglass image and then retry it again in 1.5 seconds.
  // If there's actually an error, this is probably very bad but in practice
  // this addresses the 429 issue and it is exceedingly rare for TMDb to give
  // an image reference that is invalid, so we'll go with this appraoch for now.
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    window.lazyLoadInstance = new LazyLoad({
      callback_error: (img) => {

        // RetryA - hourglass
        // RetryB -
        // RetryC -
        // RetryD -

        if (img.classList.contains('RetryA')) {
          img.classList.remove("error");
          img.removeAttribute("data-was-processed");
          img.removeAttribute("data-ll-status");

          img.classList.replace('RetryA','RetryB');
        }
        else if (img.classList.contains('RetryB')) {
          img.classList.remove("error");
          img.removeAttribute("data-was-processed");
          img.removeAttribute("data-ll-status");

          img.classList.replace('RetryB','RetryC');
        }
        else if (img.classList.contains('RetryC')) {
          img.classList.remove("error");
          img.removeAttribute("data-was-processed");
          img.removeAttribute("data-ll-status");

          img.classList.replace('RetryC','RetryD');
        }
        else if (img.classList.contains('RetryD')) {
         // End of the line - don't do anything here.
        }
        else {
          img.classList.remove("error");
          img.removeAttribute("data-was-processed");
          img.removeAttribute("data-ll-status");

          img.classList.add('RetryA');

          if (img.classList.contains('PriorityA')) {
            // don't want to replace the initial image in this case
          }
          else {
            if (img.classList.contains('portrait')) {
              img.setAttribute("src", "img/hourglass.png");
            }
            else {
              img.setAttribute("src", "img/hourglass_wide.png");
            }
          }
        }

        if (img.classList.contains('PriorityA')) {
          setTimeout(function() {
            window.lazyLoadInstance.update();
          },750);
        }
        else if (img.classList.contains('PriorityB')) {
          setTimeout(function() {
            window.lazyLoadInstance.update();
          },750+Math.random()*500);
        }
        else {
          setTimeout(function() {
            window.lazyLoadInstance.update();
          },1250+Math.random()*500);
        }
      }
	  });

    var observer = new MutationObserver(function(mutations) {
      var image_count = 0;
      mutations.forEach(
        function(mutation) {
          for (var i = 0; i < mutation.addedNodes.length; i++) {
	      	  if (typeof mutation.addedNodes[i].getElementsByClassName !== 'function') {return;}
   		 	    image_count += mutation.addedNodes[i].getElementsByClassName('lazy').length;
      }});
      if (image_count > 0) {
        window.lazyLoadInstance.update();
    }});
    var config = { childList: true, subtree: true };
    observer.observe(document.documentElement, config);

  } end; {$ENDIF}



  //////////////////////////////////////////////////////////////////////////////
  // This sets up the main photo/poster image slider
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    window.swiper = new Swiper('.swiper', {
      slidesPerView: 'auto',
      preLoadImages: false,
      spaceBetween: 6,
      slidesOffsetBefore: 4,
      slidesOffsetAfter: 6,
      speed: 200,
      slidesPerGroupAuto: true,
      mousewheel: {},
    });
    window.swiper.on('click', function () {
      var clickedslide = swiper.clickedSlide;
      pas.Main.MainForm.ViewerMode = 'PersonPhotos';
      pas.Main.MainForm.ViewerURL1 = clickedslide.firstElementChild.getAttribute('src');
      pas.Main.MainForm.ViewerURL2 = clickedslide.firstElementChild.getAttribute('src').replace('/w45/','/original/');
      pas.Main.MainForm.ViewerURL2 = pas.Main.MainForm.ViewerURL2.replace('/w185/','/original/');
      pas.Main.MainForm.ViewerURLA = pas.Main.MainForm.PhotoA;
      pas.Main.MainForm.ViewerURLN = swiper.clickedIndex;
      pas.Main.MainForm.ViewerURLC = swiper.clickedIndex+1;
      pas.Main.MainForm.ViewerURLT = pas.Main.MainForm.PhotoCount;
      pas.Main.MainForm.ShowViewer();
    });

    // This sets up the main video image slider, visible when looking at roles
    // onClick is handled by <a> launching new tab with URL for video
    window.swiper2 = new Swiper('.swiper2', {
      slidesPerView: 'auto',
      watchOverflow: false,
      preLoadImages: false,
      spaceBetween: 2,
      slidesOffsetBefore: 4,
      slidesOffsetAfter: 6,
      speed: 200,
      slidesPerGroupAuto: true,
      grid: { rows: 2},
      mousewheel: {},
    });

    // This sets up the main backdrop image slider, visible when looking at roles
    window.swiper3 = new Swiper('.swiper3', {
      slidesPerView: 'auto',
      watchOverflow: false,
      preLoadImages: false,
      spaceBetween: 2,
      slidesOffsetBefore: 4,
      slidesOffsetAfter: 6,
      speed: 200,
      slidesPerGroupAuto: true,
      grid: { rows: 2},
      mousewheel: {},
    });
    window.swiper3.on('click', function () {
      var clickedslide = swiper3.clickedSlide;
      pas.Main.MainForm.ViewerMode = 'Backdrops';
      pas.Main.MainForm.ViewerURL1 = clickedslide.firstElementChild.getAttribute('data-src');
      pas.Main.MainForm.ViewerURL2 = clickedslide.firstElementChild.getAttribute('data-src').replace('/w300/','/original/');
      pas.Main.MainForm.ViewerURL2 = pas.Main.MainForm.ViewerURL2.replace('/w780/','/original/');
      pas.Main.MainForm.ViewerURLA = pas.Main.MainForm.PhotoA;
      pas.Main.MainForm.ViewerURLN = swiper3.clickedIndex;
      pas.Main.MainForm.ViewerURLC = swiper3.clickedIndex+1;
      pas.Main.MainForm.ViewerURLT = pas.Main.MainForm.BackgroundCount;
      pas.Main.MainForm.ShowViewer();
    });

  } end; {$ENDIF}



  //////////////////////////////////////////////////////////////////////////////
  // This creates a FlatPickr instances (date/time pickers)
  // The displayed date is something like "January 20"
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    var GetBirthDays = this.GetBirthDays;
    this.Birthdate = flatpickr("#divFlatPickr", {
      altFormat: "F d",
      altInput: true,
      wrap: true,
      weekNumbers: true,
      defaultDate: new Date(),
      onChange: function(selectedDates, dateStr, instance) {
        if (dateStr !== '') {
          // Only using one at a time, so picking one clears the others
          document.querySelector("#divFlatPickr2")._flatpickr.clear();
          document.querySelector("#divFlatPickr3")._flatpickr.clear();
          GetBirthDays(parseInt(dateStr.substr(5,2)), parseInt(dateStr.substr(8,2)));
          pas.Main.MainForm.CurrentBirthDate = dateStr;
        }
      }
    });
    var birthdate_today = function(e) {
      e.stopPropagation();
      e.preventDefault();
      pas.Main.MainForm.Birthdate.setDate(new Date(),true);
    }
    window.birthdate_today = birthdate_today;

    var GetDeathDays = this.GetDeathDays;
    this.Deathdate = flatpickr("#divFlatPickr2", {
      altFormat: "F d",
      altInput: true,
      wrap: true,
      weekNumbers: true,
      onChange: function(selectedDates, dateStr, instance) {
        if (dateStr !== '') {
          // Only using one at a time, so picking one clears the others
          document.querySelector("#divFlatPickr")._flatpickr.clear();
          document.querySelector("#divFlatPickr3")._flatpickr.clear();
          GetDeathDays(parseInt(dateStr.substr(5,2)), parseInt(dateStr.substr(8,2)));
          pas.Main.MainForm.CurrentDeathDate = dateStr;
        }
      }
    });
    var deathdate_today = function(e) {
      e.stopPropagation();
      e.preventDefault();
      pas.Main.MainForm.Deathdate.setDate(new Date(),true);
    }
    window.deathdate_today = deathdate_today;

    var GetReleaseDays = this.GetReleaseDays;
    this.Releasedate = flatpickr("#divFlatPickr3", {
      altFormat: "F d",
      altInput: true,
      wrap: true,
      weekNumbers: true,
      onChange: function(selectedDates, dateStr, instance) {
        if (dateStr !== '') {
          // Only using one at a time, so picking one clears the others
          document.querySelector("#divFlatPickr")._flatpickr.clear();
          document.querySelector("#divFlatPickr2")._flatpickr.clear();
          pas.Main.MainForm.CurrentReleaseDate = dateStr;
        }
      }
    });
    var releasedate_today = function(e) {
      e.stopPropagation();
      e.preventDefault();
      pas.Main.MainForm.Releasedate.setDate(new Date(),true);
    }
    window.releasedate_today = releasedate_today;

  } end; {$ENDIF}



  //////////////////////////////////////////////////////////////////////////////
  // headerMenu
  //
  // Tabulator: http://tabulator.info/docs/5.2/menu
  // Define column header menu as column visibility toggle.  Used for both
  // Tabulator tables, basically appears on all columns
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    var headerMenu = function(){
      var menu = [];
      var columns = this.getColumns();
      var groups = this.getGroups();
      var table = this;

      for (let column of columns){

        if (!(column.getDefinition().title == null)) {

          // Build menu item
          var label = document.createElement("div");
          label.classList.add("d-flex", "flex-fill");

          // Create checkbox element using font awesome icons
          var icon = document.createElement("i");
          if (column.isVisible()) {
            icon.classList.add("flex-grow-0", "ColVis", "fa-solid", "fa-check-square");
          }
          else
          {
            icon.classList.add("flex-grow-0", "ColVis", "fa-solid", "fa-square");
          }

          // Menu Title
          let title = document.createElement("div");
          title.classList.add("ps-1", "ColVis", "flex-grow-1");

          if      (column.getDefinition().field == 'PIC'   ) { title.innerText = 'Image'; }
          else if (column.getDefinition().field == 'POP'   ) { title.innerText = 'Popularity'; }
          else if (column.getDefinition().field == 'HT1'   ) { title.innerText = 'Height'; }
          else if (column.getDefinition().field == 'CTZ'   ) { title.innerHTML = '<div style="display:flex; position:absolute; top: 3px; left: 12px;">'+window.icon_flag_special+'<div style="margin-top:2px;">Citizenship</div></div>'; }
          else if (column.getDefinition().field == 'CTG'   ) { title.innerHTML = '<div style="display:flex; position:absolute; top: 3px; left: 12px;">'+window.icon_flag_special+'<div style="margin-top:2px;">Production</div></div>'; }
          else if (column.getDefinition().field == 'IMC'   ) { title.innerText = 'Photos (Count)'; }
          else if (column.getDefinition().field == 'PopInt') { title.innerHTML = '<div style="position:absolute; top: 4px; left: 12px;">'+window.icon_star_sharp+'</div>'; }
          else if (column.getDefinition().field == 'TYP'   ) { title.innerHTML = '<div style="margin-top:-3px; margin-left: 1px; display:flex; fill:#fff !important;">'+window.icon_film+'<div style="margin-left:6px; margin-right:6px; margin-top:3px;">or</div>'+window.icon_tv+'</div>'; }
          else { title.innerText = column.getDefinition().title; }

          var grpAllow = false;
          if      (column.getDefinition().field == 'DOB')    { grpAllow = true; }
          else if (column.getDefinition().field == 'DOD')    { grpAllow = true; }
          else if (column.getDefinition().field == 'NUM')    { grpAllow = true; }
          else if (column.getDefinition().field == 'IMC')    { grpAllow = true; }
          else if (column.getDefinition().field == 'CTZ')    { grpAllow = true; }
          else if (column.getDefinition().field == 'TYP')    { grpAllow = true; }
          else if (column.getDefinition().field == 'PopInt') { grpAllow = true; }

          var groupicon = document.createElement("div");
          var group = document.createElement("div");
          if (grpAllow) {
            groupicon.classList.add("flex-grow-0", "GroupVis", "fa-duotone", "fa-layer-group", "ps-3", "user-select-none");
            if ((groups.length !== 0) && (groups[0].getField() == column.getDefinition().field)) {
              group.classList.add("GroupVis", "flex-grow-0","ps-1", "fa-solid", "fa-circle-check");
            }
            else {
              group.classList.add("GroupVis", "flex-grow-0","ps-1", "fa-solid", "fa-circle");
            }

          }
          else {
            groupicon.classList.add("flex-grow-0", "px-3","user-select-none");
          }

          label.append(icon, title, groupicon, group);

          //create menu item
          menu.push({
            label: label,
            action: function(e){
              e.stopPropagation();

              var colchg = false;
              var grpchg = false;

              if (e.target.classList.contains('ColVis'))                      { colchg = true; }
              else if (e.target.classList.contains('GroupVis'))               { grpchg = true; }
              else if (e.target.parentElement.classList.contains('ColVis'))   { colchg = true; }
              else if (e.target.parentElement.classList.contains('GroupVis')) { grpchg = true; }

              // Toggle current column visibility
              if (colchg) {
                column.toggle();
                if (column.isVisible()) {
                  e.currentTarget.firstElementChild.firstElementChild.classList.replace("fa-square","fa-check-square");
                }
                else {
                  e.currentTarget.firstElementChild.firstElementChild.classList.replace("fa-check-square","fa-square");
                }
              }

              // toggle current column grouping
              if (grpchg) {
                var table = column.getTable();
                if ((groups.length == 0) || (groups[0].getField() !== column.getField())) {
                  table.setSort(column.getField(), "desc");
                  table.setGroupBy(column.getField());
                  table.redraw(true);
                }
                else {
                  table.setGroupBy(false);
                  table.redraw(true);
                }
              }

            }
          });

          // Add a few separators
          if (   (column.getDefinition().field == 'HT1')
              || (column.getDefinition().field == 'OVR')
              || (column.getDefinition().field == 'PopInt')
              || (column.getDefinition().title == 'Top 5 TV Shows')) {
            var sep = document.createElement("div");
            sep.innerHTML = '<hr class="w-100 p-0 m-0 border-1 border-top border-secondary pe-none">';
            menu.push({
              label: sep
            });
          }

          if ((column.getDefinition().field == 'OVR')  || (column.getDefinition().title == 'Top 5 TV Shows')) {
            let clrgroup = document.createElement("div");
            clrgroup.innerHTML = '<div style="display:flex;">'+window.icon_xmark_left+'<div>Clear Group</div></div>';
            menu.push({
              label: clrgroup,
              action: function(e){
                e.stopPropagation();
                column.getTable().setGroupBy(false);
                column.getTable().redraw(true);
              }
            })
          }
        }
      }

      return menu;
    };

  } end; {$ENDIF}


  {$IFNDEF WIN32} asm {
    if (divTop.parentNode.childNodes[1].nodeType == 3) {
      divTop.parentNode.childNodes[1].remove()
    }
  } end; {$ENDIF}



  //////////////////////////////////////////////////////////////////////////////
  // headerNameFilter
  //
  // Define Header Filter for Name column
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    var headerNameFilter = function(e, column, onRendered){
      var container = document.createElement("div");
      container.classList.add("rounded", "border-2", "bg-dark", "mt-2");

      var label = document.createElement("label");
      label.innerHTML = "Filter By Name";
      label.style.display = "block";
      label.classList.add("text-white", "mb-2", "ms-1", "d-flex", "flex-fill", "align-items-center", "justify-content-between");
      label.style.height = "18px";

      var input = document.createElement("input");
      input.placeholder = "Name...";
      input.value = column.getHeaderFilterValue() || "";
      input.classList.add("rounded", "border-0", "ps-2", "m-1");
      input.autocomplete = "off";
      input.setAttribute('spellcheck', 'false');
      input.addEventListener("keyup", (e) => {
          column.setHeaderFilterValue(input.value);
          if (input.value.length > 0) { column.getElement().classList.add("FilterActive");}
          else {column.getElement().classList.remove("FilterActive");}
          if (event.keyCode === 13) { // key code of the keybord key
            container.classList.add("d-none");
          }
      });

      var label2 = document.createElement("label");
      label2.innerHTML = "Filter By Birthplace";
      label2.style.display = "block";
      label2.classList.add("text-white","mt-2", "mb-2", "ms-1", "d-flex", "flex-fill", "align-items-center", "justify-content-between");
      label2.style.height = "18px";

      var input2 = document.createElement("input");
      input2.placeholder = "City/Region/Country...";
      input2.value = column.getTable().getColumn('BPL').getHeaderFilterValue() || "";
      input2.classList.add("rounded", "border-0", "ps-2", "m-1");
      input2.autocomplete = "off";
      input2.setAttribute('spellcheck', 'false');
      input2.addEventListener("keyup", (e) => {
          column.getTable().getColumn('BPL').setHeaderFilterValue(input2.value);
          if (input2.value.length > 0) { column.getElement().classList.add("FilterActive");}
          else {column.getElement().classList.remove("FilterActive");}
          if (event.keyCode === 13) { // key code of the keybord key
            container.classList.add("d-none");
          }
      });

      var button = document.createElement("button");
      button.classList.add("btn", "pe-1", "btn-link","text-decoration-none");
      button.innerHTML = window.icon_xmark_right;
      button.addEventListener("click", (e) => {
        column.setHeaderFilterValue('');
        column.getTable().getColumn('BPL').setHeaderFilterValue('');
        column.getElement().classList.remove("FilterActive");
        input.value = '';
        input2.value = '';
        container.classList.add("d-none");
      });

      label.appendChild(button);
      container.appendChild(label);
      container.appendChild(input);
      container.appendChild(label2);
      container.appendChild(input2);
      setTimeout(function (){
        input.focus();
        input.select();
      },50);

      return container;
    }

  } end; {$ENDIF}


  //create "Name" header filter to allow popup to filter
  {$IFNDEF WIN32} asm {
    var nameHeaderFilter = function(){
      return document.createElement("span");
    }
  } end; {$ENDIF}



  //////////////////////////////////////////////////////////////////////////////
  // Tabulator Default Options
  // Make sure this is executed before any Tabulator tables are created
  // This saves us from having to repeate these defintions for every table.
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    Tabulator.defaultOptions.rowHeight = 68;
    Tabulator.defaultOptions.initialSort = [{column:"PopInt", dir:"desc"}],
    Tabulator.defaultOptions.index = "ID";
    Tabulator.defaultOptions.height = "100%";
    Tabulator.defaultOptions.layout = "fitColumns";
    Tabulator.defaultOptions.movableColumns = true;
    Tabulator.defaultOptions.selectable = 1;
    Tabulator.defaultOptions.columnHeaderSortMulti = true;
    Tabulator.defaultOptions.clipboard = "copy";
    Tabulator.defaultOptions.placeholder = '<div style="justify-content: center; align-items: center;">No Records Found.</small></div>'+
                                           '<div style="justify-content: center; align-items: center;">'+window.icon_star_sharp_special+'<div>Searching.... Please Wait.</div></div>'+
                                           '<div style="justify-content: center; align-items: center;">'+window.icon_star_sharp_special+'<div>Preparing.... Please Wait.</div></div>'+
                                           '<div style="justify-content: center; align-items: center;">'+window.icon_star_sharp_special+'<div>Loading.... Please Wait.</div></div>'+
                                           '<div style="justify-content: center; align-items: center;"><i class="fa-duotone fa-cloud-exclamation fa-xl me-3"></i>Error.... Please retry later.</div></div>';
    Tabulator.defaultOptions.headerSortElement = window.icon_sort+window.icon_sort_up+window.icon_sort_down;
    Tabulator.defaultOptions.groupToggleElement = "header";
    Tabulator.defaultOptions.columnDefaults = {
      headerHozAlign: "left",
      hozAlign: "left",
      headerSortStartingDir:"desc",
      headerSortTristate:true
    };
  } end; {$ENDIF}



  //////////////////////////////////////////////////////////////////////////////
  // checkImage
  //
  // Used to convert the image URL coming from TMDb to a local placeholder
  // value if the TMDb data is missing for that particular image
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    var checkImage = function(value, data, type, params, component){
      if ((value == null) || (value == '') || (value == '""')) {
        if      (params.imgtype == "person")   { return 'img/person-placeholder.png'; }
        else if (params.imgtype == "movie")    { return 'img/movie-placeholder.png';  }
        else if (params.imgtype == "tv")       { return 'img/tv-placeholder.png';     }
        else if (params.imgtype == "video")    { return 'img/movie-placeholder.png';  }
        else if (params.imgtype == "backdrop") { return 'img/movie-placeholder.png';  }
        else {
          if (data !== null) {
           if (data.TYP == 'tv') {
              return 'img/tv-placeholder.png'
            }
            else {
             return 'img/movie-placeholder.png';
            }
          }
          else if (type !== null) {
           if (type == 'tv') {
              return 'img/tv-placeholder.png'
            }
            else {
             return 'img/movie-placeholder.png';
            }
          }
        }
      }
      else if ((value.substr(0,4) == 'img/') || (value.substr(0,22) == 'https://image.tmdb.org')) {
        return value;
      }
      else {
        // Pick the smallest size available, and upsize them later if warranted
        if      (params.imgtype == "person"  ) { return "https://image.tmdb.org/t/p/w45" +value; }
        else if (params.imgtype == "movie"   ) { return "https://image.tmdb.org/t/p/w92" +value; }
        else if (params.imgtype == "tv"      ) { return "https://image.tmdb.org/t/p/w92" +value; }
        else if (params.imgtype == "tvmovie" ) { return "https://image.tmdb.org/t/p/w92" +value; }
        else if (params.imgtype == "video"   ) { return "https://image.tmdb.org/t/p/w300"+value; }
        else if (params.imgtype == "backdrop") { return "https://image.tmdb.org/t/p/w300"+value; }
        else {
          return 'img/movie-placeholder.png';
        }
      }
    }
  } end; {$ENDIF}


  /////////////////////////////////////////////////////////////////////////////////////////////////
  // PopularityInt
  //
  // Tabulator Mutator function
  // Used to convert the Popularity value (float) into an integer
  // number of stars, stratified in some fashion
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function PopularityInt(value, data, type, params, component) {
      // This isn't actually a field, so we pull in data from an actual field
      var starcount = parseInt(data.POP);
//      if      ( starcount <=  2) { return 0;                 }
//      else if ( starcount <=  5) { return 1+(data.POP/5);    }
//      else if ( starcount <= 10) { return 2+(data.POP/10);   }
//      else if ( starcount <= 20) { return 3+(data.POP/20);   }
//      else if ( starcount <= 40) { return 4+(data.POP/40);   }
//      else                       { return 5+(data.POP/1000); }
      if      ( starcount <=  2) { return 0;                 }
      else if ( starcount <=  5) { return Math.min(5,parseInt(1+(data.POP/5)));    }
      else if ( starcount <= 10) { return Math.min(5,parseInt(2+(data.POP/10)));   }
      else if ( starcount <= 20) { return Math.min(5,parseInt(3+(data.POP/20)));   }
      else if ( starcount <= 40) { return Math.min(5,parseInt(4+(data.POP/40)));   }
      else                       { return Math.min(5,parseInt(5+(data.POP/1000))); }
    }
    window.PopularityInt = PopularityInt;
  } end; {$ENDIF}


  /////////////////////////////////////////////////////////////////////////////////////////////////
  // SetLNK
  //
  // Updates the link icons with the current info for the selected actor, movie or tv show
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    // Enable/populate the links at the top based on whatever external links we've been able
    // to cobble together from both TMDb and WikiData.  Got to do some basic checking as well
    // as sometimes there are links without data.  Something similar is done with the Links
    // field in ActorTabulator.
    function SetLNK(row,key,prefix,suffix,button,icon,alt){
      if (row.getCell(key) !== false) {
        var LNK = row.getCell(key).getValue();
        if ((LNK == null) || (LNK == "")) {
          button.style.opacity = 0.25;
          button.innerHTML = '<img style="padding:2px;" src='+icon+' height=100% width=100% alt="'+alt+'">';
        }
        else {
          button.style.opacity = 1.0;
          button.innerHTML = '<a aria-label="'+alt+'" rel="noopener noreferrer" target="_blank" href='+encodeURI(prefix+LNK+suffix)+'><img style="padding:2px;" src='+icon+' height=100% width=100% alt="'+alt+'">';
        }
      }
      else {
        button.style.opacity = 0.25;
        button.innerHTML = '<img style="padding:2px;" src='+icon+' height=100% width=100% alt="'+alt+'">';
      }
    }
    window.SetLNK = SetLNK;
  } end; {$ENDIF}


  /////////////////////////////////////////////////////////////////////////////////////////////////
  // SetTableLNK
  //
  // Updates the link icons appearing in the table with the current info for the selected actor,
  // movie or tv show
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function SetTableLNK(cell,key,prefix,icon,alt){
      if (cell.getRow().getCell(key) !== false) {
        var LNK = cell.getRow().getCell(key).getValue();
        if (!((LNK == null) || (LNK == ""))) {
          return '<a aria-label="'+alt+'" rel="noopener noreferrer" target="_blank" href='+prefix+LNK+'><img src='+icon+' height=34 width=34 style="margin-left:2px; margin-right:2px;" alt="'+alt+'"></a>';
        }
        else {
          return '';
        }
      }
      else {
        return '';
      }
    }
    window.SetTableLNK = SetTableLNK;
  } end; {$ENDIF}


  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Role_Selected
  //
  // This is called when a row is selected from the Actor table and is what
  // updates everything at the top of the interface.
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function Role_Selected(e, row) {
      if ((!(row.getCell('ID').getValue() == pas.Main.MainForm.CurrentRole)) || (pas.Main.MainForm.MenuType == 0)) {

        // Track this so we don't have to do this update if the role hasn't changed
        pas.Main.MainForm.CurrentRole = row.getCell('TID').getValue();
//        pas.Main.MainForm.CurrentPerson = -1;

        // Change Title to reflect what we're looking at
        // document.title = 'Actorious-'+row.getCell('NAM').getValue();

        // Load photo from RoleTabulator into DIV
        // Swap the w92 size for the h632
        // Changing innerHTML isn't enough to trigger MutationObserver, so we create an element and add it.
        let poster = checkImage(row.getCell('PIC').getValue(),null,row.getCell('TYP').getValue(),{imgtype:"tvmovie"})
        divPhoto.innerHTML =
          '<div style="width:185px; height:278px;">'+
            '<img '+
              'alt="Photo of '+row.getCell('NAM').getValue()+'" '+
              'class="lazy portrait PriorityA" '+
              'style="width:185px; height:auto;" '+
              'src='+poster+' '+
              'data-src='+poster.replace('/w92/','/w185/')+' '+
              'onerror="this.onerror=null;this.src=\'img/hourglass.png\'"'+
            '/>'+
          '</div>';
        pas.Main.MainForm.Photo1 = poster;
        pas.Main.MainForm.Photo2 = poster.replace('/w92/','/original/');
        pas.Main.MainForm.PhotoA = row.getCell('NAM').getValue();

        // Load biography from ActorTabulator into DIV
        // Convert \n characters into paragraphs
        // Add word count just for fun
        pas.Main.MainForm.BioWords = 0;
        var biotext = '<h5>No summary information was found.<h5>';
        if (row.getCell('OVR').getValue()) {
          try {
            biotext = decodeURIComponent(row.getCell('OVR').getValue());
          } catch {
            biotext = (row.getCell('OVR').getValue());
          }
          if ((biotext == 'undefined') || (biotext == '') ) {
            biotext = '<h5>No summary information was found.<h5>';
            pas.Main.MainForm.BioWords = 0;
          }
          else {
            pas.Main.MainForm.BioWords = biotext.trim().split(/\s+/).length;
          }
        }
        divBiography.innerHTML = '<div class="w-100 h-100 ps-2 pe-2 pb-4" style="white-space:normal; overflow-y:auto;">'+
            '<h4>'+row.getCell('NAM').getValue()+'</h4>'+
            '<h5>'+(row.getCell('TGL').getValue() || '')+'</h5>'+
            '<p>'+biotext.replace("\n","</p><p>")+'</p></div>';


        // Populate some buttons
        window.SetLNK(row,'TID','https://www.themoviedb.org/'+row.getCell('TYP').getValue()+'/', '',       linkTMDb,           'img/tmdb_icon.svg',           'TMDb Link');
        window.SetLNK(row,'NAM','https://www.letterboxd.com/search/',                            '/',      linkLetterboxd,     'img/letterboxd_icon.png',     'Letterboxd Search');
        window.SetLNK(row,'TID','https://www.themoviedb.org/'+row.getCell('TYP').getValue()+'/', '/watch', linkJustWatch,      'img/justwatch_icon.png',      'TMDb/JustWatch Link');
        window.SetLNK(row,'WID','',                                                              '',       linkWikiData,       'img/wikidata_icon.png',       'WikiData Link');
        window.SetLNK(row,'IID','https://www.imdb.com/name/',                                    '',       linkIMDb,           'img/imdb_icon.png',           'IMDb Link');
        window.SetLNK(row,'RID','https://www.rottentomatoes.com/',                               '',       linkRottenTomatoes, 'img/rottentomatoes_icon.png', 'Rotten Tomatoes Link');
        window.SetLNK(row,'MET','https://www.metacritic.com/',                                   '',       linkMetaCritic,     'img/metacritic_icon.png',     'MetaCritic Link');
        window.SetLNK(row,'WWW','',                                                              '',       linkWeb,            'img/web_icon.png',            'Website Link');
        window.SetLNK(row,'WIK','',                                                              '',       linkWikipedia,      'img/wikipedia_icon.png',      'Wikipedia Link');
        window.SetLNK(row,'FID','https://www.facebook.com/',                                     '',       linkFacebook,       'img/facebook_icon.png',       'Facebook Link');
        window.SetLNK(row,'INS','https://www.instagram.com/',                                    '',       linkInstagram,      'img/instagram_icon.png',      'Instagram Link');
        window.SetLNK(row,'TWT','https://x.com/',                                                '',       linkTwitter,        'img/twitter_icon.png',        '𝕏 Link');
        window.SetLNK(row,'MID','https://www.models.com/people/',                                '',       linkModels,         'img/models_icon.png',         'Models.com Link');

        // Populate the Pop button
        // This fills in the Pop figure, in amongst the other buttons above
        var pop = row.getCell('POP').getValue();
        var LNK = row.getCell('TID').getValue();
        linkScore.style.opacity = 1.0;
        linkScore.innerHTML = '<div style="margin-top:1px; width:100%; height:100%; text-align:center; vertical-align:middle;"><a aria-label="Link Score on TMDb" style="text-decoration:none; font-size:12px; color:white;" rel="noopener noreferrer" target="_blank" href=https://www.themoviedb.org/person/'+LNK+'><strong>'+pop.toFixed(0)+'</strong></a></div>';

        // Letterboxd is enabled for Movies and people but not TV Shows
        if (row.getCell('TYP').getValue() !== 'tv') {
          linkLetterboxd.style.opacity = 1.0;
        }
        else {
          linkLetterboxd.style.opacity = 0.25;
        }

        // JustWatch is enabled for Movies/TV Shows but not for people
        linkJustWatch.style.opacity = 1.0;

        // Populate the linkLINK button
        linkLink.style.opacity = 1.0;
        pas.Main.MainForm.SetBootstrapTooltipDiv(pas.Main.MainForm.linkLink, 'PermaLink to '+row.getCell('NAM').getValue(), 'right');
        linkLink.innerHTML = '<div style="padding:2px 2px;"><a aria-label="PermaLink" rel="noopener noreferrer" target="_blank" style="fill:var(--bs-gray-200); text-decoration:none;" href="'+window.location.href.split('?')[0]+'?R='+row.getCell('TYP').getValue().slice(0,1).toUpperCase()+window.to29(row.getCell('TID').getValue())+'-'+row.getCell('NAM').getValue().replaceAll(' ','-')+'">'+window.icon_link+'</a></div>';

        // Populate the linkGoogleImageSearch button
        linkGoogleImageSearch.style.opacity = 1.0;
        linkGoogleImageSearch.innerHTML = '<a rel="noopener noreferrer" target="_blank" aria-label="Google Image Search" style="text-decoration:none;" href="https://www.google.com/search?q='+row.getCell('NAM').getValue().replaceAll(' ','+')+'+'+row.getCell('TYP').getValue()+'&tbm=isch"><img style="padding:3px; width:100%; height:100%;" alt="Google Images Logo" src="img/google_icon.png"></a>';

        // This fills in the Height/Runtime figure, in amongst the other buttons above
        var runtime = '';
        if (row.getCell('RTM').getValue() !== undefined) {
          runtime = row.getCell('RTM').getValue();
          if (runtime == 0) {
            runtime = '';
          }
          else {
            runtime = Math.floor(runtime/60)+' h<br />'+(runtime - (60*Math.floor(runtime/60)))+' m';
          }
        }
        if (runtime == '') {
          linkHeight.style.opacity = 0.25;
          linkHeight.innerHTML = '';
        }
        else {
          linkHeight.style.opacity = 1.0;
          linkHeight.innerHTML = '<div style="margin-top:3px; width:100%; height:100%; font-size:10px; color:var(--bs-light); line-height:1.2; text-align:center; vertical-align:middle;">'+runtime+'</div>';
        }


        // This fills in the Citizenship/Country flag
        var country = row.getCell('CTG').getValue();
        if (country !== undefined) {
          if (country.length > 0) {
            linkCitizenship.style.opacity = 1.0;
            linkCitizenship.innerHTML = '<div style="font-size:15px;" class="border border-0 fp fp-lg fp-square '+country[0].toLowerCase()+'"></div>';
          }
          else {
            linkCitizenship.style.opacity = 0.25;
            linkCitizenship.innerHTML = '<div style="font-size:16px;" class="rounded bg-dark border border-secondary fp fp-lg fp-square lgbt"></div>';
          }
        }
        else {
          linkCitizenship.style.opacity = 0.25;
          linkCitizenship.innerHTML = '<div style="font-size:16px;" class="rounded bg-dark border border-secondary fp fp-lg fp-square lgbt"></div>';
        }


        // Load up the Photo/Poster Slider
        var imagecount = 0;
        var slides = '';
        if (row.getCell('PSC') !== undefined) {
          if (row.getCell('PSC').getValue() > 0) {
            var imagelist = row.getCell('PSG').getValue();
            var altphoto = '"Poster of '+row.getCell('NAM').getValue()+'" ';
            imagecount = imagelist.length;
            for (var i = imagecount-1; i >= 0; i--) {
              var image = checkImage(imagelist[i],null,row.getCell('TYP').getValue(),{imgtype:"tvmovie"});
              slides = slides+'<div class="swiper-slide" style="width:154px !important; height:234px;">'+
                                 '<img '+
                                   'class="lazy portrait" '+
                                   'style="cursor: pointer; width: 156px; height: 234px; border-radius: 4px;"'+
                                   'src='+image+' '+
                                   'data-src='+image.replace('/w92/','/w185/')+' '+
                                   'alt='+altphoto+
                                   'onerror="this.onerror=null;this.src=\'img/hourglass.png\'"'+
                                 '/>'+
                               '</div>';
            }
          }
        }
        divPhotoSlider.firstElementChild.firstElementChild.firstElementChild.innerHTML = slides;
        pas.Main.MainForm.PhotoCount = imagecount;
        window.swiper.update();
        window.swiper.slideTo(0,0,true);


        // Load up the Videos slider
        var imagecount = 0;
        var slides = '';
        if (row.getCell('VDC') !== undefined) {
          if (row.getCell('VDC').getValue() > 0) {
            var imagelist = row.getCell('VDS').getValue();
            var altvideo = '"Video for '+row.getCell('NAM').getValue()+'" ';
            imagecount = imagelist.length;
            for (var i = 0; i < imagecount; i++) {
              if (imagelist[i].indexOf('YouTube:') !== -1) {
                var image = imagelist[i].substr(8,50);
                slides = slides+'<div class="swiper-slide" style="width:206px !important; height:116px !important;">'+
                                  '<a href="https://www.youtube.com/watch?v='+image+'" rel="noopener noreferrer" target="_blank" aria-label='+altvideo+'>'+
                                    '<img '+
                                      'class="lazy landscape" '+
                                      'style="cursor: pointer; width: 206px; height: 116px; border-radius: 4px;"'+
                                      'src="https://i.ytimg.com/vi/'+image+'/default.jpg" '+
                                      'data-src="https://i.ytimg.com/vi/'+image+'/mqdefault.jpg" '+
                                      'alt='+altvideo+
                                      'onerror="this.onerror=null;this.src=\'img/hourglass_wide.png\'"'+
                                    '/>'+
                                  '</a>'+
                                '</div>';
              }
            }
          }
        }
        divVideoSlider.firstElementChild.firstElementChild.firstElementChild.innerHTML = slides;
        pas.Main.MainForm.VideoCount = imagecount;
        window.swiper2.update();
        window.swiper2.slideTo(0,0,true);

        // Load up the Backdrop slider
        var imagecount = 0;
        var slides = '';
        if (row.getCell('BDC') !== undefined) {
          if (row.getCell('BDC').getValue() > 0) {
            var imagelist = row.getCell('BDS').getValue();
            var altphoto = '"Backdrop from '+row.getCell('NAM').getValue()+'" ';
            imagecount = imagelist.length;
            for (var i = 0; i < imagecount; i++) {
              var image = checkImage(imagelist[i],null,null,{imgtype:"backdrop"});
              slides = slides+'<div class="swiper-slide" style="width:206px height:116px !important;">'+
                                 '<img '+
                                   'class="lazy landscape" '+
                                   'style="cursor: pointer; width:206px; height:116px; border-radius: 4px;"'+
                                   'src='+image+' '+
                                   'data-src='+image+' '+
                                   'alt='+altphoto+
                                   'onerror="this.onerror=null;this.src=\'img/hourglass_wide.png\'"'+
                                 '/>'+
                               '</div>';
            }
          }
        }
        divBackgroundSlider.firstElementChild.firstElementChild.firstElementChild.innerHTML = slides;
        pas.Main.MainForm.BackgroundCount = imagecount;
        window.swiper3.update();
        window.swiper3.slideTo(0,0,true);



        // Update the top menu with the Role values
        if (row.getCell('TYP').getValue() == 'movie') { pas.Main.MainForm.MenuType = 1; }
        else { pas.Main.MainForm.MenuType = 2 };
        window.RefreshMenu();

        // We've potentially added some images (via the Photo slider at least)
        // so let's make sure they're all loaded
        pas.Main.MainForm.tmrImageCheckEnable();
      }
    };
    window.Role_Selected = Role_Selected;

  } end; {$ENDIF}


  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Actor_Selected
  //
  // This is called when a row is selected from the Actor table and is what
  // updates everything at the top of the interface.
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function Actor_Selected(e, row){

      if ((!(row.getCell('TID').getValue() == pas.Main.MainForm.CurrentPerson)) || !(pas.Main.MainForm.MenuType == 0)) {

        // Not in startup if we don't have any startup data
        if (pas.Main.MainForm.PhotoA == 'Unknown') {
          pas.Main.MainForm.Startup = false;
        }


        // Load photo from ActorTabulator into DIV
        // Swap the w45 size for the h632
        // Changing innerHTML isn't enough to trigger MutationObserver, so we create an element and add it.
        if (!(pas.Main.MainForm.Startup)) {
          let portrait = checkImage(row.getCell('PIC').getValue(),null,null,{imgtype:"person"})
          divPhoto.innerHTML =
            '<div style="width:185px; height:278px;">'+
              '<img '+
                'alt="Photo of '+row.getCell('NAM').getValue()+'" '+
                'class="lazy portrait PriorityA" '+
                'style="width:185px; height:auto;" '+
                'src='+portrait+' '+
                'data-src='+portrait.replace('/w45/','/w185/')+' '+
                'onerror="this.onerror=null;this.src=\'img/hourglass.png\'"'+
              '/>'+
            '</div>';
          pas.Main.MainForm.Photo1 = portrait;
          pas.Main.MainForm.Photo2 = portrait.replace('/w45/','/original/');
          pas.Main.MainForm.PhotoA = row.getCell('NAM').getValue();
        }


        // Connections
        var relatives = row.getCell('WID').getValue();
        if (relatives !== undefined) {
          relatives = parseInt(relatives.split('Q')[1]);
          pas.Main.MainForm.btnSetRelatives(relatives, row.getCell('NAM').getValue())
        }
        else {
          pas.Main.MainForm.btnSetRelatives(-1, row.getCell('NAM').getValue())
        }


        // Load biography from ActorTabulator into DIV
        // Convert \n characters into paragraphs
        // Add word count just for fun
        pas.Main.MainForm.BioWords = 0;
        var biotext = '<h5>No biographical information was found.<h5>';
        try {
          biotext = decodeURIComponent(row.getCell('BIO').getValue());
        } catch {
          biotext = row.getCell('BIO').getValue();
        }
        if ((biotext == 'undefined') || (biotext == '')) {
          biotext = '<h5>No biographical information was found.<h5>';
          pas.Main.MainForm.BioWords = 0;
        }
        else {
          pas.Main.MainForm.BioWords = biotext.trim().split(/\s+/).length;
        }
        divBiography.innerHTML = '<div class="w-100 h-100 ps-2 pe-2 pb-4" style="white-space:normal; overflow-y:auto;">'+
          '<h4>'+row.getCell('NAM').getValue()+'</h4>'+
          '<p>'+biotext.replace("\n","</p><p>")+'</p></div>';


        // Set Links
        window.SetLNK(row,'TID','https://www.themoviedb.org/person/', '',  linkTMDb,           'img/tmdb_icon.svg',           'TMDb Link');
        window.SetLNK(row,'NAM','https://www.letterboxd.com/search/', '/', linkLetterboxd,     'img/letterboxd_icon.png',     'Letterboxd Search Link');
        window.SetLNK(row,'TID','',                                   '',  linkJustWatch,      'img/justwatch_icon.png',      'TMDb/JustWatch Link');
        window.SetLNK(row,'WID','',                                   '',  linkWikiData,       'img/wikidata_icon.png',       'WikiData Link');
        window.SetLNK(row,'IID','https://www.imdb.com/name/',         '',  linkIMDb,           'img/imdb_icon.png',           'IMDb Link');
        window.SetLNK(row,'RID','https://www.rottentomatoes.com/',    '',  linkRottenTomatoes, 'img/rottentomatoes_icon.png', 'Rotten Tomatoes Link');
        window.SetLNK(row,'MET','https://www.metacritic.com/',        '',  linkMetaCritic,     'img/metacritic_icon.png',     'MetaCritic Link');
        window.SetLNK(row,'WWW','',                                   '',  linkWeb,            'img/web_icon.png',            'Website Link');
        window.SetLNK(row,'WIK','',                                   '',  linkWikipedia,      'img/wikipedia_icon.png',      'Wikipedia Link');
        window.SetLNK(row,'FID','https://www.facebook.com/',          '',  linkFacebook,       'img/facebook_icon.png',       'Facebook Link');
        window.SetLNK(row,'INS','https://www.instagram.com/',         '',  linkInstagram,      'img/instagram_icon.png',      'Instagram Link');
        window.SetLNK(row,'TWT','https://x.com/',                     '',  linkTwitter,        'img/twitter_icon.png',        '𝕏 Link');
        window.SetLNK(row,'MID','https://www.models.com/people/',     '',  linkModels,         'img/models_icon.png',         'Models.com Link');

        // This fills in linkLINK
        linkLink.style.opacity = 1.0;
        pas.Main.MainForm.SetBootstrapTooltipDiv(pas.Main.MainForm.linkLink, 'PermaLink to '+row.getCell('NAM').getValue(), 'right');
        linkLink.innerHTML = '<div style="padding:2px 2px;"><a aria-label="PermaLink" rel="noopener noreferrer" target="_blank" style="fill:var(--bs-gray-200); text-decoration:none;" href="'+window.location.href.split('?')[0]+'?R=P'+window.to29(row.getCell('TID').getValue())+'-'+row.getCell('NAM').getValue().replaceAll(' ','-')+'">'+window.icon_link+'</a></div>';

        // Letterboxd is enabled for Movies/People but not TV Shows
        linkLetterboxd.style.opacity = 1.0;

        // JustWatch is enabled for Movies/TV Shows but not for people
        linkJustWatch.style.opacity = 0.25;

        // This fills in linkGoogleImageSearch
        linkGoogleImageSearch.style.opacity = 1.0;
        linkGoogleImageSearch.innerHTML = '<a aria-label="Google Image Search" rel="noopener noreferrer" target="_blank" style="text-decoration:none;" href="https://www.google.com/search?q='+row.getCell('NAM').getValue().replaceAll(' ','+')+'&tbm=isch"><img style="padding:3px; width:100%; height:100%;" alt="Google Images Logo" src="img/google_icon.png"></a></div>';


        // This fills in the Actorious Points figure, in amongst the other buttons above
        var pts = row.getCell('PTS').getValue();
        if (pts !== undefined) {
          if (pts < 100) { linkScore.innerHTML = '<div style="cursor:help; margin-top:6px; width:100%; height:100%; text-align:center; vertical-align:middle; font-size:12px;color:white;">'+pts.toFixed(1)+'</strong></div>'; }
          else           { linkScore.innerHTML = '<div style="cursor:help; margin-top:6px; width:100%; height:100%; text-align:center; vertical-align:middle; font-size:12px;color:white;">'+pts.toFixed(0)+'</strong></div>'; }
          linkScore.style.opacity = 1.0;
          var ptb = row.getCell('PTB').getValue();
          if (ptb !== undefined) {
            var breakdown = '<table style="border-collapse: collapse; border: none !important; font-size:12px !important">'+
                              '<tr><td colspan="2"><strong>Actorious Score</strong></td></tr>'+
                              '<tr><td style="text-align:left;">Basic Info</td><td style="text-align:right; min-width:50px;">'+ptb["Basic"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">TMDb Score</td><td style="text-align:right;">'+ptb["TMDb"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">Social Media</td><td style="text-align:right;">'+ptb["Social"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">Movies</td><td style="text-align:right;">'+ptb["Movies"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">- Bonus</td><td style="text-align:right;">'+ptb["MoviesBonus"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">- Recent</td><td style="text-align:right;">'+ptb["MoviesRecent"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">TV Shows</td><td style="text-align:right;">'+ptb["TVShows"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">- Bonus</td><td style="text-align:right;">'+ptb["TVBonus"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">- Recent</td><td style="text-align:right;">'+ptb["TVRecent"].toFixed(1)+'</td></tr>'+
                              '<tr><td style="text-align:left;">Awards</td><td style="text-align:right;">'+ptb["Awards"].toFixed(1)+'</td></tr>'+
                            '</table>';
            pas.Main.MainForm.SetBootstrapTooltipDiv(pas.Main.MainForm.linkScore, breakdown, 'left');
          }
          else {
            pas.Main.MainForm.SetBootstrapTooltipDiv(pas.Main.MainForm.linkScore, '<strong>Actorious Score</strong><br />Not Calculated', 'left');
          }
        }
        else {
          linkScore.innerHTML = ''
          linkScore.style.opacity = 0.25;
          pas.Main.MainForm.SetBootstrapTooltipDiv(pas.Main.MainForm.linkScore, '<strong>Actorious Score</strong><br />Not Calculated', 'left');
        }


        // This fills in the Citizenship/contry flag
        var country = row.getCell('CTZ').getValue();
        if (country !== undefined) {
          linkCitizenship.style.opacity = 1.0;
          linkCitizenship.innerHTML = '<div style="font-size:15px;" class="border border-0 fp fp-lg fp-square '+country.toLowerCase()+'"></div>';
        }
        else {
          linkCitizenship.style.opacity = 0.25;
          linkCitizenship.innerHTML = '<div style="font-size:16px;" class="rounded bg-dark border border-secondary fp fp-lg fp-square lgbt"></div>';
        }

        // This fills in the Height/Runtime figure, in amongst the other buttons above
        var height1 = '';
        var height2 = '';
        if (row.getCell('HT1').getValue() !== undefined) {
          height1 = row.getCell('HT1').getValue();
          height2 = row.getCell('HT2').getValue();
        }
        if (height1 == '') {
          linkHeight.style.opacity = 0.25;
          linkHeight.innerHTML = '';
        }
        else {
          linkHeight.style.opacity = 1.0;
          linkHeight.innerHTML = '<div style="margin-top:3px; width:100%; height:100%; font-size:10px; color:var(--bs-light); line-height:1.2; text-align:center; vertical-align:middle;">'+height1+'<br />'+height2+'</div>';
        }


        // Load up the Photo/Poster Slider
        var imagecount = 0;
        var slides = '';
        if (row.getCell('IMC') !== undefined) {
          if (row.getCell('IMC').getValue() > 0) {
            var imagelist = row.getCell('IMG').getValue();
            var altphoto = '"Photo of '+row.getCell('NAM').getValue()+'" ';
            imagecount = imagelist.length;
            for (var i = imagecount-1; i >= 0; i--) {
              var image = checkImage(imagelist[i],null,null,{imgtype:"person"});
              slides = slides+'<div class="swiper-slide" style="width:156px !important; height:234px !important">'+
                                 '<img '+
                                   'class="lazy portrait" '+
                                   'style="cursor: pointer; width: 156px; height: 234px; border-radius: 4px;"'+
                                   'src='+image+' '+
                                   'data-src='+image.replace('/w45/','/w185/')+' '+
                                   'alt='+altphoto+
                                   'onerror="this.onerror=null;this.src=\'img/hourglass.png\'"'+
                                 '/>'+
                               '</div>';
            }
          }
        }
        divPhotoSlider.firstElementChild.firstElementChild.firstElementChild.innerHTML = slides;
        pas.Main.MainForm.PhotoCount = imagecount;
        window.swiper.update();
        window.swiper.slideTo(0,0,true);


        if (!(pas.Main.MainForm.CurrentPerson == row.getCell('TID').getValue())) {
          pas.Main.MainForm.CurrentPerson = row.getCell('TID').getValue();

          // Get data for RoleTabulator from Work field in ActorTabulator
          var roleData = row.getCell('WRK').getValue();
          var RoleTable = pas.Main.MainForm.RoleTabulator;

          // Filter out Adult content
          var adult = pas.Main.MainForm.AdultContent;
          var acount = 0;
          if (!adult) {
            for (var i = roleData.length - 1; i >= 0; i--) {
              if (roleData[i]['XXX'] == true) {
                roleData.splice(i,1);
                acount++;
              }
            }
          }
          else {
            for (var i = roleData.length - 1; i >= 0; i--) {
              if ((roleData[i]['XXX'] == false) || (roleData[i]['XXX'] == undefined)) {
                roleData.splice(i,1);
                acount++;
              }
            }
          }

          RoleTable.setData(roleData)
          .then(function(){

            // update the first column header to show a count
            var rowCount = RoleTable.getDataCount("active");
            if (RoleTable.getDataCount() !== rowCount) {
              window.rolecount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>';
            }
            else {
              window.rolecount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>';
            };

            var title = pas.Main.MainForm.TopTitle;
            if (title !== '') {
              pas.Main.MainForm.TopTitle = '';
              RoleTable.deselectRow();
              var rows = RoleTable.searchRows('NAM',"=",title);
              if (rows.length > 0) {
                RoleTable.selectRow(rows[0]);
                RoleTable.scrollToRow(rows[0],"top",false);
              }
            }
            else {
              var rows = RoleTable.searchRows('TID',"=", pas.Main.MainForm.CurrentRole);
              if (rows.length > 0) {
                RoleTable.selectRow(rows[0]);
                RoleTable.scrollToRow(rows[0],"top",false);
              }
              else if (rowCount > 0) {
                RoleTable.selectRow(RoleTable.getRowFromPosition(1, true));
              }
            }
          });
        }


        // We've potentially added some images (via the Photo slider at least)
        // so let's make sure they're all loaded
        pas.Main.MainForm.tmrImageCheckEnable();


        // Update Top Menu
        if (pas.Main.MainForm.Startup == true) {
          pas.Main.MainForm.Startup = false;
        }
        pas.Main.MainForm.MenuType = 0; // Person
        window.RefreshMenu();

      }
    };
    window.Actor_Selected = Actor_Selected;
  } end; {$ENDIF}


  //////////////////////////////////////////////////////////////////////////////
  // tooltip_actor_PIC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function tooltip_actor_PIC(e, cell, onRendered) {
      var rect = e.target.getBoundingClientRect();
      var x = e.clientX - rect.left;
      var y = e.clientY - rect.top;
      var el = document.createElement("div");
      var image = checkImage(cell.getValue(),null,null,{imgtype:"person"});

      el.classList.add('tooltip','show','imageright');
      el.style.background = "none";
      el.style.border = "0";
      el.style.borderRadius = "0.3rem";
      el.style.transform = "translate("+(25-parseInt(x))+"px,"+(-78-parseInt(y))+"px)";
      el.style.margin = "4px";
      el.innerHTML = '<div class="tooltip-inner">'+cell.getRow().getCell('NAM').getValue()+'<br /><img alt="Photo of "'+cell.getRow().getCell('NAM').getValue()+'" class="lazy" src='+image+' data-src='+image.replace("/w45/","/w185/")+' width=92 height=auto></div>';
      return el;
    }
    window.tooltip_actor_PIC = tooltip_actor_PIC;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // tooltip_role_PIC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function tooltip_role_PIC(e, cell, onRendered) {
      var rect = e.target.getBoundingClientRect();
      var x = e.clientX - rect.left;
      var y = e.clientY - rect.top;
      var el = document.createElement("div");
      var image = checkImage(cell.getValue(),null,cell.getRow().getCell('TYP').getValue(),{imgtype:"tvmovie"});

      el.classList.add('tooltip','show','imageright');
      el.style.background = "none";
      el.style.border = "0";
      el.style.borderRadius = "0.3rem";
      el.style.transform = "translate("+(25-parseInt(x))+"px,"+(-78-parseInt(y))+"px)";
      el.style.margin = "4px";
      el.innerHTML = '<div class="tooltip-inner">'+cell.getRow().getCell('NAM').getValue()+'<br /><img alt="Poster of '+cell.getRow().getCell('NAM').getValue()+'" src='+image+' width=92 height=auto></div>';
      return el;
    }
    window.tooltip_role_PIC = tooltip_role_PIC;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // tooltip_role_NAM
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function tooltip_role_NAM(e, cell, onRendered) {
      var rect = e.target.getBoundingClientRect();
      var x = e.clientX - rect.left;
      var y = e.clientY - rect.top;
      var el = document.createElement("div");

      var NAM = cell.getRow().getCell("NAM").getValue();
      var CHX = cell.getRow().getCell("CHX").getValue();
      if (CHX == undefined) {
        CHX = cell.getRow().getCell("CHR").getValue();
      }

      el.classList.add('tooltip','show','imageright');
      el.style.background = "none";
      el.style.border = "0";
      el.style.borderRadius = "0.3rem";
      el.style.transform = "translate("+(25-parseInt(x))+"px,"+(-78-parseInt(y))+"px)";
      el.style.margin = "4px";
      el.innerHTML = '<div class="tooltip-inner"><strong>'+NAM+'</strong><br />'+CHX+'</div>';
      return el;
    }
    window.tooltip_role_NAM = tooltip_role_NAM;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // tooltip_actor_Top (TopMovies and TopTVShows)
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function tooltip_actor_Top(e, cell, onRendered) {
      var pic = e.target.outerHTML;
      var title = pic.substring(pic.indexOf('atitle')+8,pic.indexOf('src=')-2);
      if (title.length > 0) {
        var rect = e.target.getBoundingClientRect();
        var x = e.clientX - rect.left;
        var y = e.clientY - rect.top;
        var image = pic.substring(pic.indexOf('src')+4,pic.indexOf('width=')-1);
        var el = document.createElement("div");

        el.classList.add('tooltip', 'show', 'imageright');
        el.style.background = "none";
        el.style.border = "0";
        el.style.borderRadius = "0.3rem";
        el.style.transform = "translate("+(25-parseInt(x))+"px,"+(-78-parseInt(y))+"px)";
        el.style.margin = "4px";
        el.innerHTML = "<div class='tooltip-inner'>"+title+"<br /><img alt='Top Role' src="+image+" width=92 height=auto></div>";
        return el;
      }
      else {
        return ''
      }
    }
    window.tooltip_actor_Top = tooltip_actor_Top;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // tooltip_role_Top
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function tooltip_role_Top(e, cell, onRendered) {
      let pic = e.target.outerHTML;
      if ((pic.indexOf('atitle') > 0) && (pic.indexOf('Missing Person Placeholder') == -1)) {
        let title = pic.substring(pic.indexOf('atitle')+8,pic.indexOf('src=')-2);
        let character = pic.substring(pic.indexOf('acharacter')+12,pic.indexOf('alt=')-2);
        if (character !== '') {
          character = '<br />'+character;
        }
        var rect = e.target.getBoundingClientRect();
        var x = e.clientX - rect.left;
        var y = e.clientY - rect.top;
        var image = pic.substring(pic.indexOf('src')+4,pic.indexOf('data-src=')-1);
        var el = document.createElement("div");

        el.classList.add('tooltip', 'show', 'imageright');
        el.style.background = "none";
        el.style.border = "0";
        el.style.borderRadius = "0.3rem";
        el.style.transform = "translate("+(25-parseInt(x))+"px,"+(-78-parseInt(y))+"px)";
        el.style.margin = "4px";
        el.innerHTML = '<div class="tooltip-inner">'+title+'<br /><img alt="Top Role" class="lazy" src='+image+' data-src='+image.replace('/w45/','/w185/')+' width=92 height=auto>'+character+'</div>';
        return el;
      }
      else {
        return ''
      }
    }
    window.tooltip_role_Top = tooltip_role_Top;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_PIC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_PIC(cell, formatterParams, onRendered) {
      let image = checkImage(cell.getValue(),null,null,{imgtype:"person"});
      return '<div style="color:transparent;">'+
               '<img class="lazy portrait PriorityB" '+
                    'src='+image+' '+
                    'data-src='+image+' '+
                    'alt="Photo of "'+cell.getRow().getCell('NAM')+'" '+
                    'width=45 '+
                    'height=68 '+
                    'onerror="this.onerror=null;this.src=\'img/hourglass.png\';"'+
                  '>'+
                '</div>';
    }
    window.formatter_actor_PIC = formatter_actor_PIC;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_NAM
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_NAM(cell, formatterParams, onRendered) {
      var actor = '<div style="padding:0px 4px;"><strong>'+cell.getRow().getCell('NAM').getValue()+'</strong>';
      var homepage = cell.getRow().getCell('WWW').getValue();
      var birthplace = cell.getRow().getCell('BPL').getValue();

      if (birthplace == null) { birthplace = '<br />'}
      else {birthplace = '<br />'+birthplace };

      if (homepage == null) { homepage = '<br /></div>' }
      else {homepage = '<br /><small><strong><a aria-label="Personal Website" style="text-decoration:none;" href="'+decodeURIComponent(homepage)+'" rel="noopener noreferrer" target="_blank">'+decodeURIComponent(homepage)+'</a></strong></small></div>'};

      return actor+birthplace+homepage;
    }
    window.formatter_actor_NAM = formatter_actor_NAM;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_DOB
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_DOB(cell, formatterParams, onRendered) {
      var dob = cell.getValue();
      var dod = cell.getRow().getCell('DOD').getValue();
      var age = 0;
      if (dob !== undefined) {
        if (dod == null) {
          return '<div style="padding:0px 4px;">'+luxon.DateTime.fromISO(dob, {zone: "utc"}).toFormat('yyyy-MMM-dd')
                 +'<br />Age '+getage(luxon.DateTime.fromISO(dob, {zone:"utc"}).toFormat('yyyyMMdd'), luxon.DateTime.now().toUTC().toFormat('yyyyMMdd'))+'</div>'
        }
        else  {
          return '<div style="padding:0px 4px;">'+luxon.DateTime.fromISO(dob, {zone: "utc"}).toFormat('yyyy-MMM-dd')
                 +'<br />'+luxon.DateTime.fromISO(dod, {zone: "utc"}).toFormat('yyyy-MMM-dd')
                 +'<br />Age '+getage(luxon.DateTime.fromISO(dob, {zone: "utc"}).toFormat('yyyyMMdd'),luxon.DateTime.fromISO(dod, {zone: "utc"}).toFormat('yyyyMMdd'))+'</div>'
        }
      }
      else {
        return '<div></div>';
      }
    }
    window.formatter_actor_DOB = formatter_actor_DOB;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_DOD
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_DOD(cell, formatterParams, onRendered) {
      var dod = cell.getValue();
      var dob = cell.getRow().getCell('DOB').getValue();
      var age = 0;

      if (dob !== undefined) {
        if (dod == null) {
          return '<div></div>'
        }
        else {
          var ya = getage(luxon.DateTime.fromISO(dod, {zone: "utc"}).toFormat('yyyyMMdd'),luxon.DateTime.now().toUTC().toFormat('yyyyMMdd'));
          var yatext = '';
          if (ya > 1) {
            yatext = ya+' Years Ago'
          }
          else if (ya == 1) {
            yatext = '1 year ago'
          }
          else if (ya == 0) {
            yatext = 'This Past Year'
          }
          return '<div style="padding:0px 4px;">'+luxon.DateTime.fromISO(dod, {zone: "utc"}).toFormat('yyyy-MMM-dd')
                 +'<br />Age '+getage(luxon.DateTime.fromISO(dob, {zone: "utc"}).toFormat('yyyyMMdd'),luxon.DateTime.fromISO(dod, {zone: "utc"}).toFormat('yyyyMMdd'))
                 +'<br />'+yatext+'</div>'
        }
      }
      else {
        return '<div></div>';
      }
    }
    window.formatter_actor_DOD = formatter_actor_DOD
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_CTZ
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_CTZ(cell, formatterParams, onRendered) {
      var country = cell.getValue();
      if (country !== undefined) {
        return '<div style="font-size:25px; margin-top:9px;" class="fp fp-lg '+country.toLowerCase()+'"></div>';
      }
      else {
        return '';
      }
    }
    window.formatter_actor_CTZ = formatter_actor_CTZ
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_HT1
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_HT1(cell, formatterParams, onRendered) {
      var ht = cell.getValue();
      if (ht !== undefined) {
        return ht+'<br />'+cell.getRow().getCell('HT2').getValue();
      }
      else {
        return '';
      }
    }
    window.formatter_actor_HT1 = formatter_actor_HT1
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_SOC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_SOC(cell, formatterParams, onRendered) {
      var links = '';
      links += SetTableLNK(cell,'TID','https://www.themoviedb.org/person/', 'img/tmdb_icon.svg',           'TMDb Link');
      links += SetTableLNK(cell,'FID','https://www.facebook.com/',          'img/facebook_icon.png',       'Facebook Link');
      links += SetTableLNK(cell,'TWT','https://x.com/',                     'img/twitter_icon.png',        '𝕏 Link');
      links += SetTableLNK(cell,'INS','https://www.instagram.com/',         'img/instagram_icon.png',      'Instagram Link');
      links += SetTableLNK(cell,'WID','',                                   'img/wikidata_icon.png',       'WikiData Link');
      links += SetTableLNK(cell,'WIK','',                                   'img/wikipedia_icon.png',      'Wikipedia Link');
      links += SetTableLNK(cell,'IID','https://www.imdb.com/name/',         'img/imdb_icon.png',           'IMDb Link');
      links += SetTableLNK(cell,'RID','https://www.rottentomatoes.com/',    'img/rottentomatoes_icon.png', 'Rotten Tomatoes Link');
      links += SetTableLNK(cell,'MET','https://www.metacritic.com/',        'img/metacritic_icon.png',     'MetaCritic Link');
      links += SetTableLNK(cell,'MID','https://www.models.com/people/',     'img/models_icon.png',         'Models.com Link');
      links += SetTableLNK(cell,'WWW','',                                   'img/web_icon.png',            'Website Link');

//      links += '<a rel="noopener noreferrer" target="_blank" aria-label="Social Media" style="text-decoration:none;" href="https://www.google.com/search?q='+cell.getRow().getCell('NAM').getValue().replaceAll(' ','+')+'&tbm=isch"><img style="margin-left:2px; margin-right:2px; width:34px; height:34px" alt="Google Image Search" src="img/google_icon.png"></a>';              links += SetTableLNK(cell,'FID','https://www.facebook.com/',          'img/facebook_icon.png',       'Facebook Link');

      return '<div style="white-space:normal;">'+links+'</div>';
    }
    window.formatter_actor_SOC = formatter_actor_SOC;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // addPoster
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function addPoster(cell, title, picture, adultpic, type) {
      let adult = pas.Main.MainForm.AdultContent;
      let image = checkImage(cell.getRow().getCell(picture).getValue(),null,type,{imgtype:type});

      if ((!cell.getRow().getCell(adultpic).getValue() || adult) && (cell.getRow().getCell(title).getValue())) {
        return '<div style="width:45px; height:68px; display:inline-block; color: var(--bs-dark) !important;">'+
                 '<img class="lazy portrait" '+
                      'atitle="'+cell.getRow().getCell(title).getValue()+'" '+
                      'src="'+image+'" '+
                      'data-src="'+image+'" '+
                      'width=45 '+
                      'height=68 '+
                      'alt="Poster for '+cell.getRow().getCell(title).getValue()+'" '+
                      'onerror="this.onerror=null;this.src=\'img/hourglass.png\';"'+
                    '>'+
                  '</div>';
      }
      else {
//        return '<img alt="Missing Poster Placeholder" atitle="" src="img/dark_space.png" width=45 height=68>';
        return '';
      }
    }
    window.addPoster = addPoster;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // addPerson
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function addPerson(tid, name, character, photo, adultpic) {
      let adult = pas.Main.MainForm.AdultContent;
      if ((!adultpic || adult) && (name)) {
        return '<div style="width:45px; height:68px; display:inline-block; color: var(--bs-dark) !important;">'+
                 '<img class="lazy portrait" '+
                      'tid="'+tid+'" '+
                      'atitle="'+name+'" '+
                      'src="'+photo+'" '+
                      'data-src="'+photo+'" '+
                      'width=45 '+
                      'height=68 '+
                      'acharacter="'+character+'" '+
                      'alt="Photo of '+name+'" '+
                      'onerror="this.onerror=null;this.src=\'img/hourglass.png\';"'+
                    '>'+
                  '</div>';
      }
      else {
        return '<img alt="Missing Person Placeholder" atitle="" src="img/dark_space.png" width=45 height=auto>';
      }
    }
    window.addPerson = addPerson;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_TopMovies
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_TopMovies(cell, formatterParams, onRendered) {
      cell.getElement().style.background="var(--bs-dark)";
      let posters = '';

      posters += addPoster(cell, 'MT1', 'MP1', 'MX1', 'movie');
      posters += addPoster(cell, 'MT2', 'MP2', 'MX2', 'movie');
      posters += addPoster(cell, 'MT3', 'MP3', 'MX3', 'movie');
      posters += addPoster(cell, 'MT4', 'MP4', 'MX4', 'movie');
      posters += addPoster(cell, 'MT5', 'MP5', 'MX5', 'movie');

      return posters
    }
    window.formatter_actor_TopMovies = formatter_actor_TopMovies;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_actor_TopTVShows
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_actor_TopTVShows(cell, formatterParams, onRendered) {
      cell.getElement().style.background="var(--bs-dark)";
      let posters = '';

      posters += addPoster(cell, 'TT1', 'TP1', 'TX1', 'tv');
      posters += addPoster(cell, 'TT2', 'TP2', 'TX2', 'tv');
      posters += addPoster(cell, 'TT3', 'TP3', 'TX3', 'tv');
      posters += addPoster(cell, 'TT4', 'TP4', 'TX4', 'tv');
      posters += addPoster(cell, 'TT5', 'TP5', 'TX5', 'tv');
      return posters
    }
    window.formatter_actor_TopTVShows = formatter_actor_TopTVShows;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_TopRoles
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_TopRoles(cell, formatterParams, onRendered) {
      cell.getElement().style.background="var(--bs-dark)";
      var data = cell.getRow().getCell('ACA').getValue();
      var people = '';
      var peoplecount = 0;
      if ((data !== undefined) && (data.length > 0)) {
        for (var i = 0; i < Math.min(10,data.length); i++) {

          var TID = '';
          var NAM = '';
          var CHR = '';
          var PIC = '';
          var XXX = '';

          if (data[i].ID !== undefined) {
            TID = data[i].ID;
          }

          if (data[i].NAM !== undefined) {
            NAM = data[i].NAM;
          }

          if (data[i].CHR !== undefined) {
            CHR = data[i].CHR;
          }

          if (data[i].PIC !== undefined) {
            PIC = data[i].PIC;
          }

          if (data[i].XXX !== undefined) {
            XXX = data[i].XXX;
          }

          let adult = pas.Main.MainForm.AdultContent;
          if ((!XXX || adult) && (NAM)) {
            people += addPerson(TID, NAM, CHR, checkImage(PIC,null,null,{imgtype:"person"}), XXX);
            peoplecount += 1;
          }
        }
      }

      for (i = (peoplecount); i < 10; i++) {
        people += addPerson('','','','',pas.Main.MainForm.AdultContent);
      }
      return people;
    }
    window.formatter_role_TopRoles = formatter_role_TopRoles;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_PIC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_PIC(cell, formatterParams, onRendered) {
      var image = checkImage(cell.getValue(),null,cell.getRow().getCell('TYP').getValue(),{imgtype:"tvmovie"});
      return '<div style="color:transparent; width: 45px; height: 68px;">'+
               '<img class="lazy portrait PriorityB" '+
                    'src='+image+' '+
                    'data-src='+image+' '+
                    'alt="Poster"'+
                    'width=45 '+
                    'height=68 '+
                    'onerror="this.onerror=null;this.src=\'img/hourglass.png\';"'+
                  '>'+
                '</div>';
    }
    window.formatter_role_PIC = formatter_role_PIC;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_NAM
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_NAM(cell, formatterParams, onRendered) {
      var title = cell.getValue();
      var character = cell.getRow().getCell('CHX').getValue();
      if ((character == undefined) || (character == null) || (character == '')) {
        character = cell.getRow().getCell('CHR').getValue();
      }

      if ((character == undefined) || (character == null)) {
        character = '';
      }
      else {
        character = '<br />'+character;
      }

      return '<div style="padding:0px 4px; white-space:normal"><strong>'+title+'</strong>'+character+'</div>';
    }
    window.formatter_role_NAM = formatter_role_NAM;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_TYP
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_TYP(cell, formatterParams, onRendered) {
      if (cell.getValue() == 'tv') {
        return '<div class="d-flex h-100 align-items-center justify-content-center" style="transform:scale(1.5)">'+window.icon_tv+'</div>';
      }
      else {
        return '<div class="d-flex h-100 align-items-center justify-content-center" style="transform:scale(1.5)">'+window.icon_film+'</div>';
      }
    }
    window.formatter_role_TYP = formatter_role_TYP;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_REL
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_REL(cell, formatterParams, onRendered) {
      var rel = cell.getValue();
      var typ = cell.getRow().getCell('TYP').getValue();
      var sts = cell.getRow().getCell('STS').getValue();
      var sns = cell.getRow().getCell('SNS').getValue();
      var eps = cell.getRow().getCell('EPS').getValue();

      if (sts == null) {
        sts = '';
      }
      else {
        sts = '[ '+sts+' ]';
      }

      if (typ == 'movie') {
        if ((rel == null) || (rel.length < 10)) {
          return '<div style="padding:0px 4px;">'+sts+'</div>';
        }
        else {
          var start = luxon.DateTime.fromISO(rel, {zone:"utc"});
          var finish = luxon.DateTime.now().toUTC();
          var age = getage(start.toFormat('yyyyMMdd'), finish.toFormat('yyyyMMdd'));

          if (age >= 2) {
            return '<div style="padding:0px 4px;">'
                   +start.toFormat('yyyy-MMM-dd')
                   +'<br>'+age+' Years Ago'
                   +'<br>'+sts+'</div>';
          }
          else if (age < 0) {
            return '<div style="padding:0px 4px;">'
                   +start.toFormat('yyyy-MMM-dd')
                   +'<br>'+sts+'</div>';
          }
          else {
            if (Math.trunc(finish.diff(start,'months').months) > 1) {
              return '<div style="padding:0px 4px;">'
                     +start.toFormat('yyyy-MMM-dd')
                     +'<br>'+Math.trunc(finish.diff(start, 'months').months)+' Months Ago'
                     +'<br>'+sts+'</div>';
            }
            else {
              return '<div style="padding:0px 4px;">'
                     +start.toFormat('yyyy-MMM-dd')
                     +'<br>In the past month'
                     +'<br>'+sts+'</div>';
            }
          }
        }
      }
      else if (typ == 'tv') {
        if ((rel == null) || (rel.length < 10) || (sns == undefined) || (eps == undefined)) {
          return '<div style="padding:0px 4px;">'+sts+'</div>';
        }
        else {
          var start = luxon.DateTime.fromISO(rel, {zone:"utc"});
          if (sns > 1) {
            return '<div style="padding:0px 4px;">'
                   +start.toFormat('yyyy-MMM-dd')
                   +'<br>'+sns+' Seasons, '+eps.toLocaleString()+' Eps'
                   +'<br>'+sts+'</div>';
          }
          else {
            return '<div style="padding:0px 4px;">'
                   +start.toFormat('yyyy-MMM-dd')
                   +'<br>'+sns+' Season, '+eps.toLocaleString()+' Eps'
                   +'<br>'+sts+'</div>';
          }
        }
      }
    }
    window.formatter_role_REL = formatter_role_REL;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_REV
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_REV(cell, formatterParams, onRendered) {
      var revenue = cell.getValue();
      var budget = cell.getRow().getCell('BUD').getValue();
      var profit = revenue - budget;

      if (revenue >= 1000000000) {
        revenue = (revenue/1000000000).toFixed(1)+' B';
      }
      else if (revenue >= 1000000) {
        revenue = (revenue/1000000).toFixed(1)+' M';
      }
      else if (revenue >= 1000) {
        revenue = (revenue/1000).toFixed(1)+' K';
      }
      else if (revenue > 0) {
        revenue = revenue
      }
      else {
        revenue = '';
      }

      if (budget >= 1000000000) {
        budget = (budget/1000000000).toFixed(1)+' B';
      }
      else if (budget >= 1000000) {
        budget = (budget/1000000).toFixed(1)+' M';
      }
      else if (budget >= 1000) {
        budget = (budget/1000).toFixed(1)+' K';
      }
      else if (budget > 0) {
        budget = budget
      }
      else {
        budget = '';
      }

      if (profit >= 1000000000) {
        profit = (profit/1000000000).toFixed(1)+' B';
      }
      else if (profit >= 1000000) {
       profit = (profit/1000000).toFixed(1)+' M';
      }
      else if (profit >= 1000) {
        profit = (profit/1000).toFixed(1)+' K';
      }
      else if (profit <= -1000000000) {
        profit = '('+(-profit/1000000000).toFixed(1)+' B)';
      }
      else if (profit <= -1000000) {
        profit = '('+(-profit/1000000).toFixed(1)+' M)';
      }
      else if (profit <= -1000) {
        profit = '('+(-profit/1000).toFixed(1)+' K)'
      }
      else if (profit <= -1) {
        profit = '('+(-profit).toFixed(1)+' K)'
      }
      else if (profit.isInteger) {
        profit = profit
      }
      else {
        profit = ''
      }

      var result = '<div style="padding:0px 4px;">';
      if (revenue !== '') {
        result +='Rev: '+revenue+'<br />';
      }
      if (budget !== '') {
        result +='Bgt: '+budget+'<br />';
      }
      if ((profit !== '') && (revenue !== '') && (budget !== '')) {
        result +='Net: '+profit;
      }
      result += '</div>'

      return result;
    }
    window.formatter_role_REV = formatter_role_REV;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_RTM
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_RTM(cell, formatterParams, onRendered) {
      var runtime = cell.getValue();
      if (runtime > 0) {
        return Math.floor(runtime/60)+'h'+(runtime - (60*Math.floor(runtime/60)))+'m'
      }
      else {
        return '';
      }
    }
    window.formatter_role_RTM = formatter_role_RTM;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_CTG
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_CTG(cell, formatterParams, onRendered) {
      let countries = cell.getValue();
      if (countries !== undefined) {
        let result = '';
        for (let i = 0; i < countries.length; i++) {
          result += '<div style="font-size:25px; margin-top:9px; margin-right:3px;" class="fp fp-lg '+countries[i].toLowerCase()+'"></div>';
        }
        return result;
      }
      else {
        return '';
      }
    }
    window.formatter_role_CTG = formatter_role_CTG
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // formatter_role_OVR
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function formatter_role_OVR(cell, formatterParams, onRendered) {
      return '<div style="height:68px; white-space:normal; padding: 2px 4px; line-height:1; font-size: 14px; overflow-y:auto;"">'+cell.getValue()+'</div>';
    }
    window.formatter_role_OVR = formatter_role_OVR;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // cellClick_actor_PIC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function cellClick_actor_PIC(e, cell) {
      let image = checkImage(cell.getValue(),null,null,{imgtype:"person"})
      pas.Main.MainForm.ViewerMode = 'Person';
      pas.Main.MainForm.ViewerURL1 = image;
      pas.Main.MainForm.ViewerURL2 = image.replace('/w45/','/original/');
      pas.Main.MainForm.ViewerURLA = cell.getRow().getCell('NAM').getValue();
      pas.Main.MainForm.ViewerURLC = cell.getRow().getPosition();
      pas.Main.MainForm.ViewerURLT = cell.getTable().getDataCount();
      pas.Main.MainForm.ShowViewer();
    }
    window.cellClick_actor_PIC = cellClick_actor_PIC;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // cellClick_actor_Top
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function cellClick_actor_Top(e, cell) {

      var pic = e.target.outerHTML;
      var image = pic.substring(pic.indexOf('src')+4,pic.indexOf('data-src=')-1);
      var title = pic.substring(pic.indexOf('atitle')+8,pic.indexOf('src=')-2);

      if (image.indexOf('"Missing Poster placeholder"') == -1) {
        pas.Main.MainForm.ViewerMode = 'Role';
        pas.Main.MainForm.ViewerURL1 = image;
        pas.Main.MainForm.ViewerURL2 = image.replace('/w92/','/original/');
        pas.Main.MainForm.ViewerURLA = title;
        pas.Main.MainForm.ViewerURLC = 1;
        pas.Main.MainForm.ViewerURLT = 1;
        pas.Main.MainForm.ShowViewer();

        pas.Main.MainForm.TopTitle = title;

        var table = pas.Main.MainForm.RoleTabulator;
        table.deselectRow();
        var rows = table.searchRows('NAM',"=",title);
        if (rows.length > 0) {
          table.selectRow(rows[0]);
          table.scrollToRow(rows[0],"top",false);
        }
      }
    }
    window.cellClick_actor_Top = cellClick_actor_Top
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // cellClick_role_Top
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function cellClick_role_Top(e, cell) {

      var pic = e.target.outerHTML;
      var image = pic.substring(pic.indexOf('src')+4,pic.indexOf('data-src=')-1);
      var title = pic.substring(pic.indexOf('atitle')+8,pic.indexOf('src=')-2);

      if (image.indexOf('"Missing Person Placeholder"') == -1) {
        pas.Main.MainForm.ViewerMode = 'Person';
        pas.Main.MainForm.ViewerURL1 = image;
        pas.Main.MainForm.ViewerURL2 = image.replace('/w45/','/original/');
        pas.Main.MainForm.ViewerURLA = title;
        pas.Main.MainForm.ViewerURLC = 1;
        pas.Main.MainForm.ViewerURLT = 1;
        pas.Main.MainForm.ShowViewer();

        pas.Main.MainForm.TopTitle = title;
      }
    }
    window.cellClick_role_Top = cellClick_role_Top;
  } end; {$ENDIF}

  //////////////////////////////////////////////////////////////////////////////
  // cellClick_role_PIC
  //////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    function cellClick_role_PIC(e, cell) {
      let image = checkImage(cell.getValue(),null,cell.getRow().getCell('TYP').getValue(),{imgtype:"tvmovie"})
      pas.Main.MainForm.ViewerMode = 'Role';
      pas.Main.MainForm.ViewerURL1 = image;
      pas.Main.MainForm.ViewerURL2 = image.replace('/w92/','/original/');
      pas.Main.MainForm.ViewerURLA = cell.getRow().getCell('NAM').getValue();
      pas.Main.MainForm.ViewerURLC = cell.getRow().getPosition();
      pas.Main.MainForm.ViewerURLT = cell.getTable().getDataCount();
      pas.Main.MainForm.ShowViewer();
    }
    window.cellClick_role_PIC = cellClick_role_PIC;
  } end; {$ENDIF}



  /////////////////////////////////////////////////////////////////////////////////////////////////
  // This is the main Actor table (bottom-left)
  // The idea is that this is "the data" that everything else uses, so the Tabulator
  // definition needs to define all the columns to store stuff in, even if only a
  // few are actually displayed in the table.  For example, the entire second table
  // (RoleTabulator) is stored in the Work field of each row of this table (as JSON).
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {

    var getage = pas.Main.MainForm.GetAge;
    pas.Main.MainForm.ActorTabulator = new Tabulator("#divActorTabulator", {
      columns:[

        { title: "", field: "PIC", width: 45, headerSort: false, resizable: false, headerHozAlign: "center", hozAlign: "center", cssClass: "ActorRowCount",
            tooltip:       tooltip_actor_PIC,
            formatter:     formatter_actor_PIC,
            cellClick:     cellClick_actor_PIC,
        },

        { title: "Person", field: "NAM", minWidth: 230, cssClass: "Name",
            headerMenu:       headerMenu,
            headerPopup:      headerNameFilter,
            headerPopupIcon:  window.icon_filter,
            headerFilter:     nameHeaderFilter,
            headerFilterFunc: "like",
            formatter:        formatter_actor_NAM,
        },

        { title: "Birthday", field: "DOB", width: 120,
            headerMenu: headerMenu,
            formatter:  formatter_actor_DOB
        },

        { title: "Departed", field: "DOD", width: 120, visible:false, resizable: false,
            headerMenu: headerMenu,
            formatter:  formatter_actor_DOD
        },

        {title: window.icon_flag, field: "CTZ", width: 75, minWidth: 75, maxWidth: 75, hozAlign: "center", visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_actor_CTZ
        },

        {title: "Ht", field: "HT1", width:75, minWidth: 75, maxWidth:75, hozAlign: "center", visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_actor_HT1
        },

        { title: "Social Media", field: "SOC", width: 200, minWidth: 200, visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_actor_SOC
        },

        { title: window.icon_image_polaroid_user, field: "IMC", width: 95, sorter: "number", hozAlign: "right", vertAlign: "top", visible: false,
            headerMenu: headerMenu
        },

        { title: "Rank", field: "ID", width: 95, sorter: "number", hozAlign: "right", vertAlign: "top", visible: false,
            headerMenu: headerMenu,
            formatter:  "money",
            formatterParams:{
              decimal: ".",
              thousand:",",
              symbol:"",
              symbolAfter:"",
              precision: 0
            }
        },

        { title: "Relevance", field: "Count", width: 115, sorter: "number", hozAlign: "right", vertAlign: "top", visible: false,
            headerMenu: headerMenu,
            formatter:  "money",
            formatterParams:{
              decimal: ".",
              thousand:",",
              symbol:"",
              symbolAfter:"",
              precision: 0
            }
        },

        { title: "Points", field: "PTS", width: 95, sorter: "number", hozAlign: "right", vertAlign: "top", visible: false,
            headerMenu: headerMenu,
            formatter:  "money",
            formatterParams:{
              decimal: ".",
              thousand:",",
              symbol:"",
              symbolAfter:"",
              precision: 3
            }
        },

        // Actor Table: TMDb Popularity Value
        { title: "Pop", field: "POP", width: 85, sorter: "number", hozAlign: "right", vertAlign: "top", visible: false,
            headerMenu: headerMenu,
            formatter:  "money",
            formatterParams:{
              decimal: ".",
              thousand:",",
              symbol:"",
              symbolAfter:"",
              precision: 3
            }
        },

        // Stars: TMDb Popularity value
        { title: window.icon_star_sharp, field: "PopInt", width: 75, hozAlign:"left", vertAlign:"top",
            headerMenu: headerMenu,
            formatter:  "star", formatterParams: {stars: 5},
            mutator:    PopularityInt
        },

        { title: "Roles", field: "NUM", width:100, visible: false,
            headerMenu:      headerMenu,
            formatter:       "progress",
            formatterParams: {
              min: 0,
              max: 100,
              color: "#212529",
              legend: "",
            }
        },

        { title: "Top 5 Movies", width: 230, minWidth: 160, maxWidth: 230, headerSort: false,
            headerMenu:   headerMenu,
            tooltip:      tooltip_actor_Top,
            formatter:    formatter_actor_TopMovies,
            cellClick:    cellClick_actor_Top
        },

        { title: "Top 5 TV Shows", width: 230, minWidth: 160, maxWidth: 230, headerSort: false,
            headerMenu:   headerMenu,
            tooltip:      tooltip_actor_Top,
            formatter:    formatter_actor_TopTVShows,
            cellClick:    cellClick_actor_Top
        },

        // Ensure these are available to Tabulator but otherwise not visible
        { field: "BPL", visible:false, headerFilter:nameHeaderFilter, headerFilterFunc:"like" },  // The birthplace of the actor

        { field: "TID", visible: false },  // TMDb
        { field: "WID", visible: false },  // WikiData
        { field: "IID", visible: false },  // IMDb
        { field: "RID", visible: false },  // Rotten Tomatoes
        { field: "MET", visible: false },  // MetaCritic
        { field: "WIK", visible: false },  // Wikipedia
        { field: "FID", visible: false },  // Facebook
        { field: "INS", visible: false },  // Instagram
        { field: "TWT", visible: false },  // Twitter
        { field: "MID", visible: false },  // Models.com
        { field: "WWW", visible: false },  // Website
        { field: "IMG", visible: false },  // Image Array
        { field: "WRK", visible: false },  // JSON for the Roles table
        { field: "BIO", visible: false },  // The biography of the actor
        { field: "DOD", visible: false },  // Date of Death
        { field: "HT2", visible: false },  // HT in Imperial Units
        { field: "PTB", visible: false },  // PTS Breakdown

        { field: "MT1", visible: false },  // Most Popular Movie Titles
        { field: "MT2", visible: false },
        { field: "MT3", visible: false },
        { field: "MT4", visible: false },
        { field: "MT5", visible: false },

        { field: "TT1", visible: false },  // Most Popular TV Show Titles
        { field: "TT2", visible: false },
        { field: "TT3", visible: false },
        { field: "TT4", visible: false },
        { field: "TT5", visible: false },

        { field: "MP1", visible: false },  // Most Popular Movie Posters
        { field: "MP2", visible: false },
        { field: "MP3", visible: false },
        { field: "MP4", visible: false },
        { field: "MP5", visible: false },

        { field: "TP1", visible: false },  // Most Popular TV Show Posters
        { field: "TP2", visible: false },
        { field: "TP3", visible: false },
        { field: "TP4", visible: false },
        { field: "TP5", visible: false },

        { field: "MX1", visible: false },  // Most Popular Movie Titles - Adult Flag
        { field: "MX2", visible: false },
        { field: "MX3", visible: false },
        { field: "MX4", visible: false },
        { field: "MX5", visible: false },

        { field: "TX1", visible: false },  // Most Popular TV Show Titles - Adult Flag
        { field: "TX2", visible: false },
        { field: "TX3", visible: false },
        { field: "TX4", visible: false },
        { field: "TX5", visible: false }
      ]
    });

    // This is an event handler - when the table is ready to go, the GetBirthdays function is called.
    pas.Main.MainForm.ActorTabulator.on("tableBuilt", function() {
      // We should only have to look this up this one time
      window.actorcount = document.getElementsByClassName('ActorRowCount')[0].firstElementChild.firstElementChild.firstElementChild;
      window.actorcount.addEventListener('click', function() {
        pas.Main.MainForm.ActorTabulator.scrollToRow(pas.Main.MainForm.ActorTabulator.getRowFromPosition(1),"top");
      });

      // Signal the tmrStartup that we are ready to go
      pas.Main.MainForm.TablesReady += 1;

      // Here we're creating the record counter in the column header.  Now there are other ways to do
      // this, but Tabulator is particularly sensitive about such things.  Changin column headers is
      // an expensive operation, often redrawing the table at inconvenient times.  So let's just
      // add a little element in the right spot and then we can update that whenever we want, and
      // Tabulator will be none the wiser.
      window.actorcount.innerHTML = "";

//      divActorTabulator.firstElementChild.setAttribute('role','rowgroup');
//      divActorTabulator.firstElementChild.firstElementChild.setAttribute('role','rowheader');
//      divActorTabulator.firstElementChild.removeAttribute('role');
//      divActorTabulator.firstElementChild.firstElementChild.removeAttribute('role');
    });

    // Another event handler, called when the user clicks on row in the table
    pas.Main.MainForm.ActorTabulator.on("rowClick", function(e, row){
      row.select();
      window.Actor_Selected(e, row);
    });

    // After filtering the records, update the column header to show the new count
    pas.Main.MainForm.ActorTabulator.on("dataFiltered", function(filters, rows){
      // update the first column header to show a count of records filtered
      if (window.actorcount !== undefined) {
        if (pas.Main.MainForm.ActorTabulator.getDataCount() !== rows.length) {
          window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rows.length+'</span>';
        }
        else {
          window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rows.length+'</span>';
        }
      }
    });

    // This makes the menu dividers invisible to the pointer, so they don't get highlighted
    pas.Main.MainForm.ActorTabulator.on("menuOpened", function(component) {
      var seps = document.getElementsByClassName("tabulator-menu-item");
      for (var i = 0; i < seps.length; i++) {
        if (seps[i].firstElementChild.firstElementChild.classList.contains('pe-none')) {
          seps[i].classList.add('pe-none');
        }
      }
    });

  } end; {$ENDIF}



  /////////////////////////////////////////////////////////////////////////////////////////////////
  // This is the other Tabulator table defintion, for Roles.
  // The bottom-right table.  Much simpler, nothing quite as fancy going on here.
  /////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF WIN32} asm {
    pas.Main.MainForm.RoleTabulator = new Tabulator("#divRoleTabulator", {
 	    columns:[

        { title: "", field: "PIC", width:45, headerSort:false, resizable: false, headerHozAlign: "center", hozAlign:"center", headerMenu: false, cssClass: "RoleRowCount",
            headerMenu: headerMenu,
            tooltip:    tooltip_role_PIC,
            formatter:  formatter_role_PIC,
            cellClick:  cellClick_role_PIC
        },

        { title: "Title", field: "NAM", minWidth: 150,
            headerMenu: headerMenu,
            tooltip:    tooltip_role_NAM,
            formatter:  formatter_role_NAM
        },

        { title: "Tagline", field: "TGL", minWidth: 100, visible: false,
            headerMenu: headerMenu
        },

        { title: "", field: "TYP", width: 50, cssClass:"MovieTVColumn",
            headerMenu: headerMenu,
            formatter:  formatter_role_TYP,
            cellClick: function(e, cell){
              const roles = cell.getRow().getData()['ACA'];
              let lookuproles = [];
              lookuproles.push({"ID":pas.Main.MainForm.CurrentPerson});
              let i = 0;
              while (i < Math.min(25, roles.length)) {
                if (roles[i]["ID"] !== pas.Main.MainForm.CurrentPerson) {
                  lookuproles.push({"ID":roles[i]["ID"]})
                }
                i += 1;
              }
//              console.log(lookuproles);
              pas.Main.MainForm.GetLookupList(JSON.stringify(lookuproles));
            }
        },

        { title: "Genres", field: "GEN", width: 145, visible: false,
            headerMenu: headerMenu,
            formatter: "textarea"
        },

        { title: "Release", field: "REL", width: 145,
            headerMenu: headerMenu,
            formatter:  formatter_role_REL,
        },

        { title: "Status", field: "STS", visible: false,
            headerMenu: headerMenu
        },

        { title: "Seasons", field: "SNS", visible: false,
            headerMenu: headerMenu
        },

        { title: "Episodes", field: "EPS", visible: false,
            headerMenu: headerMenu
        },

        { title: window.icon_flag, field: "CTG", visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_role_CTG
        },

        { title: "Posters", field: "PSC", visible: false, sorter: "number",
            headerMenu: headerMenu
        },

        { title: "Backdrops", field: "BDC", visible: false, sorter: "number",
            headerMenu: headerMenu
        },

        { title: "Videos", field: "VDC", visible: false, sorter: "number",
            headerMenu: headerMenu
        },

        { field: "PSG", visible: false },
        { field: "BDS", visible: false },
        { field: "VDS", visible: false },

        { title: "BoxOffice", field: "REV", width:120, sorter: "number", visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_role_REV
        },

        { title: "Budget", field: "BUD", visible: false,
            headerMenu: headerMenu
        },

        { title: "Revenue", field: "REV", visible: false,
            headerMenu: headerMenu
        },

        { title: "Runtime", field: "RTM", visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_role_RTM
        },

        { title: "Roles (Count)", field: "ACC", visible: false,
            headerMenu: headerMenu
        },

        { title: "Pop", field: "POP",width:95, sorter:"number", hozAlign: "right",  visible: false,
            headerMenu:      headerMenu,
            formatter:       "money",
            formatterParams: {
              decimal: ".",
              thousand:",",
              symbol:"",
              symbolAfter:"",
              precision: 3
            }
        },

        // Pop as Stars
        { title:window.icon_star_sharp, field:"PopInt", width:75,
            headerMenu:      headerMenu,
            formatter:       "star",
            formatterParams: {stars: 5},
            mutator:         PopularityInt
        },

        { title: "Social Media", field: "SOC", width: 200, minWidth: 200, visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_actor_SOC
        },

        { title: "Top 10 Roles", field: "ACA", width: 455, minWidth: 160, maxWidth: 455, headerSort: false, cssClass: 'Top10Column',
            headerMenu:   headerMenu,
            tooltip:      tooltip_role_Top,
            formatter:    formatter_role_TopRoles,
//            cellClick:    cellClick_role_Top,
            cellClick: function(e, cell){
//              e.stopPropagation();
//              var pic = e.target.outerHTML;
//              var image = pic.substring(pic.indexOf('src')+4,pic.indexOf('data-src=')-1);
//              var title = pic.substring(pic.indexOf('atitle')+8,pic.indexOf('src=')-2);
//              var tid = pic.substring(pic.indexOf('tid')+4,pic.indexOf('atitle=')-1);
//              let lookuproles = [];
//              lookuproles.push({"ID":parseInt(tid.replace('"','').replace("'",""))});
//              pas.Main.MainForm.GetLookupList(JSON.stringify(lookuproles));
            }

        },

        { title: "Overview", field: "OVR",  widthGrow:4, visible: false,
            headerMenu: headerMenu,
            formatter:  formatter_role_OVR
        },

        { field: "ID", visible: false },
        { field: "CHR", visible: false },
        { field: "ORG", visible: false },
        { field: "CHX", visible: false },

        { field: "TID", visible: false },  // TMDb
        { field: "WID", visible: false },  // WikiData
        { field: "IID", visible: false },  // IMDb
        { field: "RID", visible: false },  // Rotten Tomatoes
        { field: "MET", visible: false },  // MetaCritic
        { field: "WIK", visible: false },  // Wikipedia
        { field: "FID", visible: false },  // Facebook
        { field: "INS", visible: false },  // Instagram
        { field: "TWT", visible: false },  // Twitter
        { field: "MID", visible: false },  // Models.com
        { field: "WWW", visible: false }   // Website

      ]
    });

    pas.Main.MainForm.RoleTabulator.on("tableBuilt", function() {

      // We should only have to look this up this one time
      window.rolecount = document.getElementsByClassName('RoleRowCount')[0].firstElementChild.firstElementChild.firstElementChild;
      window.rolecount.addEventListener('click', function() {
        pas.Main.MainForm.RoleTabulator.scrollToRow(pas.Main.MainForm.RoleTabulator.getRowFromPosition(1),"top");
      });

      // Setup some fancy Column Header Tooltips
      var collection = document.getElementsByClassName('tabulator-col MovieTVColumn');
      if (collection.length !== 0) {
        for (let i = 0; i < collection.length; i++) {
          var tooltip = new bootstrap.Tooltip(collection[i], {
            title: "Movie <i class='fa-duotone fa-film mx-1'></i> or TV Show <i class='fa-duotone fa-tv-retro mx-1'></i>",
            placement: 'top',
            html: true,
            customClass: 'custom-tooltip',
            delay: { "show": 1500, "hide": 100 }
          })
        }
      }

//      divRoleTabulator.firstElementChild.setAttribute('role','rowgroup');
//      divRoleTabulator.firstElementChild.firstElementChild.setAttribute('role','rowheader');
//      divRoleTabulator.firstElementChild.removeAttribute('role');
//      divRoleTabulator.firstElementChild.firstElementChild.removeAttribute('role');

      // Signal the tmrStartup that we are ready togo
      pas.Main.MainForm.TablesReady += 1;
    });

    // After filtering the records, update the column header to show the new count
    pas.Main.MainForm.RoleTabulator.on("dataFiltered", function(filters, rows){
      // update the first column header to show a count of records filtered
      if (window.rolecount !== undefined) {
        if (pas.Main.MainForm.RoleTabulator.getDataCount() !== rows.length) {
          window.rolecount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rows.length+'</span>';
        }
        else {
          window.rolecount.innerHTML = '<span style="cursor:pointer;">'+rows.length+'</span>';
        }
      }
    });

    // Another event handler, called when the user clicks on row in the table
    pas.Main.MainForm.RoleTabulator.on("cellClick", function(e, cell){
      if (cell.getColumn().getField() == 'ACA') {

        // Get information for the photo we've clicked on
        var pic = e.target.outerHTML;
        var image = pic.substring(pic.indexOf('src')+4,pic.indexOf('data-src=')-1);
        var title = pic.substring(pic.indexOf('atitle')+8,pic.indexOf('src=')-2);
        var tid = pic.substring(pic.indexOf('tid')+4,pic.indexOf('atitle=')-1);
        let lookuproles = [];
        lookuproles.push({"ID":parseInt(tid.replace('"','').replace("'",""))});

        // Show the photo at the top while we're waiting
        divPhoto.innerHTML =
          '<div style="width:185px; height:278px;">'+
            '<img '+
              'alt="'+title+'" '+
              'class="lazy portrait PriorityA" '+
              'style="width:185px; height:auto;" '+
              'src='+image+' '+
              'data-src='+image.replace('/w45/','/w185/')+' '+
              'onerror="this.onerror=null;this.src=\'img/hourglass.png\'"'+
            '/>'+
          '</div>';
        pas.Main.MainForm.Photo1 = image;
        pas.Main.MainForm.Photo2 = image.replace('/w45/','/original/');
        pas.Main.MainForm.PhotoA = title;

        // Go and get the data for the person
        pas.Main.MainForm.GetLookupList(JSON.stringify(lookuproles));
       }
    });

    // Another event handler, called when the user clicks on row in the table
    pas.Main.MainForm.RoleTabulator.on("rowClick", function(e, row){
      this.selectRow(row);
      window.Role_Selected(e, row);
    });

    // This makes the menu dividers invisible to the pointer, so they don't get highlighted
    pas.Main.MainForm.RoleTabulator.on("menuOpened", function(component) {
      var seps = document.getElementsByClassName("tabulator-menu-item");
      for (var i = 0; i < seps.length; i++) {
        if (seps[i].firstElementChild.firstElementChild.classList.contains('pe-none')) {
          seps[i].classList.add('pe-none');
        }
      }
    });

    // Another event handler, called when the user clicks on a column header
    pas.Main.MainForm.RoleTabulator.on("rowClick", function(e, row){
      this.selectRow(row);
      window.Role_Selected(e, row);
    });

  } end; {$ENDIF}


  // Base Encoder for Encoding/Decoding IDs passed as Parameters

  {$IFNDEF WIN32} asm {
    // https://github.com/marko-36/base29-shortener
    // We don't want the string too short, so we start at 10,000
    // But we do want it short, so we add more than 29 characters to the encoding list
    // characters for encoding
    const c=['B','b','C','c','D','d','F','f','G','g','H','h','J','j','K','k','L','M','m','N','n','P','p','Q','q','R','r','S','s','T','t','V','W','w','X','x','Z','z','0','1','2','3','4','5','6','7','8','9'];

    function to29(i){
      i = i + 10000;
      var sLen = Math.floor(Math.log(i)/Math.log(c.length)) +1;
      var s = '';
      for(var ex=sLen-1; ex>-1; --ex){
        s += c[Math.floor(i / Math.pow(c.length,ex))];
        i = [i % Math.pow(c.length,ex)];
      }
      return s;
    }
    window.to29 = to29;

    function from29(s){
      var i = 0;
      for (var ex=0; ex<s.length; ++ex){
        i += c.indexOf(s.substring(ex,ex+1))*Math.pow(c.length,s.length-1-ex);
      }
      return i - 10000;
    }
    window.from29 = from29;
  } end; {$ENDIF}

  tmrStart.Enabled := true;

  StopLinkerRemoval(@PreventCompilerHint);
end;


procedure TMainForm.WebFormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin

  // Hide Viewer if ESC is pressed
  if ((Key = VK_ESCAPE) or (Key = VK_RETURN)) and not(divViewerHolder.ElementHandle.classList.contains('d-none'))
  then divViewerHolderClick(nil);

  // Search after Enter is pressed
  if (Key = VK_RETURN) and
     (NowSearching = False) and
     (divViewerHolder.ElementHandle.classList.contains('d-none')) and
     (Length(edtSearch.Text) >= 3)
  then btnSearchClick(Sender);


  // Tour handling of Enter key - cancel if welcome, otherwise go to next step
  if (Key = VK_Return) and TourActive then
  begin
    {$IFNDEF WIN32} asm {
      if (Shepherd.activeTour) {
        if (Shepherd.activeTour.getCurrentStep().id.indexOf('welcome') > -1) {
          Shepherd.activeTour.cancel();
        }
        else {
          Shepherd.activeTour.next();
        }
      }
    } end; {$ENDIF}
  end;

end;

procedure TMainForm.WebFormResize(Sender: TObject);
begin

  {$IFNDEF WIN32} asm {
    if (typeof window.RefreshMenu === 'function') {
      window.RefreshMenu();
    }
  } end; {$ENDIF}

  // Resize viewer if it is currently showing
  if ViewerVisible then
  begin
    ViewerVisible := False;
    ShowViewer();
  end;

  // Try and deal with narrow screens
  {$IFNDEF WIN32} asm {
    var switchHeight = divInfo.getBoundingClientRect().top + divInfo.getBoundingClientRect().height;
    if (switchHeight < window.innerHeight * 0.75) {
      document.body.style.setProperty('width','100vw');
      document.body.style.setProperty('height','100vh');
      divBottom.style.setProperty('max-height','unset');
    }
    else {
      document.body.style.setProperty('width','98vw');
      document.body.style.setProperty('height','unset');
      divBottom.style.setProperty('max-height','75vh');
    }
  } end; {$ENDIF}

end;

procedure TMainForm.WebFormShow(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    // Lets make sure all our Bootstrap tooltips are accessible
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
  } end; {$ENDIF}
end;

procedure TMainForm.CheckVersion;
var
  Response: TJSXMLHttpRequest;    // The response coming back
  Data: TJSONObject;              // The response coming back, as JSON
  v1, v2: String;
begin
  if MainForm.VersionCheck then
  begin
    WebHTTPRequest1.URL := Server+'/ActorInfoService/GetClientVersion?Day='+FormatDateTime('mmdd',Now);
    try
      Response := await(TJSXMLHttpRequest,WebHTTPRequest1.Perform());

      Data := TJSONObject.ParseJSONValue(String(Response.Response)) as TJSONObject;

      // Update Photo to show what we got back from version check
      if ((Startup = True) and (StartupMode = 'today')) then
      begin
        // Lets setup as much of the UI as we can from this query
        v1 := String(Response.Response);

        {$IFNDEF WIN32} asm {
          var FirstData = JSON.parse(v1);

          // Main Image
          divPhoto.innerHTML =
            '<div style="width:185px; height:278px;">'+
              '<img '+
                'alt="Photo of '+FirstData["NAM"]+'" '+
                'class="lazy portrait" '+
                'style="width:185px; height:auto;" '+
                'src="'+FirstData["IMG"]+'"'+
              '/>'+
            '</div>';
          if (FirstData['PIC'].indexOf('placeholder') == -1) {
            pas.Main.MainForm.Photo1 = 'https://image.tmdb.org/t/p/w185'+FirstData['PIC'];
            pas.Main.MainForm.Photo2 = 'https://image.tmdb.org/t/p/original'+FirstData['PIC'];
          }
          else {
            pas.Main.MainForm.Photo1 = FirstData['PIC'];
            pas.Main.MainForm.Photo2 = FirstData['PIC'];
          }
          pas.Main.MainForm.PhotoA = FirstData['NAM'];
          var biotext = '<h5>No biographical information was found.<h5>';
          // Biography information
          try {
            biotext = decodeURIComponent(FirstData['BIO']);
          } catch {
            biotext = FirstData['BIO'];
          }
          if ((biotext == 'undefined') || (biotext == '')) {
            biotext = '<h5>No biographical information was found.<h5>';
            pas.Main.MainForm.BioWords = 0;
          }
          else {
            pas.Main.MainForm.BioWords = biotext.trim().split(/\s+/).length;
          }

          divBiography.innerHTML = '<div class="w-100 h-100 ps-2 pe-2 pb-4" style="white-space:normal; overflow-y:auto;">'+
            '<h4>'+FirstData['NAM']+'</h4>'+
            '<p>'+biotext.replace("\n","</p><p>")+'</p></div>';

          pas.Main.MainForm.MenuType = 0; // Person
          pas.Main.MainForm.PhotoCount = FirstData['NUM'];
        } end; {$ENDIF}
      end;
      divProgressSpinner.HTML.Text := '';

      // Sort out version information
      v1 := MainForm.VersionNum;
      v2 := (Data.getValue('VER') as TJSONString).Value;

      console.log(Copy(MainForm.Version,1,Pos('_',MainForm.Version)-1)+' Released '+MainForm.Release+'.');
      console.log('Current Version: '+v1+'. Server Version: '+v2+'.');

      // JS Script to compare version numbers
      // https://helloacm.com/the-javascript-function-to-compare-version-number-strings/
      {$IFNDEF WIN32} asm {
        function compareVersion(v1, v2) {
          if (typeof v1 !== 'string') return false;
          if (typeof v2 !== 'string') return false;
          v1 = v1.split('.');
          v2 = v2.split('.');
          const k = Math.min(v1.length, v2.length);
          for (let i = 0; i < k; ++ i) {
            v1[i] = parseInt(v1[i], 10);
            v2[i] = parseInt(v2[i], 10);
            if (v1[i] > v2[i]) return 1;
            if (v1[i] < v2[i]) return -1;
          }
          return v1.length == v2.length ? 0: (v1.length < v2.length ? -1 : 1);
        }

        if (compareVersion(v1, v2) == -1) {
          if ('serviceWorker' in navigator) {
            navigator.serviceWorker.getRegistrations().then(function (registrations) {
              for (let registration of registrations) {
                registration.update()
          }})}
          window.location.reload(true);
        }
        else {
          console.log('Application is up to date.');
        }
      } end; {$ENDIF}

    except on E: Exception do
      begin
      // don't care
      end;
    end;
  end;

  {$IFNDEF WIN32} asm {
    window.RefreshMenu(true);
  } end; {$ENDIF}
  MainForm.VersionCheck := False;
end;

procedure TMainForm.LaunchTour(TourMode: String);
begin
  TourActive := True;

  {$IFNDEF WIN32} asm {

    // We might have extra steps at the beginning, so here we're just explicitly stating a number
    // which we can then use in the progress indicator
    var TourSteps = 18;
    var TourIcon = '<img style="position:absolute; top:5px; left:5px; height:38px; width:38px;" src="img/actorious-logo-100x100.svg" alt="Actorious Icon">';

    // This is the main tour object
    const tour = new Shepherd.Tour({
      useModalOverlay: true,
      defaultStepOptions: {
        classes: 'shadow-md bg-purple-dark',
        scrollTo: true,
        floatingUIOptions: {
          middleware: [window.FloatingUIDOM.offset({ mainAxis: 15 })]
        },
        cancelIcon: {
          enabled: true,
          label: 'cancel tour'
        },
        when: {
          show: function () {
            const currentStep = tour.getCurrentStep();
            const currentStepElement = currentStep.getElement();
            if (currentStep.id.indexOf('-0') == -1) {
              const footer = currentStepElement.querySelector('.shepherd-footer');
              const progress = document.createElement('div');
              progress.style.cssText = 'position:absolute; bottom:13px; pointer-events:none; width:394px; text-align:center;';
              progress.innerText = currentStep.id.split('-').slice(-1)+' of '+TourSteps;
              footer.parentElement.appendChild(progress);
            }
          }
	      }
      }
    });

    // Say hello if this is a new visitor
    if (TourMode == 'New') {

      tour.addStep({
        id: 'step-welcome-0',
        title: TourIcon+'<div style="padding-left:35px;">Welcome to Actorious!</div>',
        text: 'It looks like this might be your first visit. Would you be interested in a website tour?',
        buttons: [
          { text: 'No, thanks', action: () => { tour.show('step-tour-0', true); }},
          { text: 'Yes, please', action: () => { tour.show('step-tour-1', true); }}
        ]
      });

      tour.addStep({
        id: 'step-tour-0',
        title: 'Maybe Later?',
        text: 'If you would like to take the tour at another time, just click this button.',
        attachTo: { element: '#linkTour', on: 'right' },
        buttons: [{ text: 'Ok',action: tour.complete }]
      });
    }

    if (TourMode == 'Update') {

      tour.addStep({
        id: 'step-welcome-0',
        title: TourIcon+'<div style="padding-left:35px;">Actorious Updated</div>',
        text: 'It looks like there has been an update since your last visit. Would you be interested in a website tour?',
        buttons: [
          { text: 'No, thanks', action: tour.complete },
          { text: 'Yes, please', action: () => { tour.show('step-tour-1', true); }}
        ]
      });

    }

    // Otherwise, just jump into the tour

    tour.addStep({
      id: 'step-tour-1',
      title: 'Birthdays and More',
      text: 'Use these options to select a birthday or another day to retrieve a list of People with the same birthday, Movies or TV Shows with the same release day, etc.',
      attachTo: { element: '#divMain', on: 'right' },
      buttons: [{ text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-2',
      title: 'Search for People, Movies, or TV Shows',
      text: 'Enter search terms here. The search results will appear below. You can search for People (by name or role), Movies (by title), or TV Shows (by title). <br><br>Eg: "Leonard Nimoy" or "Spock"',
      attachTo: { element: '#divSearchNav', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-3',
      title: 'Top 1,000 People',
      text: 'This will retrieve the most recent list of Top 1,000 People, updated daily, as rated by The Movie Database.',
      attachTo: { element: '#btnTop1000', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-4',
      title: 'Current Selection',
      text: 'The currently selected Person (photo), Movie (poster), or TV Show (poster) appears here. Initially, this will show the most popular Person with a birthday today, as rated by The Movie Database.',
      attachTo: { element: '#divPhoto', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-5',
      title: 'Account Buttons',
      text: 'These buttons are used to login to Actorious and access its advanced features, like favorites, lists, and more.',
      attachTo: { element: '#divLinkSet1', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-6',
      title: 'Awards and Lists',
      text: 'These buttons provide access Awards and other lists. These will change to reflect the selected Person, Movie, or TV Show.',
      attachTo: { element: '#divLinkSet3', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-7',
      title: 'Sytstem Buttons',
      text: 'These buttons provide access to general Actorious features that are available to everyone. Some features are specific to the currently selected person.',
      attachTo: { element: '#divLinkSet2', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-8',
      title: 'Friends and Family',
      text: 'After selecting a person, clicking this button will do a search for other people that are connected to this person. This may include direct family memmbers (parents, children and so on) or people they are currently involved with or have been involved with previously.<br><br>For example, after selecting "Josh Brolin", clicking this button will find all of his friends and relatives, including "Barbra Streisand" - his stepmother.',
      attachTo: { element: '#linkRelatives', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-9',
      title: 'Frequent Figures',
      text: 'After selecting a person, clicking this button will do a search for all the people that have worked with the selected person, and will return a list sorted by the most frequently featured people.<br><br> For example, after selecting "Simon Pegg", clicking this button will find all the people he has worked with, ranked by those he has worked with the most. Naturally, "Nick Frost" appears at the top of the list.',
      attachTo: { element: '#linkFrequent', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-10',
      title: 'Resource Links',
      text: 'Links to other resources about the selected Person, Movie, or TV Show from TMDb, Wikidata, Wikipedia, Google, IMDB, Rotten Tomatoes, and more.',
      attachTo: { element: '#divLinkSet4', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-11',
      title: 'Social Media Links',
      text: 'Links to the social medial accounts of the selected Person, Movie, or TV Show.',
      attachTo: { element: '#divLinkSet5', on: 'right' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-12',
      title: 'Additional Information',
      text: 'These buttons lead to other content, depending on the Person, Movie, or TV Show selected. This may include biographies, summaries, photos, video clips, and so on. The available pages change when a Person is selected vs. when a Movie or TV Show is selected.',
      attachTo: { element: '#divButtonHolder', on: 'bottom' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-13',
      title: 'People - Table',
      text: 'This is a list of People, selected using either the criteria from the top-left section, by clicking on a person or link in the bottom-right table, or by using one of the other Actorious search features, like "Friends and Faimily" or "Frequent Figures".',
      attachTo: { element: '#divActorTabulatorHolder', on: 'top' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-14',
      title: 'People - Columns',
      text: 'The columns for this table can be sorted, filtered, or even changed using the buttons appearing in each column header. Many other columns are available.',
      attachTo: { element: '#divActorTabulator .tabulator-header', on: 'bottom' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-15',
      title: 'Movies and TV Shows - Table',
      text: 'When a Person is selected from the People Table, all their Movies and TV Shows are listed in this table. This may also be populated based on criteria from the top-left section.',
      attachTo: { element: '#divRoleTabulatorHolder', on: 'top' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-16',
      title: 'Movies and TV Shows - Columns',
      text: 'The columns for this table can be sorted, filtered, or even changed using the buttons appearing in each column header. Many other columns are available.',
      attachTo: { element: '#divRoleTabulator .tabulator-header', on: 'bottom' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-17',
      title: 'Select All People',
      text: 'Clicking a Movie or TV icon in this column will update the table on the left with all of the People that appeared in the selected Movie or TV Show.',
      attachTo: { element: '#divRoleTabulator .tabulator-header .MovieTVColumn', on: 'bottom' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Next', action: tour.next }]
    });

    tour.addStep({
      id: 'step-tour-18',
      title: 'Select One Person',
      text: 'Clicking on a photo of a Person in this column will select that Person and then retrieve all the Movies and TV Shows that they have appeared in.',
      attachTo: { element: '#divRoleTabulator .tabulator-header .Top10Column', on: 'bottom' },
      buttons: [{ text: 'Back', action: tour.back }, { text: 'Done', action: tour.complete }]
    });

    tour.start();

  } end; {$ENDIF}

end;

procedure TMainForm.GetBirthDays(aMonth: Integer; aDay: Integer);
var
  Response: TXDataClientResponse; // The response coming back
  Data: String;                   // The response coming back, as a Blob > String
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
  DayNum: Integer;
  CacheData: JSValue;
begin

  DayNum := DayOfTheYear(EncodeDate(2020, aMonth, aDay));

  // If we've already got the data in the past six hours, let's use it
  if (MainForm.BirthdayCacheDate[DayNum] > (Now - 0.25)) then
  begin
    CacheData := MainForm.BirthdayCacheData[DayNum];
    MainForm.CurrentPerson := -1;
    {$IFNDEF WIN32} asm {
      var table1 = pas.Main.MainForm.ActorTabulator;
      var table2 = pas.Main.MainForm.RoleTabulator;
      var actorData = CacheData;

      // Filter out Adult content
      var adult = pas.Main.MainForm.AdultContent;
      var acount = 0;
      if (!adult) {
        for (var i = actorData.length - 1; i >= 0; i--) {
          if (actorData[i]['XXX'] == true) {
            actorData.splice(i,1);
            acount++;
          }
        }
      } else {
        for (var i = actorData.length - 1; i >= 0; i--) {
          if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
            actorData.splice(i,1);
            acount++;
          }
        }
      }

      pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true,));

        }
        else {
          table2.clearData();
        }

      });
    } end; {$ENDIF}
    exit;
  end;


  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;
  MainForm.Pending.Add(Progress);
  MainForm.CurrentPerson := -1;
  MainForm.CurrentRole := -1;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;

  if MainForm.VersionCheck then MainForm.CheckVersion;

  if MainForm.DataLimited
  then Endpoint := 'IActorInfoService.ActorBirthDay50'
  else EndPOint := 'IActorInfoService.ActorBirthDay';

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      amonth,                                        // Birthday Month
      aDay,                                          // Birthday Day
      Progress                                       // Progress Reference
    ]));
    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
      Data = JSON.parse(Data);
  } end; {$ENDIF}
  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;

  MainForm.BirthdayCacheDate[DayNum] := Now;
  MainForm.BirthdayCacheData[DayNum] := Data;

  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var table1 = pas.Main.MainForm.ActorTabulator;
    var table2 = pas.Main.MainForm.RoleTabulator;
    var actorData = Data;

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if (actorData[i]['XXX'] == true) {
          actorData.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
          actorData.splice(i,1);
          acount++;
        }
      }
    }

    pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
        }

      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(CacheData);
  MainForm.PreventCompilerHint(Blob);

end;


procedure TMainForm.GetDeathDays(aMonth: Integer; aDay: Integer);
var
  Response: TXDataClientResponse; // The response coming back
  Data :String;                   // The response coming back, as text
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
  DayNum: Integer;
  CacheData: String;
begin

  DayNum := DayOfTheYear(EncodeDate(2020, aMonth, aDay));

  // If we've already got the data in the past six hours, let's use it
  if (MainForm.DeathdayCacheDate[DayNum] > (Now - 0.25)) then
  begin
    CacheData := MainForm.DeathdayCacheData[DayNum];
    MainForm.CurrentPerson := -1;
    MainForm.CurrentRole := -1;
    {$IFNDEF WIN32} asm {
      var table1 = pas.Main.MainForm.ActorTabulator;
      var table2 = pas.Main.MainForm.RoleTabulator;
      var actorData = CacheData;

      // Filter out Adult content
      var adult = pas.Main.MainForm.AdultContent;
      var acount = 0;
      if (!adult) {
        for (var i = actorData.length - 1; i >= 0; i--) {
          if (actorData[i]['XXX'] == true) {
            actorData.splice(i,1);
            acount++;
          }
        }
      } else {
        for (var i = actorData.length - 1; i >= 0; i--) {
          if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
            actorData.splice(i,1);
            acount++;
          }
        }
      }

      pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
        }

      });
    } end; {$ENDIF}
    exit;
  end;


  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;
  MainForm.Pending.Add(Progress);
  MainForm.CurrentPerson := -1;
  MainForm.CurrentRole := -1;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;

  if MainForm.VersionCheck then MainForm.CheckVersion;

  if MainForm.DataLimited
  then Endpoint := 'IActorInfoService.ActorDeathDay50'
  else EndPOint := 'IActorInfoService.ActorDeathDay';

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      amonth,                                        // Deathday Month
      aDay,                                          // Deathday Day
      Progress                                       // Progress Reference
    ]));
    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
      Data = JSON.parse(Data);
    } end; {$ENDIF}
  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;

  MainForm.DeathdayCacheDate[DayNum] := Now;
  MainForm.DeathdayCacheData[DayNum] := Data;

  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var table1 = pas.Main.MainForm.ActorTabulator;
    var table2 = pas.Main.MainForm.RoleTabulator;
    var actorData = Data;

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if (actorData[i]['XXX'] == true) {
          actorData.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
          actorData.splice(i,1);
          acount++;
        }
      }
    }

    pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
        }

      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(CacheData);
  MainForm.PreventCompilerHint(Blob);

end;

procedure TMainForm.GetTop1000;
var
  Response: TXDataClientResponse; // The response coming back
  Data: String;                   // The response coming back, as text
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
  CacheData: String;
begin

  // If we've already got the data in the past six hours, let's use it
  if (MainForm.Top1000CacheDate > (Now - 0.25)) then
  begin
    CacheData := MainForm.Top1000CacheData;
    MainForm.CurrentPerson := -1;
    MainForm.CurrentRole := -1;
    {$IFNDEF WIN32} asm {
      var table1 = pas.Main.MainForm.ActorTabulator;
      var table2 = pas.Main.MainForm.RoleTabulator;
      var actorData = CacheData;

      // Filter out Adult content
      var adult = pas.Main.MainForm.AdultContent;
      var acount = 0;
      if (!adult) {
        for (var i = actorData.length - 1; i >= 0; i--) {
          if (actorData[i]['XXX'] == true) {
            actorData.splice(i,1);
            acount++;
          }
        }
      } else {
        for (var i = actorData.length - 1; i >= 0; i--) {
          if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
            actorData.splice(i,1);
            acount++;
          }
        }
      }

      pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
        }

      });
    } end; {$ENDIF}
    exit;
  end;


  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;
  if AdultContent then Progress := '[ADULT]'+Progress;
  MainForm.Pending.Add(Progress);
  MainForm.CurrentPerson := -1;
  MainForm.CurrentPerson := -1;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;


  if MainForm.VersionCheck then MainForm.CheckVersion;

  if DataLimitedTop
  then Endpoint := 'IActorInfoService.TopOneThousand'
  else Endpoint := 'IActorInfoService.TopFiveThousand';

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      Progress+'-NOREGEN'                            // Progress Reference
    ]));

    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
//      Data = JSON.parse(Data);
    } end; {$ENDIF}

  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;

  // 2024: Alright, instead of returning a complete table, what we're getting back here is the list
  // of people that are in the Top1000. We have to separately go and retrieve these. This is done for
  // a few reasons, but one of the benefits is that it gives us an opportunity to do something about
  // a proper progress indicator.

  {$IFNDEF WIN32} asm {

    // We're expecting 1,000 items, so let's split it up into chunks.
    // We'll make them as async requests and just make a note of them as they come back.

    let nextreq = [];
    let toplist = JSON.parse(Data);
    let received = 0;
    let datareqnum = 10;
    let datareqsize = 100;
    if (pas.Main.MainForm.DataLimitedTop == false) {
     datareqnum = 25;
     datareqsize = 200;
    }

    // This is the new set of data we'll be working with
    Data = [];
    divProgress.style.setProperty('height','0px');
    divProgress.style.setProperty('top','277px');


    // Here we send off all the requests at one time.
    for (let i = 0; i < datareqnum; i++) {

      let lookuplist = [];
      nextreq = toplist.slice(i * datareqsize, (i + 1) * datareqsize );

      // Build the data request
      for (let j = 0; j < datareqsize; j++) {
        if (nextreq[j] !== undefined) {
          lookuplist.push({"ID":nextreq[j]});
        }
        else {
          lookuplist.push({"ID":0});
        }
      }

      // This is the call to the Actorious XData server using JavaScript fetch()
      let URL = this.Server+'/ActorInfoService/Lookup';
      URL = URL + '?Secret=LeelooDallasMultiPass';
      URL = URL + '&Lookup='+encodeURIComponent('{"PPL":'+JSON.stringify(lookuplist)+'}');
      URL = URL + '&Progress='+Progress+'.'+String(i).padStart(3,'0');

      fetch(URL).then(

        // Once we get the data, we add it to our data cache
        async function(response) {
          let segment = parseInt(response.url.slice(-3));
          let newdata = await response.json();

          // Here we're updating the data with the position of this packet in the overall request
          for (let k = 0; k < newdata.PPL.length; k++) {
            newdata.PPL[k].Count = (segment * datareqsize) + k;
            newdata.PPL[k].ID = (segment * datareqsize) + k;
            Data.push(newdata.PPL[k]);
          }

          // Mark this data request as fulfilled
          received++

        }
      )
      // Let's not submit them ALL at once, a brief delay. So 20 requests means this will take 5sec
      // just to issue the requests, and then hopefully not long for them all to return
//      await sleep(250);
    }

    // This waits for the packets to come back
    while (received < datareqnum) {
      divProgress.style.setProperty('height',parseInt(277 * received / datareqnum)+'px');
      divProgress.style.setProperty('top',277-parseInt(277 * received / datareqnum)+'px');
      await sleep(100);
    }
    divProgress.style.setProperty('height','0px');
    divProgress.style.setProperty('top','277px');

  } end; {$ENDIF}

  MainForm.Top1000CacheDate := Now;
  MainForm.Top1000CacheData := '';

  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var table1 = pas.Main.MainForm.ActorTabulator;
    var table2 = pas.Main.MainForm.RoleTabulator;
    table1.clearData();
    table2.clearData();

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = Data.length - 1; i >= 0; i--) {
        if (Data[i]['XXX'] == true) {
          Data.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = Data.length - 1; i >= 0; i--) {
        if ((Data[i]['XXX'] == false) || (Data[i]['XXX'] == undefined)) {
          Data.splice(i,1);
          acount++;
        }
      }
    }
    pas.Main.MainForm.Top1000CacheData = Data;

    pas.Main.MainForm.ActorTabulator.setData(Data)
      .then(function(){

        var table1 = pas.Main.MainForm.ActorTabulator;
        table1.clearSort();
        table1.deselectRow();
        table1.setSort("ID","asc");
        table1.redraw(true);

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
        }

      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(CacheData);
  MainForm.PreventCompilerHint(Blob);

end;

procedure TMainForm.linkFrequentClick(Sender: TObject);
begin
  // What we're trying to do here is find, for a selected person, the list of the 25 most common costars (aka frequent figures).
  // We already have everything needed to generate the list onhand, we just need to quickly sort the list and then make the request
  // as if we were doing any other kind of lookup, as with the Friends and Family situation or when listing all the roles for the
  // currently selected Movie or TV Show.

  {$IFNDEF WIN32} asm {
    linkFrequent.style.setProperty('background','darkgreen','important');

    await sleep(10);

    const This = pas.Main.MainForm;
    const table = This.ActorTabulator;
    const tabledata = table.getData();
    const person = tabledata.find(el => el.TID == This.CurrentPerson);
    const roles = person.WRK;

    let frequent = [[]]; // 2d array
    let figures = [];
    let match = -1;
    let found = -1;

    // Process list of roles
    for (let i = 0; i < roles.length; i++) {

      // Process list of figures
      // try to exclude TV talk shows as best we can ;-)

      if (!((roles[i].TYP == 'tv') && ((roles[i].CHR.toUpperCase().indexOf('SELF') >= 0) || (roles[i].GEN.toUpperCase().indexOf('TALK') >= 0)))) {

        figures = roles[i].ACA;

        for (let j = 0; j < figures.length; j++) {

          // See if there is a match previously
          match = figures[j].ID;

          if (match !== undefined) {
            found = frequent.findIndex(el => el[0] == match);
            if (found !== -1) {
              frequent[found] = [frequent[found][0], frequent[found][1]+1, Math.min(frequent[found][2],j)];
            }
            else {
              frequent.push([match, 1, j]);
            }
          }
        }
      }
    }

    // Sort by frequency - 2nd column, descending sort, top 25 only
    let topfigures = frequent.sort((a, b) => b[1] - a[1] || a[2] - b[2]);

    // Compose the list to retrieve, placing the selected person first on the list
    // The more obscure entries (not cached already, ie, not in top 5,000) will not
    // be returned, but we don't know what those are from this vantage point.
    // So a limit is set at 125, and we'll likely get back fewer than that, but
    // ideally somewhere around 100 or so
    let lookuproles = [{"ID":This.CurrentPerson}];
    for (let i = 1; i < topfigures.length; i++) {
      if ((i < 125) && (topfigures[i][0] !== This.CurrentPerson)) {
        lookuproles.push({"ID":topfigures[i][0]});
      }
    }

    // Retrieve the list
    await This.GetLookupList(JSON.stringify(lookuproles));

    // Fix up the list
    // - needs to be sorted by the order of number of matches, so no sorting at all
    // - Highlight the first row, which should be the person we're working with
    // - Hide the tooltips
    // - Update the Count field to correspond to how many Movies or TV Shows they worked on together

    // Just for fun, let's try and populate the counts
    for (let i = 0; i < topfigures.length; i++) {
      var rows = table.searchRows("TID", "=", topfigures[i][0]);
      if (rows.length == 1) {
        rows[0].getCell('Count').setValue(topfigures[i][1]);
      }
    }

    table.deselectRow();
    table.selectRow(1);
    window.Actor_Selected(null, table.getRow(1));
    table.clearSort();
    table.setSort("Count","desc");
    This.HideToolTips();

    linkFrequent.style.removeProperty('background');

  } end; {$ENDIF}
end;

procedure TMainForm.linkRelativesClick(Sender: TObject);
begin
  btnRelativesClick(Sender);
end;

procedure TMainForm.linkTourClick(Sender: TObject);
begin
  LaunchTour('OnDemand');
end;

procedure TMainForm.GetLookupList(LookupList: String);
var
  Response: TXDataClientResponse; // The response coming back
  Data :String;                   // The response coming back, as text
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
  LookupRef: TJSObject;              // What we're sending
begin

  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;
  MainForm.Pending.Add(Progress);
  MainForm.CurrentPerson := -1;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;


  if MainForm.VersionCheck then MainForm.CheckVersion;

  Endpoint := 'IActorInfoService.Lookup';

  // Build Query Lookup JSON string
  LookupRef := TJSJSON.parseObject('{"PPL":'+LookupList+'}');

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      TJSJSON.stringify(LookupRef),                  // What we're looking up
      Progress                                       // Progress Reference
    ]));
    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
      Data = JSON.parse(Data);
    } end; {$ENDIF}
  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;


  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var table1 = pas.Main.MainForm.ActorTabulator;
    var table2 = pas.Main.MainForm.RoleTabulator;
    var actorData = Data;

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if (actorData[i]['XXX'] == true) {
          actorData.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
          actorData.splice(i,1);
          acount++;
        }
      }
    }

    pas.Main.MainForm.ActorTabulator.setData(actorData['PPL'])
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
          pas.Main.MainForm.MenuType = 0;
          window.RefreshMenu();
        }

      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(Data);
  MainForm.PreventCompilerHint(Blob);

end;

procedure TMainForm.GetReference(Reference: String);
var
  Response: TXDataClientResponse; // The response coming back
  Data :String;                   // The response coming back, as text
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
  LookupRef: TJSObject;              // What we're sending
  ReferenceList: TStringList;     // Decode list of reference values
  i: integer;
  id: String;
begin

  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;
  MainForm.Pending.Add(Progress);
  MainForm.CurrentPerson := -1;
  MainForm.CurrentRole := -1;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;


  if MainForm.VersionCheck then MainForm.CheckVersion;

  Endpoint := 'IActorInfoService.Lookup';

  // Build Query Lookup JSON string
  LookupRef := TJSJSON.parseObject('{"PPL":[]}');
  ReferenceList := TStringList.Create;
  ReferenceList.CommaText := Reference;
  for i := 0 to ReferenceList.Count - 1 do
  begin
    if Uppercase(Copy(ReferenceList[i],1,1)) = 'P' then
    begin
      id := Copy(ReferenceList[i],2,Length(ReferenceList[i]));
      if (Pos('-',id) > 0) then id := Copy(id,1,Pos('-',id)-1);
      {$IFNDEF WIN32} asm {
        var nid = window.from29(id);
        LookupRef['PPL'].push(JSON.parse('{"ID":'+nid+'}'));
      } end; {$ENDIF}
    end;
  end;

  // Only unique values please, don't want entries appearing multiple times
  {$IFNDEF WIN32} asm {
    // https://javascript.plainenglish.io/the-easy-way-to-create-a-unique-array-of-json-objects-in-javascript-5634254b17aa
    LookupRef['PPL'] = [... new Set(LookupRef['PPL'].map(JSON.stringify))].map(JSON.parse)
  } end; {$ENDIF}

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      TJSJSON.stringify(LookupRef),                  // What we're looking up
      Progress                                       // Progress Reference
    ]));
    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
      Data = JSON.parse(Data);
    } end; {$ENDIF}
  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;


  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var table1 = pas.Main.MainForm.ActorTabulator;
    var table2 = pas.Main.MainForm.RoleTabulator;
    var actorData = Data;

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if (actorData[i]['XXX'] == true) {
          actorData.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
          actorData.splice(i,1);
          acount++;
        }
      }
    }

    pas.Main.MainForm.ActorTabulator.setData(actorData['PPL'])
      .then(function(){

        // update the first column header to show a count
        var rowCount = table1.getDataCount("active");
        if (table1.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          table1.selectRow(table1.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, table1.getRowFromPosition(1,true));

        }
        else {
          table2.clearData();
          pas.Main.MainForm.MenuType = 0;
          window.RefreshMenu();
        }

      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(Data);
  MainForm.PreventCompilerHint(Blob);

end;

procedure TMainForm.btnActorsClick(Sender: TObject);
begin
  btnActors.ElementHandle.classList.replace('btn-secondary','btn-primary');
  btnWriters.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnDirectors.ElementHandle.classList.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnBackgroundClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pageBackgrounds;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;


procedure TMainForm.btnBioClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pageBio;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnBlockNextClick(Sender: TObject);
begin
  if ViewerMode = 'Person' then
  begin
    {$IFNDEF WIN32} asm {
      var ActorTable = pas.Main.MainForm.ActorTabulator;
      var rows = ActorTable.getSelectedRows();
      if (rows.length == 1) {
        var row = rows[0].getNextRow();
        while (row && (row.getCell('PIC').getValue().indexOf('placeholder') !== -1)) {
          row = row.getNextRow();
        }
        if (row) {
          ActorTable.deselectRow();
          ActorTable.selectRow(row);
          ActorTable.scrollToRow(row,'bottom',false);
          window.Actor_Selected(null, row);
          pas.Main.MainForm.ViewerMode = 'Person';
          pas.Main.MainForm.ViewerURL1 = row.getCell('PIC').getValue();
          pas.Main.MainForm.ViewerURL2 = row.getCell('PIC').getValue().replace('/w45/','/original/');
          pas.Main.MainForm.ViewerURLA = row.getCell('NAM').getValue();
          pas.Main.MainForm.ViewerURLC = row.getPosition();
          pas.Main.MainForm.ViewerURLT = row.getTable().getDataCount();
          pas.Main.MainForm.divViewerHolderClick();
          pas.Main.MainForm.ShowViewer();
        }
      }
    } end; {$ENDIF}
  end
  else if ViewerMode = 'Role' then
  begin
    {$IFNDEF WIN32} asm {
      var RoleTable = pas.Main.MainForm.RoleTabulator;
      var rows = RoleTable.getSelectedRows();
      if (rows.length == 1) {
        var row = rows[0].getNextRow();
        while (row && (row.getCell('PIC').getValue().indexOf('placeholder') !== -1)) {
          row = row.getNextRow();
        }
        if (row) {
          RoleTable.deselectRow();
          RoleTable.selectRow(row);
          RoleTable.scrollToRow(row,'bottom',false);
          window.Role_Selected(null, row);
          pas.Main.MainForm.ViewerMode = 'Role';
          pas.Main.MainForm.ViewerURL1 = row.getCell('PIC').getValue();
          pas.Main.MainForm.ViewerURL2 = row.getCell('PIC').getValue().replace('/w92/','/original/');
          pas.Main.MainForm.ViewerURLA = row.getCell('NAM').getValue();
          pas.Main.MainForm.ViewerURLC = row.getPosition();
          pas.Main.MainForm.ViewerURLT = row.getTable().getDataCount();
          pas.Main.MainForm.divViewerHolderClick();
          pas.Main.MainForm.ShowViewer();
        }
      }
    } end; {$ENDIF}
  end
  else if ViewerMode = 'PersonPhotos' then  // Swiper
  begin
    {$IFNDEF WIN32} asm {
      pas.Main.MainForm.ViewerURLN = Math.max(pas.Main.MainForm.ViewerURLN - 1, 0);
      var clickedslide = window.swiper.slides[pas.Main.MainForm.ViewerURLN];
      pas.Main.MainForm.ViewerMode = 'PersonPhotos';
      pas.Main.MainForm.ViewerURL1 = clickedslide.firstElementChild.getAttribute('data-src');
      pas.Main.MainForm.ViewerURL2 = clickedslide.firstElementChild.getAttribute('data-src').replace('/w45/','/original/');
      pas.Main.MainForm.ViewerURL2 = pas.Main.MainForm.ViewerURL2.replace('/w185/','/original/');
      pas.Main.MainForm.ViewerURLA = pas.Main.MainForm.PhotoA;
      pas.Main.MainForm.ViewerURLC = pas.Main.MainForm.ViewerURLN+1;
      pas.Main.MainForm.ViewerURLT = pas.Main.MainForm.PhotoCount;
      pas.Main.MainForm.ShowViewer();
    } end; {$ENDIF}
  end
  else if ViewerMode = 'Backdrops' then  // Swiper3
  begin
    {$IFNDEF WIN32} asm {
      pas.Main.MainForm.ViewerURLN = Math.max(pas.Main.MainForm.ViewerURLN - 1, 0);
      var clickedslide = window.swiper3.slides[pas.Main.MainForm.ViewerURLN];
      pas.Main.MainForm.ViewerMode = 'Backdrops';
      pas.Main.MainForm.ViewerURL1 = clickedslide.firstElementChild.getAttribute('data-src');
      pas.Main.MainForm.ViewerURL2 = clickedslide.firstElementChild.getAttribute('data-src').replace('/w300/','/original/');
      pas.Main.MainForm.ViewerURL2 = pas.Main.MainForm.ViewerURL2.replace('/w780/','/original/');
      pas.Main.MainForm.ViewerURLA = pas.Main.MainForm.PhotoA;
      pas.Main.MainForm.ViewerURLC = pas.Main.MainForm.ViewerURLN+1;
      pas.Main.MainForm.ViewerURLT = pas.Main.MainForm.BackgroundCount;
      pas.Main.MainForm.ShowViewer();
    } end; {$ENDIF}
  end;

  Mainform.tmrImageCheck.Enabled := True;

end;

procedure TMainForm.btnBlockPreviousClick(Sender: TObject);
begin
  if ViewerMode = 'Person' then
  begin
    {$IFNDEF WIN32} asm {
      var ActorTable = pas.Main.MainForm.ActorTabulator;
      var rows = ActorTable.getSelectedRows();
      if (rows.length == 1) {
        var row = rows[0].getPrevRow();
        while (row && (row.getCell('PIC').getValue().indexOf('placeholder') !== -1)) {
          row = row.getPrevRow();
        }
        if (row) {
          ActorTable.deselectRow();
          ActorTable.selectRow(row);
          ActorTable.scrollToRow(row,'bottom',false);
          window.Actor_Selected(null, row);
          pas.Main.MainForm.ViewerMode = 'Person';
          pas.Main.MainForm.ViewerURL1 = row.getCell('PIC').getValue();
          pas.Main.MainForm.ViewerURL2 = row.getCell('PIC').getValue().replace('/w45/','/original/');
          pas.Main.MainForm.ViewerURLA = row.getCell('NAM').getValue();
          pas.Main.MainForm.ViewerURLC = row.getPosition();
          pas.Main.MainForm.ViewerURLT = row.getTable().getDataCount();
          pas.Main.MainForm.divViewerHolderClick();
          pas.Main.MainForm.ShowViewer();
        }
      }
    } end; {$ENDIF}
  end
  else if ViewerMode = 'Role' then
  begin
    {$IFNDEF WIN32} asm {
      var RoleTable = pas.Main.MainForm.RoleTabulator;
      var rows = RoleTable.getSelectedRows();
      if (rows.length == 1) {
        var row = rows[0].getPrevRow();
        while (row && (row.getCell('PIC').getValue().indexOf('placeholder') !== -1)) {
          row = row.getPrevRow();
        }
        if (row) {
          RoleTable.deselectRow();
          RoleTable.selectRow(row);
          RoleTable.scrollToRow(row,'top',false);
          window.Role_Selected(null, row);
          pas.Main.MainForm.ViewerMode = 'Role';
          pas.Main.MainForm.ViewerURL1 = row.getCell('PIC').getValue();
          pas.Main.MainForm.ViewerURL2 = row.getCell('PIC').getValue().replace('/w92/','/original/');
          pas.Main.MainForm.ViewerURLA = row.getCell('NAM').getValue();
          pas.Main.MainForm.ViewerURLC = row.getPosition();
          pas.Main.MainForm.ViewerURLT = row.getTable().getDataCount();
          pas.Main.MainForm.divViewerHolderClick();
          pas.Main.MainForm.ShowViewer();
        }
      }
    } end; {$ENDIF}
  end
  else if ViewerMode = 'PersonPhotos' then  // Swiper
  begin
    {$IFNDEF WIN32} asm {
      pas.Main.MainForm.ViewerURLN = Math.min(pas.Main.MainForm.ViewerURLN + 1, window.swiper.slides.length-1);
      var clickedslide = window.swiper.slides[pas.Main.MainForm.ViewerURLN];
      pas.Main.MainForm.ViewerMode = 'PersonPhotos';
      pas.Main.MainForm.ViewerURL1 = clickedslide.firstElementChild.getAttribute('data-src');
      pas.Main.MainForm.ViewerURL2 = clickedslide.firstElementChild.getAttribute('data-src').replace('/w45/','/original/');
      pas.Main.MainForm.ViewerURL2 = pas.Main.MainForm.ViewerURL2.replace('/w185/','/original/');
      pas.Main.MainForm.ViewerURLA = pas.Main.MainForm.PhotoA;
      pas.Main.MainForm.ViewerURLC = pas.Main.MainForm.ViewerURLN+1;
      pas.Main.MainForm.ViewerURLT = pas.Main.MainForm.PhotoCount;
      pas.Main.MainForm.ShowViewer();
    } end; {$ENDIF}
  end
  else if ViewerMode = 'Backdrops' then  // Swiper3
  begin
    {$IFNDEF WIN32} asm {
      pas.Main.MainForm.ViewerURLN = Math.min(pas.Main.MainForm.ViewerURLN + 1, window.swiper3.slides.length-1);
      var clickedslide = window.swiper3.slides[pas.Main.MainForm.ViewerURLN];
      pas.Main.MainForm.ViewerMode = 'Backdrops';
      pas.Main.MainForm.ViewerURL1 = clickedslide.firstElementChild.getAttribute('data-src');
      pas.Main.MainForm.ViewerURL2 = clickedslide.firstElementChild.getAttribute('data-src').replace('/w300/','/original/');
      pas.Main.MainForm.ViewerURL2 = pas.Main.MainForm.ViewerURL2.replace('/w780/','/original/');
      pas.Main.MainForm.ViewerURLA = pas.Main.MainForm.PhotoA;
      pas.Main.MainForm.ViewerURLC = pas.Main.MainForm.ViewerURLN+1;
      pas.Main.MainForm.ViewerURLT = pas.Main.MainForm.BackgroundCount;
      pas.Main.MainForm.ShowViewer();
    } end; {$ENDIF}
  end;

  Mainform.tmrImageCheck.Enabled := True;

end;

procedure TMainForm.btnBlockZoomMinusClick(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    pas.Main.MainForm.pz.zoomOut();
  } end; {$ENDIF}
end;


procedure TMainForm.btnBlockZoomPlusClick(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    pas.Main.MainForm.pz.zoomIn();
  } end; {$ENDIF}
end;

procedure TMainForm.btnBlockZoomResetClick(Sender: TObject);
begin
  {$IFNDEF WIN32} asm {
    pas.Main.MainForm.pz.reset();
  } end; {$ENDIF}
end;

procedure TMainForm.btnConnectClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pageConnect;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnDirectorsClick(Sender: TObject);
begin
  btnDirectors.ElementHandle.classList.replace('btn-secondary','btn-primary');
  btnWriters.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnActors.ElementHandle.classList.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnPhotoClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pagePhotos;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnRelativesClick(Sender: TObject);
var
  Response: TXDataClientResponse; // The response coming back
  Data :String;                   // The response coming back, as text
  Blob: JSValue;
  Progress: String;               // Used to lookup progress on the request later
  Endpoint: String;               // The service endpoint for this request
begin

  {$IFNDEF WIN32} asm {
    linkRelatives.style.setProperty('background','darkgreen','important');
    await sleep(10);
  } end; {$ENDIF}

  MainForm.NowSearching := True;
  MainForm.CurrentPerson := -1;
  MainForm.CurrentRole := -1;

  MainForm.divProgressSpinner.HTML.Text := '<div style="width:100%; height:100%; font-size:11em; color:var(--bs-danger); opacity:0.75; text-align: center;"><i class="fa-regular fa-loader fa-spin"></i></div>';

  Progress := TGUID.NewGUID;

  // Progress: Error Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Error Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  // Establish connection to XData Server
  if (MainForm.Carnival = nil) then
  begin
    // Setup connection to XData Server
    try
      MainForm.Carnival := TXDataWebConnection.Create(nil);
      MainForm.Carnival.URL := Server;
      await(MainForm.Carnival.OpenAsync);
      MainForm.Client := TXDataWebClient.Create(nil);
      MainForm.Client.Connection := MainForm.Carnival;
    except on E: Exception do
      begin
        if (MainForm.Client <> nil) then MainForm.Client.Free;
        if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

        MainForm.divProgressSpinner.HTML.Text := '';

        console.log('Server Communication Exception Encountered.');
        console.log(' -- '+E.ClassName);
        console.log(' -- '+E.Message);
        console.log(' -- Automatic retry attempt in 30s');

        // Progress: Photo
        MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
        // Progress: Error Actors
        MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
        // Progress: Error Roles
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
        MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

        // Set timer to reset in case internet/server/something  is down and comes back at some point
        MainForm.tmrStart.interval := 30000;
        MainForm.tmrStart.Enabled := True;

        exit;
      end;
    end;
  end;

  // Progress: Loading Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');
  // Progress: Loading Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Loading');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'ReqError');

  Endpoint := 'IActorInfoService.Relatives';

  // Make the Request
  try
    Response := await(MainForm.Client.RawInvokeAsync(Endpoint, [
      window.atob('TGVlbG9vRGFsbGFzTXVsdGlQYXNz'),   // Secret
      MainForm.btnRelatives.Tag,
      MainForm.btnRelatives.Hint,
      Progress                                       // Progress Reference
    ]));
    Blob := Response.Result;
    Data := '[]';
    {$IFNDEF WIN32} asm {
      Data = await Blob.text();
      Data = JSON.parse(Data);
    } end; {$ENDIF}
  except on E: Exception do
    begin
      if (MainForm.Client <> nil) then MainForm.Client.Free;
      if (MainForm.Carnival <> nil) then MainForm.Carnival.Free;

      MainForm.divProgressSpinner.HTML.Text := '';

      console.log('Server Communication Exception Encountered.');
      console.log(' -- '+E.ClassName);
      console.log(' -- '+E.Message);
      console.log(' -- Automatic retry attempt in 30s');

      // Progress: Photo
      MainForm.divPhoto.HTML.Text := '<div style="width:100%; height:100%;text-align:center; margin-top:110px;"><i class="fa-duotone fa-cloud-exclamation fa-2x text-white"></i></div>';
      // Progress: Error Actors
      MainForm.divActorTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');
      // Progress: Error Roles
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('ReqError');
      MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading');

      // Set timer to reset in case internet/server/something  is down and comes back at some point
      MainForm.tmrStart.interval := 30000;
      MainForm.tmrStart.Enabled := True;

      exit;
    end;
  end;

  MainForm.divProgressSpinner.HTML.Text := '';

  // Progress: Preparing Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divActorTabulatorHolder.ElementHandle.classList.add('Preparing');
  // Progress: Preparing Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Loading', 'ReqError');
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.add('Preparing');

  {$IFNDEF WIN32} asm {
    var actorData = Data;

    // Filter out Adult content
    var adult = pas.Main.MainForm.AdultContent;
    var acount = 0;
    if (!adult) {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if (actorData[i]['XXX'] == true) {
          actorData.splice(i,1);
          acount++;
        }
      }
    } else {
      for (var i = actorData.length - 1; i >= 0; i--) {
        if ((actorData[i]['XXX'] == false) || (actorData[i]['XXX'] == undefined)) {
          actorData.splice(i,1);
          acount++;
        }
      }
    }

    pas.Main.MainForm.ActorTabulator.setData(actorData)
      .then(function(){

        // update the first column header to show a count
        var rowCount = pas.Main.MainForm.ActorTabulator.getDataCount("active");
        if (pas.Main.MainForm.ActorTabulator.getDataCount() !== rowCount) { window.actorcount.innerHTML = '<span style="cursor:pointer; color: var(--bs-warning);">'+rowCount+'</span>'; }
        else { window.actorcount.innerHTML = '<span style="cursor:pointer;">'+rowCount+'</span>'; }

        if (rowCount > 0) {

          // highlight the first row, based on whatever sorting is currently in place
          pas.Main.MainForm.ActorTabulator.selectRow( pas.Main.MainForm.ActorTabulator.getRowFromPosition(1, true));

          // Do what we would do if we had directly clicked on that row
          window.Actor_Selected(null, pas.Main.MainForm.ActorTabulator.getRowFromPosition(1,true));

        }
        else {
          pas.Main.MainForm.RoleTabulator.clearData();
        }

        setTimeout(function() { pas.Main.MainForm.HideToolTips()}, 1000);
        linkRelatives.style.removeProperty('background');
      });
  } end; {$ENDIF}

  // Progress: Ready Actors
  MainForm.divActorTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');
  // Progress: Ready Roles
  MainForm.divRoleTabulatorHolder.ElementHandle.classList.remove('Searching', 'Preparing', 'Loading', 'ReqError');

  MainForm.NowSearching := False;
  Mainform.tmrImageCheck.Enabled := True;

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(Data);
  MainForm.PreventCompilerHint(Blob);

end;


procedure TMainForm.btnSetRelatives(relative: Integer; Name: String);
var
  aName: String;
begin
  aName := Name;
  MainForm.btnRelatives.Tag := relative;
  MainForm.btnRelatives.Hint := aName;
  if MainForm.btnRelatives.Tag > 0 then
  begin
    MainForm.btnRelatives.Enabled := True;
    MainFOrm.linkRelatives.ElementHandle.style.setProperty('opacity','1.0');
    SetBootstrapTooltipDiv(linkRelatives, 'Friends and Family of '+aName, 'right');

    MainFOrm.linkFrequent.ElementHandle.style.setProperty('opacity','1.0');
    SetBootstrapTooltipDiv(linkFrequent, 'Frequent Figures with '+aName, 'right');
  end
  else
  begin
    MainForm.btnRelatives.Enabled := False;
    MainFOrm.linkRelatives.ElementHandle.style.setProperty('opacity','0.25');
    SetBootstrapTooltipDiv(linkRelatives, 'Friends and Family', 'right');

    MainFOrm.linkFrequent.ElementHandle.style.setProperty('opacity','0.25');
    SetBootstrapTooltipDiv(linkFrequent, 'Frequent Figures', 'right');
  end;

  {$IFNDEF WIN32} asm {
    btnRelatives.innerHTML = '<div style="display:flex; fill:white;">'+window.icon_family+'<div class="ms-1"> Friends and Family of '+aName+'</div></div>';

  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(aName);

end;

procedure TMainForm.btnSettingsClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pageSettings;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;


procedure TMainForm.btnVideoClick(Sender: TObject);
begin
  divInfoPages.ActivePage := pageVideos;
  divInfoPages.SetFocus;

  btnBio.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnPhoto.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnVideo.ElementHandle.classlist.replace('btn-secondary','btn-primary');
  btnBackground.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnConnect.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnSettings.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnDiscord.ElementHandle.classlist.replace('btn-primary','btn-secondary');
  btnAbout.ElementHandle.classlist.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.btnWritersClick(Sender: TObject);
begin
  btnWriters.ElementHandle.classList.replace('btn-secondary','btn-primary');
  btnActors.ElementHandle.classList.replace('btn-primary','btn-secondary');
  btnDirectors.ElementHandle.classList.replace('btn-primary','btn-secondary');
end;

procedure TMainForm.divNextBirthDayClick(Sender: TObject);
var
  NewDate: String;
begin
  // Change FlatPickr to the previous date
  if (CurrentBirthDate = '')
  then CurrentBirthDate := FormatDateTime('yyyy-mm-dd', Now);

  NewDate := FormatDateTime('yyyy-mm-dd',EncodeDate(StrToInt(Copy(CurrentBirthDate,1,4)),StrToInt(Copy(CurrentBirthDate,6,2)),StrToInt(Copy(CurrentBirthDate,9,2)))+1);
  {$IFNDEF WIN32} asm {
    this.Birthdate.setDate(NewDate,true);
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(NewDate);

end;

procedure TMainForm.divPhotoClick(Sender: TObject);
begin
  MainForm.ViewerMode := 'PersonPhotos';
  MainForm.ViewerURL1 := MainForm.Photo1;
  MainForm.ViewerURL2 := MainForm.Photo2;
  MainForm.ViewerURLA := MainForm.PhotoA;
  MainForm.ViewerURLC := 1;
  MainForm.ViewerURLT := 1;
  MainForm.ShowViewer;
end;

procedure TMainForm.ShowViewer;
var
  direction: String;
  aspect: double;
  pagewidth: double;
  pageheight: double;
  pagetop: double;
  pageleft: double;
  displayable: Boolean;
begin

  // Lots of scenarios where we don't want to display the viewer.
  // Kind of a last resort to check for them here.
  displayable := True;
  if   (Length(MainForm.ViewerURL1) < 10)
    or (Length(MainForm.ViewerURL2) < 10)
    or (pos('<',              MainForm.ViewerURL1) > 0)
    or (pos('placeholder',    MainForm.ViewerURL1) > 0)
    or (pos('img/dark_space', MainForm.ViewerURL1) > 0)
    or (pos('img/hourglass',  MainForm.ViewerURL1) > 0)
    or (pos('<',              MainForm.ViewerURL2) > 0)
    or (pos('placeholder',    MainForm.ViewerURL2) > 0)
    or (pos('img/dark_space', MainForm.ViewerURL2) > 0)
    or (pos('img/hourglass',  MainForm.ViewerURL2) > 0)
  then displayable := false;

  if displayable then
  begin
    MainForm.btnBlockSelect.Enabled := False;

    if MainForm.ViewerMode = 'Backdrops' then
    begin
      direction := 'landscape';
      aspect := 1.77777;
    end
    else
    begin
      direction := 'portrait';
      aspect := 0.66666;
    end;

    if MainForm.ViewerVisible = False then
    begin
      divBlock.Top := 0;
      divBlock.Left := 0;
      divBlock.ElementHandle.classList.remove('d-none');
      divBlockControls.ElementHandle.classList.remove('d-none');
      divBlockData.ElementHandle.classList.remove('d-none');

      {$IFNDEF WIN32} asm {
        pagetop = 20.0;
        pageleft = 20.0;
        pagewidth = document.documentElement.clientWidth - 90.0;
        pageheight = document.documentElement.clientHeight - 40.0;
      } end; {$ENDIF}

      if (pagewidth / pageheight) > aspect then
      begin
        MainForm.divViewerHolder.Top := Round(pagetop);
        MainForm.divViewerHolder.Height := Round(pageheight);
        MainForm.divViewerHolder.Width := Round(pageheight * aspect);
        MainForm.divViewerHolder.Left := Round(pageleft+((pagewidth - (Round(pageheight * aspect))) / 2));
      end
      else
      begin
        MainForm.divViewerHolder.Left := Round(pageleft);
        MainForm.divViewerHolder.Width := Round(pagewidth);
        MainForm.divViewerHolder.Height := Round(pagewidth / aspect);
        MainForm.divViewerHolder.Top := Round(pagetop+((pageheight - (Round(pagewidth / aspect))) / 2));
      end;
      MainForm.ViewerVisible := True;
    end;

    // Display the image nearly fullscreen
    divViewerHolder.ElementHandle.firstElementChild.innerHTML :=
      '<div id="Viewer" style="width:100%;height:100%;background-image:url('+MainForm.ViewerURL1+'); background-size:100% 100%;">'+
        '<img '+
          'class="lazy '+direction+'" '+
          'height=100% width=100%'+
          'alt="Photo of '+MainForm.ViewerURLA+'" '+
          'src='+MainForm.ViewerURL1+' '+
          'data-src='+MainForm.ViewerURL2+' '+
          'onerror="this.onerror=null;this.src=''img/hourglass.png''"'+
          'onclick="event.stopPropagation()"'+
        '/>'+
      '</div>';

    // Update Progress
    MainForm.btnBlockCount.Caption := IntToStr(MainForm.ViewerURLC);
    MainForm.btnBlockTotal.Caption := IntToStr(MainForm.ViewerURLT);


    if ((ViewerMode = 'PersonPhotos') or (ViewerMode = 'Backdrops')) then
    begin
      MainForm.btnBlockPrevious.Caption := '<i class="fa-duotone fa-circle-arrow-right fa-2x text-white opacity-75"> </i>';
      MainForm.btnBlockNext.Caption := '<i class="fa-duotone fa-circle-arrow-left fa-2x text-white opacity-75"> </i>';

      if (MainForm.ViewerURLC = MainForm.ViewerURLT)
      then MainForm.btnBlockPrevious.Enabled := False
      else MainForm.btnBlockPrevious.Enabled := True;

      if (MainForm.ViewerURLC = 1) then
      begin
        MainForm.btnBlockNext.Enabled := False;
        MainForm.btnBlockSelect.Enabled := True;
      end
      else
      begin
        MainForm.btnBlockNext.Enabled := True;
      end;
    end
    else
    begin
      MainForm.btnBlockPrevious.Caption := '<i class="fa-duotone fa-circle-arrow-up fa-2x text-white opacity-75"> </i>';
      MainForm.btnBlockNext.Caption := '<i class="fa-duotone fa-circle-arrow-down fa-2x text-white opacity-75"> </i>';

      if (MainForm.ViewerURLC = MainForm.ViewerURLT)
      then MainForm.btnBlockNext.Enabled := False
      else MainForm.btnBlockNext.Enabled := True;

      if (MainForm.ViewerURLC = 1) then
      begin
        MainForm.btnBlockPrevious.Enabled := False;
        MainForm.btnBlockSelect.Enabled := True;
      end
      else
      begin
        MainForm.btnBlockPrevious.Enabled := True;
      end;
    end;


    MainForm.divViewerHolder.ElementHandle.classList.remove('d-none');

    // This hides the tooltips
    MainForm.tmrFocus.Tag := 1;
    MainForm.tmrFocus.Enabled := True;

    // This ensures any image loading mishaps are caught eventually
    MainForm.tmrImageCheckEnable();

    // This loads up our pan/zoom functionality
    {$IFNDEF WIN32} asm {
      var element = divViewer.firstElementChild;
      pas.Main.MainForm.pz = Panzoom(element, {
        maxScale: 100,
        minScale: 0.75,
        panOnlyWhenZoomed: true
      });
      element.parentElement.addEventListener('wheel',pas.Main.MainForm.pz.zoomWithWheel);
      // this is an attempt to get a right-click on the image to not immediate initiate a pan
      element.parentElement.addEventListener('contextmenu', event => {
        event.stopPropagation();
      });

    } end; {$ENDIF}
  end;

end;

procedure TMainForm.divViewerHolderClick(Sender: TObject);
begin
  MainForm.tmrFocus.Tag := 1;
  MainForm.tmrFocus.Enabled := True;

  ViewerVisible := False;

  divViewerHolder.ElementHandle.classList.add('d-none');
  divBlock.ElementHandle.classList.add('d-none');
  divBlockControls.ElementHandle.classList.add('d-none');
  divBlockData.ElementHandle.classList.add('d-none');

  // Unload pan/zoom functionality
  {$IFNDEF WIN32} asm {
    var element = document.querySelector('#Viewer');
    element.parentElement.removeEventListener('wheel',pas.Main.MainForm.pz.zoomWithWheel)
    pas.Main.MainForm.pz.destroy();
  } end; {$ENDIF}

end;



function TMainForm.GetAge(BirthDate, CurrentDate: String): Integer;
var
    y1, m1, d1: Word; //born
    y2, m2, d2: Word; //today

begin
     Result := 0;

     y1 := StrToInt(Copy(BirthDate,1,4));
     m1 := StrtoInt(Copy(Birthdate,5,2));
     d1 := StrToInt(Copy(BirthDate,7,2));

     y2 := StrToInt(Copy(CurrentDate,1,4));
     m2 := StrtoInt(Copy(CurrentDate,5,2));
     d2 := StrToInt(Copy(CurrentDate,7,2));

    //Fudge someone born on the leap-day to Feb 28th of the same year
    //strictly for the purposes of this calculation
    if ( (m1=2) and (d1=29) )
            and
        ( not IsLeapYear(y2) ) then
    begin
        d1 := 28;
    end;

    Result := y2-y1; //rough count of years
    //Take away a year of the month/day is before their birth month/day
    if (m2 < m1) or
            ((m2=m1) and (d2<d1)) then
        Dec(Result);
end;

procedure TMainForm.SetBootstrapTooltip(button: TWebButton; placement: string);
var
  btn: TJSHTMLElement;
  title: String;
begin
  btn := button.ElementHandle;
  title := button.Hint;
  button.Hint := '';
  {$IFNDEF WIN32} asm {
    var tooltip = new bootstrap.Tooltip(btn, {
      title: title,
      placement: placement,
      customClass: 'custom-tooltip',
      delay: { "show": 1500, "hide": 100 }
    });
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(btn);
  MainForm.PreventCompilerHint(title);

end;

procedure TMainForm.SetBootstrapTooltipDiv(element: TWebHTMLDiv; hint: string; placement: string);
var
  btn: TJSHTMLElement;
  title: String;
begin
  btn := element.ElementHandle;
  title := hint;
  {$IFNDEF WIN32} asm {
    // NOTE: html and sanitize are added here to allow displaying tables
    var tooltip = new bootstrap.Tooltip(btn, {
      title: title,
      html: true,
      sanitize: false,
      placement: placement,
      customClass: 'custom-tooltip',
      delay: { "show": 1500, "hide": 100 }
    });
  } end; {$ENDIF}

  // Suppress Delphi Hint "Local variable is assigned but never used"
  MainForm.PreventCompilerHint(btn);
  MainForm.PreventCompilerHint(title);

end;

procedure TMainForm.tmrFocusTimer(Sender: TObject);
begin
  if tmrFocus.Tag > 0 then
  begin
    edtSearch.SetFocus;
    tmrFocus.Tag := 0;
  end
  else
  begin
    tmrFocus.Enabled := False;
  end;
end;

procedure TMainForm.tmrStartTimer(Sender: TObject);
var
  TourVersion: String;
begin
  if (TablesReady = 2) then
  begin
    tmrStart.Enabled := False;

    // Figure out what kind of startup we want to handle
    if StartupMode = 'today' then
    begin
      GetBirthdays(MonthOfTheYear(Now), DayOfTheMonth(Now));
    end
    else if StartupMode = 'reference' then
    begin
      Startup := False;
      GetReference(GetQueryParam('R'));
    end
    else if StartupMode = 'adult' then
    begin
      Startup := False;
      GetBirthdays(MonthOfTheYear(Now), DayOfTheMonth(Now));
    end
    else if StartupMode = 'top1000' then
    begin
      Startup := False;
      GetTop1000;
    end
    else if StartupMode = 'top5000' then
    begin
      Startup := False;
      GetTop1000;
    end;

    // If the stars align, launch the tour
    TourVersion := TWebLocalStorage.GetValue('Actorious Tour Version');
    TourActive := False;
    if Startup then
    begin
      if TourVersion = '' then
      begin
        LaunchTour('New');
      end
      else if TourVersion <> Version then
      begin
        LaunchTour('Update');
      end;
      TWebLocalStorage.SetValue('Actorious Tour Version', Version);
    end;

  end;
end;

procedure TMainForm.tmrTooltipsTimer(Sender: TObject);
begin
  HideToolTips;
end;

procedure TMainForm.StopLinkerRemoval(P: Pointer);                          begin end;
procedure TMainForm.PreventCompilerHint(S: string);               overload; begin end;
procedure TMainForm.PreventCompilerHint(I: integer);              overload; begin end;
procedure TMainForm.PreventCompilerHint(J: JSValue);              overload; begin end;
procedure TMainForm.PreventCompilerHint(H: TJSHTMLElement);       overload; begin end;

end.