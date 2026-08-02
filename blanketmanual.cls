\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{blanketmanual}

% Options
\newif\if@blanketdraft
\@blanketdraftfalse

\DeclareOption{axler}{\def\manual@theme{axlerstyle}}
\DeclareOption{dummit}{\def\manual@theme{dummitstyle}}
\DeclareOption{draft}{%
    \@blanketdrafttrue
    \PassOptionsToClass{draft}{extarticle}%
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
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
\setlength{\parindent}{1.5em}
\setlength{\jot}{0.25ex}

% Page Header Settings
\setlength{\headheight}{15pt}
\addtolength{\topmargin}{-3.0pt}

% Loadings

\RequirePackage{base}
\RequirePackage{\manual@theme}
\RequirePackage{sharedstyles}

% Draft Mode
\if@blanketdraft
    \nofiles
    \tcbstartdraftmode
\fi