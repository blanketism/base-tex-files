\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}

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

% Loadings

\RequirePackage{base}
\pagecolor{CadetBlue!15}
\RequirePackage[nameinlink]{cleveref}

\RequirePackage[proportional,scaled=1.064]{erewhon}
\RequirePackage[erewhon,vvarbb,bigdelims]{newtxmath}
\RequirePackage[T1]{fontenc}
\renewcommand*\oldstylenums[1]{\textosf{#1}}

\RequirePackage{notesenvs}

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