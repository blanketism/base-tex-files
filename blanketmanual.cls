\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{blanketmanual}[2024/06/10 Blanket Manual Class]

% Options
\DeclareOption{axler}{\def\manual@theme{axlerstyle}}
\DeclareOption{dummit}{\def\manual@theme{dummitstyle}}
\ProcessOptions\relax

\ifdefined\manual@theme\else
    \ClassError{blanketmanual}{No theme specified.}{Please specify a theme using the 'axler' or 'dummit' option.}
\fi

% Page Settings

\LoadClass[11pt, twoside]{extarticle}
\raggedbottom
\RequirePackage[margin = 1in]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE]{\rightmark}
\fancyhead[RO]{\leftmark}
\fancyfoot[C]{\thepage}

% Spacing Settings

% Table of Contents Settings
\renewcommand{\@pnumwidth}{2.7em}
\renewcommand{\@tocrmarg}{3.7em}

% General Spacing Settings
\setlength{\parindent}{0.75cm}
\setlength{\jot}{0.25ex}

% Page Header Settings
\setlength{\headheight}{15pt}
\addtolength{\topmargin}{-3.0pt}

% Loadings

\RequirePackage{blanketbase}
\RequirePackage{\manual@theme}
\RequirePackage{sharedstyles}