# ActoriousClient
This is the main web client app for the Actorious project, which is currently published live as the [www.actorious.com](https://www.actorious.com) website. It has been developed using Delphi and [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) along with many other very capable JavaScript libraries. In particular, [Tabulator](https://tabulator.info/). The Actorious project started out as a [TMS Software blog post](https://www.tmssoftware.com/site/blog.asp?post=949), with its own associated GitHub repository, [ActorInfo](https://github.com/500Foods/TMS-WEB-Core-ActorInfo).

[![Screenshot_20231017_141418](https://github.com/500Foods/ActoriousClient/assets/41052272/9b2d2191-3f14-4cb4-b9e3-ae14e837270c)](https://www.actorious.com/)

The Actorious project makes use of data from [The Movie Database](https://www.themoviedb.org/?language=en-CA) and [Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page) via their REST APIs for all of its data. TMDb's identifiers are used to combine its data with similar data from Wikidata filling in the gaps. In particular, Wikidata is used to retrieve information on birthdays and other date-related information that can't be as easily searched using the TMDb API.

## Repository Information
[![Count Lines of Code](https://github.com/500Foods/ActoriousClient/actions/workflows/main.yml/badge.svg)](https://github.com/500Foods/ActoriousClient/actions/workflows/main.yml)
```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Pascal                           2            822           2092           2881
Delphi Form                      1             34              0           2370
SVG                              7              0              0           1758
JSON                             2              0              0            930
CSS                              1             86            177            487
HTML                             2             70              7            455
JavaScript                       1              3              0             25
YAML                             1              4              8             13
XML                              1              0              0             12
Markdown                         1              0              0              2
-------------------------------------------------------------------------------
SUM:                            19           1019           2284           8933
-------------------------------------------------------------------------------
```

## Sponsor / Donate / Support
If you find this work interesting, helpful, or valuable, or that it has saved you time, money, or both, please consider directly supporting these efforts financially via [GitHub Sponsors](https://github.com/sponsors/500Foods) or donating via [Buy Me a Pizza](https://www.buymeacoffee.com/andrewsimard500). Also, check out these other [GitHub Repositories](https://github.com/500Foods?tab=repositories&q=&sort=stargazers) that may interest you.
