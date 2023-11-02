object MainForm: TMainForm
  Width = 1274
  Height = 822
  Align = alClient
  Caption = 'Actorious'
  Color = clBlack
  CSSLibrary = cssBootstrap
  ElementClassName = 'd-flex flex-column'
  ElementFont = efCSS
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  Shadow = False
  ShowClose = False
  OnCreate = WebFormCreate
  OnKeyDown = WebFormKeyDown
  OnResize = WebFormResize
  OnShow = WebFormShow
  object divBottom: TWebHTMLDiv
    Left = 0
    Top = 281
    Width = 1266
    Height = 500
    Margins.Left = 4
    Margins.Top = 1
    Margins.Right = 4
    Margins.Bottom = 4
    ElementClassName = 'order-1 d-flex flex-row '
    ElementID = 'divBottom'
    HeightStyle = ssAuto
    WidthStyle = ssPercent
    ChildOrder = 2
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divActorTabulatorHolder: TWebHTMLDiv
      Left = -1
      Top = -2
      Width = 631
      Height = 551
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 0
      ElementClassName = 'rounded border border-secondary Loading w-50 me-1'
      ElementID = 'divActorTabulatorHolder'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        '<div id="divActorTabulator" class="rounded border-0" ></div>')
      Role = ''
    end
    object divRoleTabulatorHolder: TWebHTMLDiv
      Left = 634
      Top = -1
      Width = 631
      Height = 551
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ElementClassName = 'rounded border border-secondary overflow-hidden Loading w-50'
      ElementID = 'divRoleTabulatorHolder'
      HeightStyle = ssAuto
      WidthStyle = ssAuto
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      HTML.Strings = (
        
          '<div id="divRoleTabulator" class="rounded border-0" style="heigh' +
          't:100%; width:100%;"></div>')
      Role = ''
    end
  end
  object divTop: TWebHTMLDiv
    Left = 0
    Top = -3
    Width = 1274
    Height = 281
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 2
    ElementClassName = 
      'justify-content-center order-0 p-1 gap-1 d-flex flex-row flex-wr' +
      'ap '
    ElementID = 'divTop'
    HeightStyle = ssAuto
    WidthStyle = ssPercent
    ElementPosition = epRelative
    ElementFont = efCSS
    Role = ''
    object divInfo: TWebHTMLDiv
      Left = 629
      Top = 6
      Width = 579
      Height = 277
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 0
      ElementClassName = 'flex-grow-1 gap-1 order-3 bg-none d-flex flex-column '
      ElementID = 'divInfo'
      ChildOrder = 2
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divInfoPages: TWebPageControl
        Left = -2
        Top = 62
        Width = 500
        Height = 223
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        ElementClassName = 'order-1 w-100 bg-dark rounded border border-secondary'
        ElementID = 'divInfoPages'
        ChildOrder = 4
        ElementFont = efCSS
        TabIndex = 0
        ShowTabs = False
        TabOrder = 0
        object pageBio: TWebTabSheet
          AlignWithMargins = True
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          ElementClassName = 'bg-dark rounded border border-secondary'
          ElementID = 'pageBio'
          Align = alClient
          Caption = 'Bio'
          ChildOrder = 2
          ElementFont = efCSS
          ShowCaption = False
          TabVisible = False
          object divBiography: TWebHTMLDiv
            Left = 32
            Top = 15
            Width = 483
            Height = 150
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            ElementClassName = 'text-white CustomScroll'
            ElementID = 'divBiography'
            ChildOrder = 4
            ElementFont = efCSS
            Role = ''
          end
        end
        object pageAbout: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          ElementID = 'pageAbout'
          Caption = 'About'
          ChildOrder = 1
          ElementFont = efCSS
          object divAbout: TWebHTMLDiv
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 492
            Height = 195
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            ElementClassName = 'text-white '
            ElementID = 'divAbout'
            Align = alClient
            ChildOrder = 4
            ElementFont = efCSS
            HTML.Strings = (
              
                '<div class="w-100 h-100 ps-2 pe-2 pb-4 " style="white-space:norm' +
                'al; overflow-y:scroll; font-size:14px">'
              '<p><strong>About Actorious</strong></p>'
              
                '<p>This project was initially created by <a href=mailto:andrew@5' +
                '00foods.com>Andrew Simard</a> as a demo app, illustrating how to' +
                ' use <a '
              'href="http://tabulator.info" '
              
                'target="_blank">Tabulator</a> within a <a href="https://www.tmss' +
                'oftware.com/" target=_blank>TMS WEB Core</a> project.  This was ' +
                'detailed in a series of '
              
                'articles he wrote for the <a href="https://www.tmssoftware.com/b' +
                'log" target=_blank>TMS Software Blog</a>, starting with <a '
              
                'href="https://www.tmssoftware.com/site/blog.asp?post=948" target' +
                '=_blank>Part 1</a> on June 13, 2022.</p>'
              ''
              '<br /><p><strong>Data Attribution</strong></p>'
              
                '<p>Birthday data comes from WikiData, but is not endorsed or cer' +
                'tified by WikiData.'
              
                'The rest of the data comes from The Movie Database, using the TM' +
                'DB API, but is not endorsed or certified by TMDB.</p>'
              ''
              '<br /><p><strong>Application Design</strong></p>'
              
                '<p>The following commercial and open source products, libraries,' +
                ' and other resources were used in creating this web application.' +
                ' More information about this '
              
                'project can be found on <a href="https://github.com/500Foods/TMS' +
                '-WEB-Core-ActorInfo" target=_blank">GitHub</a>.</p>'
              '<br />Embarcadero - Delkphi 10.3'
              '<br />TMS Software - TMS WEB Core'
              '<br />Tabulator'
              '<br />Luxon'
              '<br />FlatPickr'
              '<br />Bootstrap'
              '<br />FontAwesome'
              '<br />Google Fonts'
              '</div>')
            Role = ''
          end
        end
        object pagePhotos: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          Caption = 'Photos'
          ChildOrder = 2
          ElementFont = efCSS
          object divPhotoSlider: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 500
            Height = 203
            ElementID = 'divPhotoSlider'
            Align = alClient
            ElementFont = efCSS
            HTML.Strings = (
              
                '<div style="display:flex; flex-direction:column; height:100%; wi' +
                'dth:100%; overflow:hidden; padding-top:3px; padding-bottom:3px;"' +
                '>  '
              '  <div class="swiper" style="width:100%; height: 100%;">  '
              '    <div class="swiper-wrapper"> </div>  '
              '  </div>  '
              '</div>  ')
            Role = ''
          end
        end
        object pageVideos: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          Caption = 'Videos'
          ChildOrder = 3
          ElementFont = efCSS
          object divVideoSlider: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 500
            Height = 203
            ElementID = 'divVideoSlider'
            Align = alClient
            ElementFont = efCSS
            HTML.Strings = (
              
                '<div style="display:flex; flex-direction:column; height:100%; wi' +
                'dth:100%; overflow:hidden; padding-top:3px; padding-bottom:3px;"' +
                '>  '
              '  <div class="swiper2" style="width:100%; height: 100%;">  '
              '    <div class="swiper-wrapper"> </div>  '
              '  </div>  '
              '</div>  ')
            Role = ''
          end
        end
        object pageBackgrounds: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          Caption = 'BG'
          ChildOrder = 4
          ElementFont = efCSS
          object divBackgroundSlider: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 500
            Height = 203
            ElementID = 'divBackgroundSlider'
            Align = alClient
            ElementFont = efCSS
            HTML.Strings = (
              
                '<div style="display:flex; flex-direction:column; height:100%; wi' +
                'dth:100%; overflow:hidden; padding-top:3px; padding-bottom:3px;"' +
                '>  '
              '  <div class="swiper3" style="width:100%; height: 100%;">  '
              '    <div class="swiper-wrapper"> </div>  '
              '  </div>  '
              '</div>  ')
            Role = ''
          end
        end
        object pageConnect: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          Caption = 'Connect'
          ChildOrder = 5
          ElementFont = efCSS
          object btnRelatives: TWebButton
            Left = 4
            Top = 4
            Width = 96
            Height = 35
            Caption = 'Find Relatives'
            ElementClassName = 'btn btn-sm btn-primary'
            ElementID = 'btnRelatives'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnRelativesClick
          end
        end
        object pageDiscord: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          ElementID = 'pageDiscord'
          Caption = 'Discord'
          ChildOrder = 7
          ElementFont = efCSS
          DesignSize = (
            500
            203)
          object lblSupport: TWebLabel
            Left = 6
            Top = 40
            Width = 494
            Height = 160
            Anchors = [akLeft, akTop, akRight, akBottom]
            AutoSize = False
            Caption = 
              'Support and discussions about Actorious are managed through Disc' +
              'ord, a free service.'
            ElementLabelClassName = 'text-white'
            ElementID = 'lblSupport'
            ElementFont = efCSS
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            WordWrap = True
            WidthStyle = ssPercent
            WidthPercent = 100.000000000000000000
          end
          object btnDiscordLaunch: TWebButton
            Left = 4
            Top = 4
            Width = 141
            Height = 35
            Caption = '<i class="fa-brands fa-discord fa-lg"> </i> Launch Discord'
            ElementClassName = 'btn btn-sm btn-primary'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            WidthPercent = 100.000000000000000000
            OnClick = btnDiscordLaunchClick
          end
        end
        object pageSettings: TWebTabSheet
          Left = 0
          Top = 20
          Width = 500
          Height = 203
          ElementClassName = 'bg-dark rounded border border-secondary'
          ElementID = 'pageSettings'
          Caption = 'Settings'
          ChildOrder = 6
          ElementFont = efCSS
          object divSettings: TWebHTMLDiv
            Left = 0
            Top = 0
            Width = 500
            Height = 203
            ElementClassName = 'bg-none border border-0 d-flex flex-column'
            ElementID = 'divSettings'
            Align = alClient
            ChildOrder = 2
            ElementFont = efCSS
            Role = ''
            object WebHTMLDiv1: TWebHTMLDiv
              Left = 0
              Top = 76
              Width = 500
              Height = 38
              ElementClassName = 'order-2 ms-1 d-flex Switch'
              ElementID = 'divSettingsSwitch3'
              WidthStyle = ssAuto
              Align = alTop
              ChildOrder = 2
              ElementPosition = epRelative
              ElementFont = efCSS
              HTML.Strings = (
                '<div class="form-check form-switch">'
                
                  '  <input class="form-check-input" type="checkbox" id="switchSett' +
                  'ings3" checked>'
                
                  '  <label class="form-check-label" for="siwtchSettings2" id="swit' +
                  'chSettingsLabel3">Limit Quick Search to 20 Results</label>'
                '</div>')
              Role = ''
            end
            object WebHTMLDiv2: TWebHTMLDiv
              Left = 0
              Top = 38
              Width = 500
              Height = 38
              ElementClassName = 'order-1 ms-1 d-flex Switch'
              ElementID = 'divSettingsSwitch2'
              WidthStyle = ssAuto
              Align = alTop
              ChildOrder = 1
              ElementPosition = epRelative
              ElementFont = efCSS
              HTML.Strings = (
                '<div class="form-check form-switch">'
                
                  '  <input class="form-check-input" type="checkbox" id="switchSett' +
                  'ings2" checked>'
                
                  '  <label class="form-check-label" for="switchSettings2" id="swit' +
                  'chSettingsLabel2">Limit Top Requests to 1,000 Records</label>'
                '</div>')
              Role = ''
            end
            object divSettingsSwitch1: TWebHTMLDiv
              Left = 0
              Top = 0
              Width = 500
              Height = 38
              ElementClassName = 'order-0 ms-1 d-flex Switch'
              ElementID = 'divSettingsSwitch1'
              WidthStyle = ssAuto
              Align = alTop
              ElementPosition = epRelative
              ElementFont = efCSS
              HTML.Strings = (
                '<div class="form-check form-switch">'
                
                  '  <input class="form-check-input" type="checkbox" id="switchSett' +
                  'ings1" checked>'
                
                  '  <label class="form-check-label" for="switchSettings1" id="swit' +
                  'chSettingsLabel1">Limit Person Requests to 50 Records</label>'
                '</div>')
              Role = ''
            end
          end
        end
      end
      object divButtons: TWebHTMLDiv
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 579
        Height = 31
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 2
        ElementClassName = 'order-0 w-100 rounded bg-dark border border-0'
        ElementID = 'divButtons'
        Align = alTop
        ChildOrder = 5
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object divButtonHolder: TWebPanel
          Left = 0
          Top = 0
          Width = 579
          Height = 31
          ElementClassName = 'bg-none rounded w-100 overflow-hidden'
          ElementID = 'divButtonHolder'
          Alignment = taLeftJustify
          ChildOrder = 2
          ElementBodyClassName = 'w-100 btn-group btn-group-sm align-items-stretch d-flex'
          ElementFont = efCSS
          object btnBio: TWebButton
            Left = 0
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Biography'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ElementClassName = 'btn btn-sm btn-secondary px-1'
            ElementID = 'btnBio'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 1
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnBioClick
          end
          object btnPhoto: TWebButton
            Left = 50
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Photos'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 1
            ElementClassName = 'btn btn-sm btn-secondary px-1'
            ElementID = 'btnPhoto'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnPhotoClick
          end
          object btnVideo: TWebButton
            Left = 100
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Videos'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-secondary px-1 d-none'
            ElementID = 'btnVideo'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 2
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnVideoClick
          end
          object btnConnect: TWebButton
            Left = 200
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Connections'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 4
            ElementClassName = 'btn btn-sm btn-secondary px-1'
            ElementID = 'btnConnect'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 3
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnConnectClick
          end
          object btnBackground: TWebButton
            Left = 150
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Backgrounds'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 3
            ElementClassName = 'btn btn-sm btn-secondary px-1 d-none'
            ElementID = 'btnBackground'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 4
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnBackgroundClick
          end
          object btnSettings: TWebButton
            Left = 250
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Settings'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 5
            ElementClassName = 'btn btn-sm btn-secondary px-1'
            ElementID = 'btnSettings'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 5
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnSettingsClick
          end
          object btnAbout: TWebButton
            Left = 350
            Top = 0
            Width = 50
            Height = 31
            Hint = 'About Actorious'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 6
            ElementClassName = 'btn btn-sm btn-secondary px-0'
            ElementID = 'btnAbout'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 6
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnAboutClick
          end
          object btnDiscord: TWebButton
            Left = 300
            Top = 0
            Width = 50
            Height = 31
            Hint = 'Support via Discord'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            ChildOrder = 6
            ElementClassName = 'btn btn-sm btn-secondary px-1'
            ElementID = 'btnDiscord'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightStyle = ssAuto
            HeightPercent = 100.000000000000000000
            TabOrder = 7
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnDiscordClick
          end
        end
      end
    end
    object divMain: TWebHTMLDiv
      Left = 0
      Top = 0
      Width = 213
      Height = 277
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      ElementClassName = 'bg-none'
      ElementID = 'divMain'
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divMainHolder: TWebHTMLDiv
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 213
        Height = 277
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ElementClassName = 'bg-dark border  border-secondary rounded'
        ElementID = 'divMainHolder'
        Align = alClient
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
        object divLogo: TWebHTMLDiv
          AlignWithMargins = True
          Left = 0
          Top = 2
          Width = 213
          Height = 32
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          ElementClassName = 'rounded overflow-hidden'
          ElementID = 'divLogo'
          Align = alTop
          ElementFont = efCSS
          HTML.Strings = (
            
              '<a href="https://www.actorious.com" style="text-decoration:none;' +
              '">'
            '  <img '
            '    src="img/actorious_logo.png" '
            '    alt="Actorious Logo" '
            
              '    style="width:144px; height:29px; margin-left:50%; transform:' +
              'translateX(-50%);"'
            '  />'
            '</a>')
          Role = ''
        end
        object divBirthdayNav: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 68
          Width = 205
          Height = 34
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 1
          ElementID = 'divBirthdayNav'
          Align = alTop
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          object divBirthDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 32
            Top = 0
            Width = 141
            Height = 34
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-0 border border-dark bg-light text-dark'
            ElementID = 'divBirthDay'
            Align = alClient
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
          end
          object divPrevBirthDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 32
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-start bg-light text-dark border border-dark'
            ElementID = 'divPrevBirthDay'
            Align = alLeft
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            OnClick = divPrevBirthDayClick
          end
          object divNextBirthDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 173
            Top = 0
            Width = 32
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-end bg-light text-dark border border-dark'
            ElementID = 'divNextBirthDay'
            Align = alRight
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            OnClick = divNextBirthDayClick
          end
        end
        object divAttribution: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 246
          Width = 205
          Height = 31
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 0
          ElementClassName = 
            'rounded border border-dark bg-dark text-dark d-flex justify-cont' +
            'ent-evenly'
          ElementID = 'divAttribution'
          Align = alBottom
          ChildOrder = 7
          ElementFont = efCSS
          HTML.Strings = (
            '<a href="https://www.wikidata.org" target=_blank>'
            '  <img width="102px" '
            '           height="28px"'
            '           src="img/wikidata_logo.png"'
            '           title="WikiData" '
            '           alt="WikiData Logo"'
            '           data-bs-toggle="tooltip" '
            '           data-bs-placement="top"'
            '           data-bs-delay={"show":1000,"hide":100}>'
            '</a>'
            '<a href="https://www.themoviedb.org" target=_blank>'
            '  <img width="63px" '
            '           height="27px"'
            '           src="img/tmdb.svg"'
            '           style="padding-top:1px;"'
            '           title="The Movie Database" '
            '           alt="TMDb Logo"'
            '           data-bs-toggle="tooltip" '
            '           data-bs-placement="top"'
            '           data-bs-delay={"show":1000,"hide":100}>'
            '</a>')
          Role = ''
        end
        object divDepartedNav: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 103
          Width = 205
          Height = 34
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 1
          ElementID = 'divDepartedNav'
          Align = alTop
          ChildOrder = 3
          ElementFont = efCSS
          Role = ''
          object divDeathDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 32
            Top = 0
            Width = 141
            Height = 34
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-0 border border-dark bg-light text-dark'
            ElementID = 'divDeathDay'
            Align = alClient
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
          end
          object divPrevDeathDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 32
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-start bg-light text-dark border border-dark'
            ElementID = 'divPrevDeathDay'
            Align = alLeft
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            OnClick = divPrevDeathDayClick
          end
          object divNextDeathDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 173
            Top = 0
            Width = 32
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-end bg-light text-dark border border-dark'
            ElementID = 'divNextDeathDay'
            Align = alRight
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            OnClick = divNextDeathDayClick
          end
        end
        object divReleaseNav: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 138
          Width = 205
          Height = 34
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 1
          ElementID = 'divReleaseNav'
          Align = alTop
          ChildOrder = 4
          ElementFont = efCSS
          Role = ''
          object divReleaseDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 32
            Top = 0
            Width = 141
            Height = 34
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-0 border border-dark bg-light text-dark'
            ElementID = 'divReleaseDay'
            Align = alClient
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
          end
          object divPrevReleaseDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 32
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-start bg-light text-dark border border-dark'
            ElementID = 'divPrevReleaseDay'
            Align = alLeft
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            OnClick = divPrevReleaseDayClick
          end
          object divNextReleaseDay: TWebHTMLDiv
            AlignWithMargins = True
            Left = 173
            Top = 0
            Width = 32
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ElementClassName = 'rounded-end bg-light text-dark border border-dark'
            ElementID = 'divNextReleaseDay'
            Align = alRight
            ChildOrder = 3
            ElementFont = efCSS
            Role = ''
            OnClick = divNextReleaseDayClick
          end
        end
        object divTop100Nav: TWebPanel
          AlignWithMargins = True
          Left = 4
          Top = 207
          Width = 205
          Height = 32
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 1
          ElementClassName = 'bg-none rounded'
          ElementID = 'divTop100Nav'
          Align = alTop
          ChildOrder = 6
          ElementFont = efCSS
          object btnTop1000: TWebButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 205
            Height = 32
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            ElementClassName = 'btn btn-sm btn-secondary'
            ElementID = 'btnTop1000'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthPercent = 100.000000000000000000
            OnClick = btnTop1000Click
          end
        end
        object divPeopleNav: TWebPanel
          AlignWithMargins = True
          Left = 4
          Top = 34
          Width = 205
          Height = 32
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 4
          Margins.Bottom = 2
          ElementClassName = 'bg-none rounded'
          ElementID = 'divPeopleNav'
          Align = alTop
          ChildOrder = 1
          ElementBodyClassName = 'btn-group btn-group-sm d-flex align-items-stretch '
          ElementFont = efCSS
          object btnActors: TWebButton
            Left = 114
            Top = 0
            Width = 57
            Height = 32
            Align = alLeft
            ChildOrder = 2
            ElementClassName = 'btn btn-sm btn-secondary'
            ElementID = 'btnActors'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnActorsClick
          end
          object btnDirectors: TWebButton
            Left = 57
            Top = 0
            Width = 57
            Height = 32
            Align = alLeft
            ChildOrder = 1
            ElementClassName = 'btn btn-sm btn-secondary'
            ElementID = 'btnDirectors'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 1
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnDirectorsClick
          end
          object btnWriters: TWebButton
            Left = 0
            Top = 0
            Width = 57
            Height = 32
            Align = alLeft
            ElementClassName = 'btn btn-sm btn-secondary'
            ElementID = 'btnWriters'
            ElementFont = efCSS
            ElementPosition = epRelative
            HeightPercent = 100.000000000000000000
            TabOrder = 2
            TabStop = False
            WidthStyle = ssAuto
            WidthPercent = 100.000000000000000000
            OnClick = btnWritersClick
          end
        end
        object divSearchNav: TWebHTMLDiv
          AlignWithMargins = True
          Left = 4
          Top = 173
          Width = 204
          Height = 32
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 2
          ElementClassName = 'rounded border border-dark bg-light '
          ElementID = 'divSearchNav'
          Align = alTop
          ChildOrder = 5
          ElementFont = efCSS
          Role = ''
          object edtSearch: TWebEdit
            Left = 0
            Top = 0
            Width = 204
            Height = 32
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            TabStop = False
            Align = alClient
            AutoFocus = True
            ChildOrder = 7
            ElementClassName = 'border-0 rounded bg-light ps-2 pb-1'
            ElementID = 'edtSearch'
            ElementFont = efCSS
            HeightPercent = 100.000000000000000000
            MaxLength = 25
            SpellCheck = False
            TextHint = 'Search People...'
            WidthPercent = 100.000000000000000000
            OnChange = edtSearchChange
            OnEnter = edtSearchEnter
          end
        end
        object btnSearch: TWebButton
          Left = 173
          Top = 173
          Width = 32
          Height = 32
          Hint = 'Search People'
          Caption = '<i class="fa-duotone fa-search align-top text-black fa-lg"></i> '
          ChildOrder = 1
          Default = True
          ElementClassName = 'btn btn-sm btn-link border-0 shadow-none'
          ElementID = 'btnSearch'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          TabOrder = 8
          TabStop = False
          WidthPercent = 100.000000000000000000
          OnClick = btnSearchClick
        end
      end
    end
    object divTopButtons: TWebHTMLDiv
      Left = 432
      Top = 5
      Width = 192
      Height = 277
      ElementClassName = 'order-2 d-flex flex-row gap-1'
      ElementID = 'divTopButtons'
      WidthStyle = ssAuto
      ChildOrder = 10
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divLinkSet1: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 32
        Height = 277
        ElementClassName = 'order-0 d-flex flex-column gap-1'
        ElementID = 'divLinkSet1'
        ChildOrder = 4
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv4: TWebHTMLDiv
          Left = 3
          Top = 105
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-4 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv5: TWebHTMLDiv
          Left = 0
          Top = 70
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-3 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkFavourite: TWebHTMLDiv
          Left = 0
          Top = 35
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-2 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkFavourite'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<div style="padding:3px 3px; color:#f00;"><i class="fa-solid fa-' +
              'heart fa-xl"></i></div>')
          Role = ''
        end
        object WebHTMLDiv7: TWebHTMLDiv
          Left = 0
          Top = 140
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-5 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkLoading: TWebHTMLDiv
          Left = 0
          Top = 243
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-7 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ElementID = 'linkLoading'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkLogin: TWebHTMLDiv
          Left = 3
          Top = 0
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-1 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkLogin'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<div style="padding:3px 4px; color:var(--bs-gray-200);"><i class' +
              '="fa-duotone fa-right-to-bracket fa-lg"></i></div>')
          Role = ''
        end
        object WebHTMLDiv12: TWebHTMLDiv
          Left = 0
          Top = 210
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-7 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv13: TWebHTMLDiv
          Left = 0
          Top = 175
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-6 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
      object divLinkSet2: TWebHTMLDiv
        Left = 36
        Top = 0
        Width = 32
        Height = 277
        ElementClassName = 'order-1 d-flex flex-column gap-1'
        ElementID = 'divLinkSet2'
        ChildOrder = 4
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object linkList4: TWebHTMLDiv
          Left = 0
          Top = 140
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-5 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ElementID = 'linkList4'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkList3: TWebHTMLDiv
          Left = 0
          Top = 70
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-3 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ElementID = 'linkList3'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkList2: TWebHTMLDiv
          Left = 0
          Top = 35
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-2 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ElementID = 'linkList2'
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkTour: TWebHTMLDiv
          Left = 0
          Top = 175
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-7 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkTour'
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkLink: TWebHTMLDiv
          Left = 0
          Top = 210
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-7 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkLink'
          ChildOrder = 6
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkList1: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-1 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ElementID = 'linkList1'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkEMail: TWebHTMLDiv
          Left = 0
          Top = 245
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-8 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkEMail'
          ChildOrder = 7
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkRating: TWebHTMLDiv
          Left = 0
          Top = 105
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-4 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkRating'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
      end
      object divLinkSet4: TWebHTMLDiv
        Left = 108
        Top = 0
        Width = 32
        Height = 277
        ElementClassName = 'order-3 d-flex flex-column gap-1'
        ElementID = 'divLinkSet4'
        ChildOrder = 3
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object linkWikiData: TWebHTMLDiv
          Left = 0
          Top = 70
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-3 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkWikiData'
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" alt="WikiData Logo" src="img/wikidata_' +
              'icon.png" height=100% width=100%>')
          Role = ''
        end
        object linkScore: TWebHTMLDiv
          Left = 0
          Top = 35
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-2 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkScore'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkTMDb: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-1 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkTMDb'
          ChildOrder = 4
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" alt="TMDb Logo" src="img/tmdb_icon.svg' +
              '" height=100% width=100%>')
          Role = ''
        end
        object linkRottenTomatoes: TWebHTMLDiv
          Left = 0
          Top = 175
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-6 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkRottenTomatoes'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img alt="Rotten Tomatoes Logo" style="padding:2px;" src="img/ro' +
              'ttentomatoes_icon.png" height=100% width=100%>')
          Role = ''
        end
        object linkMetaCritic: TWebHTMLDiv
          Left = 0
          Top = 210
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-7 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkMetaCritic'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img alt="Metacritic Logo" tyle="padding:2px;" src="img/metacrit' +
              'ic_icon.png" height=100% width=100%>')
          Role = ''
        end
        object linkIMDb: TWebHTMLDiv
          Left = 0
          Top = 140
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-5 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkIMDb'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" alt="IMDB Logo" src="img/imdb_icon.png' +
              '" height=100% width=100%>')
          Role = ''
        end
        object linkWeb: TWebHTMLDiv
          Left = 0
          Top = 245
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-8 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkWeb'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img alt="Website" style="padding:2px;" src="img/web_icon.png" h' +
              'eight=100% width=100%>')
          Role = ''
        end
        object linkGoogleImageSearch: TWebHTMLDiv
          Left = 1
          Top = 105
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-4 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkGoogleImageSearch'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:3px;width:100%;height:100%;" alt="Google Log' +
              'o" src="img/google_icon.png">')
          Role = ''
        end
      end
      object divLinkSet5: TWebHTMLDiv
        Left = 144
        Top = 0
        Width = 32
        Height = 277
        ElementClassName = 'order-3 d-flex flex-column gap-1'
        ElementID = 'divLinkSet5'
        ChildOrder = 4
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object linkTwitter: TWebHTMLDiv
          Left = 0
          Top = 175
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-6 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkTwitter'
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" alt="Twitter Logo" src="img/twitter_ic' +
              'on.png" height=100% width=100%>')
          Role = ''
        end
        object linkInstagram: TWebHTMLDiv
          Left = 0
          Top = 140
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-5 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkInstagram'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" src="img/instagram_icon.png" height=10' +
              '0% width=100%>')
          Role = ''
        end
        object linkFacebook: TWebHTMLDiv
          Left = 0
          Top = 105
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-4 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkFacebook'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" alt="Facebook Logo" src="img/facebook_' +
              'icon.png" height=100% width=100%>')
          Role = ''
        end
        object linkModels: TWebHTMLDiv
          Left = 0
          Top = 210
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-7 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkModels'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img alt="Models.com Logo" style="padding:2px;" src="img/models_' +
              'icon.png" height=100% width=100%>')
          Role = ''
        end
        object linkWikipedia: TWebHTMLDiv
          Left = 0
          Top = 70
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-3 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkWikipedia'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<img style="padding:2px;" alt="Wikipedia Logo" src="img/wikipedi' +
              'a_icon.png" height=100% width=100%>')
          Role = ''
        end
        object linkHeight: TWebHTMLDiv
          Left = 0
          Top = 35
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-2 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkHeight'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkCitizenship: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-1 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkCitizenship'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkShare: TWebHTMLDiv
          Left = 0
          Top = 245
          Width = 32
          Height = 32
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-8 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkShare'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<div style="padding:2px 3px;color:var(--bs-gray-200);"><i class=' +
              '"fa-duotone fa-share-all fa-lg"></i></div>')
          Role = ''
        end
      end
      object divLinkSet3: TWebHTMLDiv
        Left = 72
        Top = 1
        Width = 32
        Height = 277
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 0
        ElementClassName = 'order-2 d-flex flex-column gap-1'
        ElementID = 'divLinkSet3'
        ChildOrder = 4
        ElementPosition = epRelative
        ElementFont = efCSS
        Role = ''
        object WebHTMLDiv3: TWebHTMLDiv
          Left = 0
          Top = 175
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-6 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 1
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv6: TWebHTMLDiv
          Left = 0
          Top = 140
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-5 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 2
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv8: TWebHTMLDiv
          Left = -2
          Top = 105
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-4  opacity-25 bg-dark border  border-secondary rounded ove' +
            'rflow-hidden'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv9: TWebHTMLDiv
          Left = 0
          Top = 210
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-7 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv10: TWebHTMLDiv
          Left = 0
          Top = 70
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-3 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 3
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv11: TWebHTMLDiv
          Left = 0
          Top = 35
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-2 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object WebHTMLDiv14: TWebHTMLDiv
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 
            'order-1 opacity-25 bg-dark border  border-secondary rounded over' +
            'flow-hidden'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          Role = ''
        end
        object linkPizza: TWebHTMLDiv
          Left = 1
          Top = 245
          Width = 32
          Height = 32
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          ElementClassName = 'order-8 bg-dark border  border-secondary rounded overflow-hidden'
          ElementID = 'linkPizza'
          ChildOrder = 5
          ElementPosition = epRelative
          ElementFont = efCSS
          HTML.Strings = (
            
              '<a href="https://www.buymeacoffee.com/andrewsimard500" style="te' +
              'xt-decoration:none;" target="_blank" aria-label="Buy Me a Pizza"' +
              '>'
            
              '  <img style="padding:2px;" alt="Pizza" src="img/pizza_promo_ico' +
              'n.png" height=100% width=100%>'
            '</a>')
          Role = ''
        end
      end
    end
    object divPhotoHolder: TWebHTMLDiv
      Left = 217
      Top = 3
      Width = 185
      Height = 277
      ElementClassName = 'order-1'
      ElementID = 'divPhotoHolder'
      ChildOrder = 7
      ElementPosition = epRelative
      ElementFont = efCSS
      Role = ''
      object divPhoto: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 185
        Height = 277
        Cursor = crHandPoint
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 0
        ElementClassName = 'order-1 bg-dark border  border-0 rounded overflow-hidden'
        ElementID = 'divPhoto'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        OnClick = divPhotoClick
      end
      object divProgressSpinner: TWebHTMLDiv
        Left = 53
        Top = 10
        Width = 185
        Height = 185
        ElementClassName = 'bg-none border border-0 pe-none'
        ElementID = 'divProgressSpinner'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 9
        ElementPosition = epIgnore
        ElementFont = efCSS
        HTML.Strings = (
          
            '<div style="width:100%; height:100%; font-size:11em; color:var(-' +
            '-bs-danger); opacity:0.75; text-align: center;"><i class="fa-reg' +
            'ular fa-loader fa-spin"></i></div>')
        Role = ''
      end
      object divPhotoBorder: TWebHTMLDiv
        Left = -1
        Top = 0
        Width = 185
        Height = 277
        ElementClassName = 'rounded border border-secondary pe-none bg-none'
        ElementID = 'divPhotoBorder'
        ChildOrder = 6
        ElementFont = efCSS
        Role = ''
      end
      object divProgress: TWebHTMLDiv
        Left = -3
        Top = 103
        Width = 185
        Height = 63
        ElementClassName = 'bg-danger rounded  opacity-50'
        ElementID = 'divProgress'
        HeightStyle = ssAuto
        WidthStyle = ssAuto
        ChildOrder = 6
        ElementPosition = epIgnore
        ElementFont = efCSS
        Role = ''
      end
    end
  end
  object divBlock: TWebHTMLDiv
    Left = 21
    Top = 352
    Width = 313
    Height = 281
    ElementClassName = 'd-none'
    ElementID = 'divBlock'
    HeightStyle = ssPercent
    WidthStyle = ssPercent
    ChildOrder = 3
    ElementFont = efCSS
    Role = ''
    OnClick = divViewerHolderClick
  end
  object divViewerHolder: TWebHTMLDiv
    Left = 443
    Top = 400
    Width = 478
    Height = 281
    Cursor = crHandPoint
    ElementClassName = 
      'divViewerHolder rounded bg-dark border border-secondary d-none o' +
      'verflow-hidden'
    ElementID = 'divViewerHolder'
    ChildOrder = 3
    ElementFont = efCSS
    HTML.Strings = (
      
        '<div id="divViewer" class="rounded overflow-hidden" style="width' +
        ': 100%; height:100%;"></div>')
    Role = ''
    OnClick = divViewerHolderClick
  end
  object divBlockControls: TWebHTMLDiv
    Left = 340
    Top = 352
    Width = 48
    Height = 336
    ElementClassName = 'd-none flex-column justify-content-center align-items-end'
    ElementID = 'divBlockControls'
    ChildOrder = 6
    ElementPosition = epIgnore
    ElementFont = efCSS
    Role = ''
    object btnBlockClose: TWebButton
      Left = 0
      Top = 288
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-circle-xmark fa-2x text-white opacity-75' +
        '"> </i>'
      ChildOrder = 5
      ElementClassName = 'btn btn-link'
      ElementID = 'btnBlockClose'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = divViewerHolderClick
    end
    object btnBlockZoomReset: TWebButton
      Left = 0
      Top = 240
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-circle-dot fa-2x text-white opacity-75">' +
        ' </i>'
      ChildOrder = 4
      ElementClassName = 'btn btn-link '
      ElementID = 'btnBlockZoomReset'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightPercent = 100.000000000000000000
      TabOrder = 1
      WidthPercent = 100.000000000000000000
      OnClick = btnBlockZoomResetClick
    end
    object btnBlockZoomPlus: TWebButton
      Left = 0
      Top = 144
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-magnifying-glass-plus fa-2x text-white o' +
        'pacity-75"> </i>'
      ChildOrder = 2
      ElementClassName = 'btn btn-link'
      ElementID = 'btnBlockZoomPlus'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightPercent = 100.000000000000000000
      TabOrder = 2
      WidthPercent = 100.000000000000000000
      OnClick = btnBlockZoomPlusClick
    end
    object btnBlockZoomMinus: TWebButton
      Left = 0
      Top = 192
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-magnifying-glass-minus fa-2x text-white ' +
        'opacity-75"> </i>'
      ChildOrder = 3
      ElementClassName = 'btn btn-link'
      ElementID = 'btnBlockZoomMinus'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightPercent = 100.000000000000000000
      TabOrder = 3
      WidthPercent = 100.000000000000000000
      OnClick = btnBlockZoomMinusClick
    end
    object btnBlockPrevious: TWebButton
      Left = 0
      Top = 48
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-circle-arrow-up fa-2x text-white opacity' +
        '-75"> </i>'
      ElementClassName = 'btn btn-link'
      ElementID = 'btnBlockPrevious'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      TabOrder = 4
      WidthPercent = 100.000000000000000000
      OnClick = btnBlockPreviousClick
    end
    object btnBlockNext: TWebButton
      Left = 0
      Top = 96
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-circle-arrow-down fa-2x text-white opaci' +
        'ty-75"> </i>'
      ChildOrder = 1
      ElementClassName = 'btn btn-link'
      ElementID = 'btnBlockNext'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      TabOrder = 5
      WidthPercent = 100.000000000000000000
      OnClick = btnBlockNextClick
    end
    object btnBlockSelect: TWebButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Cursor = crHandPoint
      Align = alBottom
      Caption = 
        '<i class="fa-duotone fa-circle-star fa-2x text-white opacity-75"' +
        '> </i>'
      ElementClassName = 'btn btn-link'
      ElementID = 'btnBlockPrevious'
      ElementFont = efCSS
      ElementPosition = epRelative
      HeightStyle = ssAuto
      HeightPercent = 100.000000000000000000
      TabOrder = 4
      Visible = False
      WidthStyle = ssAuto
      WidthPercent = 100.000000000000000000
      OnClick = btnBlockSelectClick
    end
  end
  object divBlockData: TWebHTMLDiv
    Left = 394
    Top = 352
    Width = 75
    Height = 144
    ElementClassName = 'd-none flex-column justify-content-center '
    ElementID = 'divBlockData'
    ChildOrder = 6
    ElementPosition = epIgnore
    ElementFont = efCSS
    Role = ''
    object btnBlockCount: TWebButton
      Left = 0
      Top = 0
      Width = 80
      Height = 44
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = '1'
      ChildOrder = 1
      ElementClassName = 'fs-4 btn btn-link text-decoration-none text-white opacity-75'
      ElementID = 'btnBlockCount'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      TabOrder = 4
      WidthPercent = 100.000000000000000000
      OnClick = divViewerHolderClick
    end
    object btnBlockLine: TWebButton
      Left = 0
      Top = 22
      Width = 80
      Height = 24
      Caption = 
        '<i class="fa-duotone fa-horizontal-rule fa-2x text-white opacity' +
        '-75"> </i>'
      ElementClassName = 'btn btn-link pe-none mb-3'
      ElementID = 'btnBlockLine'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      TabOrder = 5
      WidthPercent = 100.000000000000000000
      OnClick = divViewerHolderClick
    end
    object btnBlockTotal: TWebButton
      Left = 0
      Top = 40
      Width = 80
      Height = 44
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = '1'
      ChildOrder = 2
      ElementClassName = 'fs-4 btn btn-link text-decoration-none text-white opacity-75'
      ElementID = 'btnBlockTotal'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      TabOrder = 2
      WidthPercent = 100.000000000000000000
      OnClick = divViewerHolderClick
    end
  end
  object tmrFocus: TWebTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrFocusTimer
    Left = 272
    Top = 12
  end
  object tmrStart: TWebTimer
    Enabled = False
    Interval = 10
    OnTimer = tmrStartTimer
    Left = 272
    Top = 68
  end
  object tmrSearch: TWebTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrSearchTimer
    Left = 268
    Top = 124
  end
  object tmrImageCheck: TWebTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrImageCheckTimer
    Left = 268
    Top = 188
  end
  object WebHttpRequest1: TWebHttpRequest
    Headers.Strings = (
      'Cache-Control=no-cache, no-store, must-revalidate')
    Left = 523
    Top = 310
  end
end
