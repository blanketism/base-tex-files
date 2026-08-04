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
\RequirePackage{setspace}
\setstretch{0.93}

% Loadings

\RequirePackage{base}
\RequirePackage{widebar-notmine}
\usetikzlibrary{arrows.meta, calc, positioning, shadows, shapes.geometric}

\RequirePackage{stix2}
\RequirePackage[T1]{fontenc}
\renewcommand{\phi}{\varphi}
\renewcommand{\pmod}[1]{\mkern4mu(\operatorname{mod}\mkern3mu#1)}

\definecolor{mypagecolor}{HTML}{FAF7ED}
\pagecolor{mypagecolor}
\RequirePackage[nameinlink,capitalise]{cleveref}

\RequirePackage{notesenvs}
\renewcommand{\qedsymbol}{\small$\square$}

% Spacing Settings

\setlist{listparindent=\parindent, parsep = 0pt, itemsep = 0pt, topsep = 0pt, labelindent = 1em, leftmargin = 2.5em, labelsep = 0.25em}

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