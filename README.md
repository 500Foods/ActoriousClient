# ActoriousClient

Visit: https://www.actorious.com<br/>
On 𝕏: [@actorious_today](https://twitter.com/actorious_today)

This is the main web client app for the Actorious project, which is currently published live as the [www.actorious.com](https://www.actorious.com) website. It has been developed using Delphi and [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) along with many other very capable JavaScript libraries. In particular, [Tabulator](https://tabulator.info/). The Actorious project started out as a [TMS Software blog post](https://www.tmssoftware.com/site/blog.asp?post=949), with its own associated GitHub repository, [ActorInfo](https://github.com/500Foods/TMS-WEB-Core-ActorInfo).

![Screenshot_20231017_141418](https://github.com/500Foods/ActoriousClient/assets/41052272/9b2d2191-3f14-4cb4-b9e3-ae14e837270c)
[www.actorious.com](https://www.actorious.com/)

The Actorious project makes use of data from [The Movie Database](https://www.themoviedb.org/?language=en-CA) and [Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page) via their REST APIs for all of its data. TMDb's identifiers are used to combine its data with similar data from Wikidata filling in the gaps. In particular, Wikidata is used to retrieve information on birthdays and other date-related information that can't be as easily searched using the TMDb API.

## Key Dependencies
As with any modern web application, other JavaScript libraries/dependencies have been used in this project. Most of the time, this is handled via a CDN link (usually JSDelivr) in the Project.html file. In some cases, for performance or other reasons, they may be included directly.
- [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) - This is a TMS WEB Core project, after all
- [Bootstrap](https://getbootstrap.com/) - No introduction needed
- [Tabulator](https://www.tabulator.info) - Fantastic pure JavaScript web data tables
- [Font Awesome](https://www.fontawesome.com) - The very best icons
- [SwiperJS](https://swiperjs.com) - Currently works well with v10
- [FlatPickr](https://flatpickr.js.org) - Main UI date pickers
- [Vanilla Lazy Load](https://github.com/verlok/vanilla-lazyload) - So placeholders can be used
- [Luxon](https://moment.github.io/luxon/#/) - For handling date/time conversions
- [FlagPack](https://github.com/jackiboy/flagpack) - For displaying citizenship flags
- [PanZoom](https://github.com/timmywil/panzoom) - Used when viewing photos/posters/backgrounds
- [HackTimer](https://github.com/turuslan/HackTimer) - Bypasses normal JavaScript timer behaviour

## Additional Notes
While this project is currently under active development, feel free to give it a try and post any issues you encounter.  Or start a discussion if you would like to help steer the project in a particular direction.  Early days yet, so a good time to have your voice heard.  As the project unfolds, additional resources will be made available, including platform binaries, more documentation, demos, and so on.
## Repository Information
[![Count Lines of Code](https://github.com/500Foods/ActoriousClient/actions/workflows/main.yml/badge.svg)](https://github.com/500Foods/ActoriousClient/actions/workflows/main.yml)
<!--CLOC-START -->
```
Last updated at 2023-12-11 02:55:34 UTC
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Pascal                           2            906           2681           2814
Delphi Form                      1             40              0           2268
SVG                              7              0              0           1758
JSON                             2              0              0            932
CSS                              1             93            190            544
HTML                             2             74             10            488
Markdown                         1              7              2             47
YAML                             2              8             13             35
JavaScript                       1              2              0             33
XML                              1              0              0             12
Text                             1              0              0              2
-------------------------------------------------------------------------------
SUM:                            21           1130           2896           8933
-------------------------------------------------------------------------------
331 Files (without source code) were skipped
```
<!--CLOC-END-->

## Sponsor / Donate / Support
If you find this work interesting, helpful, or valuable, or that it has saved you time, money, or both, please consider directly supporting these efforts financially via [GitHub Sponsors](https://github.com/sponsors/500Foods) or donating via [Buy Me a Pizza](https://www.buymeacoffee.com/andrewsimard500). Also, check out these other [GitHub Repositories](https://github.com/500Foods?tab=repositories&q=&sort=stargazers) that may interest you.
