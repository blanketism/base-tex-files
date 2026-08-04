\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}

% Options
\newif\if@notesdraft
\@notesdraftfalse

\DeclareOption{draft}{%
    \@notesdrafttrue
    \PassOptionsToClass{draft}{extarticle}%
}
\ProcessOptions\relax

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
\RequirePackage{setspace}
\setstretch{0.93}

% Loadings

\RequirePackage{widebar-notmine}
\RequirePackage{base}
\RequirePackage{newpxtext}
\RequirePackage{newpxmath}
\RequirePackage[T1]{fontenc}
\usetikzlibrary{arrows.meta, calc, positioning, shadows, shapes.geometric}

\renewcommand{\bar}[1]{\widebar{#1}\hspace{0.75pt}{}}
\renewcommand{\pmod}[1]{\mkern4mu(\operatorname{mod}\mkern3mu#1)}

\definecolor{mypagecolor}{HTML}{FAF7ED}
\pagecolor{mypagecolor}
\RequirePackage[nameinlink,capitalise]{cleveref}

\RequirePackage{notesenvs}
\renewcommand{\qedsymbol}{\small$\square$}

% Spacing Settings
\nointerlineskip
% Table of Contents Settings
\renewcommand{\@pnumwidth}{2.7em}
\renewcommand{\@tocrmarg}{3.7em}

% General Spacing Settings
\setlength{\parindent}{1.5em}
\setlength{\jot}{0.25ex}

% Page Header Settings
\setlength{\headheight}{15pt}
\addtolength{\topmargin}{-3.0pt}

% Redefining base.sty Commands

\renewcommand{\rightimp}{{\noindent\raisebox{-1pt}{\large\ding{225}}}~}
\renewcommand{\leftimp}{{\noindent\rotatebox[origin=c]{180}{\large\ding{225}}}~}

% Draft Mode
\if@notesdraft
    \nofiles
    \tcbstartdraftmode
\fi