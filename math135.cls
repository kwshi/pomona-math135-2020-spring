\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math135}[2020/01/21 Math 135: Functions of a Complex Variable]

\LoadClass{article}
\PassOptionsToClass{article}{10pt}

\RequirePackage{geometry}
\geometry{
  left=1.25in,
  right=1.25in,
  top=.25in,
  bottom=.5in,
  marginparwidth=1in,
  marginparsep=.125in,
  includeheadfoot,
}

\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\fancypagestyle{homework}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \chead{\textbf{\thetitle}\\Math 135: Functions of a Complex Variable}
  \lhead{\leavevmode{\footnotesize\thedate}\\}
  \rhead{\leavevmode{\footnotesize\theauthor}\\}
  \cfoot{\footnotesize\thepage{} OF \pageref{LastPage}}
}
\pagestyle{homework}


\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage[ascii]{inputenc}

\RequirePackage{lmodern}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{thmtools}
%\RequirePackage{mathrsfs}
\RequirePackage{wasysym}
\RequirePackage{esint}
\RequirePackage{textcomp}

\RequirePackage{isomath}
\RequirePackage{centernot}
\RequirePackage{cancel}

\RequirePackage{parskip}

\RequirePackage{hyperref}

\RequirePackage{caption}
\captionsetup{width=\linewidth}

\RequirePackage{mdframed}

\RequirePackage{marginnote}
\newcommand{\comment}[1]{\marginpar{\color{gray}\scriptsize #1}}

\declaretheoremstyle[
  spaceabove=\parskip,
]{exercise}

\declaretheorem[style=exercise]{exercise}

\mdfdefinestyle{solution}{
  skipabove=\parskip,
  linecolor=gray,
}
\newmdenv[style=solution]{solution}

\mdfdefinestyle{book}{
  skipabove=\parskip,
  linecolor=gray,
  hidealllines=true,
  leftline=true,
  linewidth=.25em,
  backgroundcolor=lightgray!25,
}
\newmdenv[style=book]{book}

\mdfdefinestyle{aside}{
  skipabove=\parskip,
  linecolor=gray,
  hidealllines=true,
  leftline=true,
  linewidth=.25em,
}
\renewmdenv[style=aside]{aside}

\RequirePackage[inline]{enumitem}
\newlist{problems}{enumerate}{3}
\setlist[enumerate, 1]{label=(\alph*)}
\setlist[problems, 1]{label=(\alph*)}
\setlist[problems, 2]{label=(\roman*)}

\makeatletter
\def\imp#1{\expandafter\@imp\csname c@#1\endcsname}
\def\@imp#1{\ifcase#1\or \(\implies\)\or\(\impliedby\)\fi}

\def\sset#1{\expandafter\@sset\csname c@#1\endcsname}
\def\@sset#1{\ifcase#1\or \(\subseteq\)\or\(\supseteq\)\fi}

\makeatother
\AddEnumerateCounter{\imp}{\@imp}{\(\implies\)}
\AddEnumerateCounter{\sset}{\@sset}{\(\subseteq\)}

\newlist{ifflist}{enumerate}{1}
\setlist[ifflist]{label=\imp*}

\newlist{seteqlist}{enumerate}{1}
\setlist[seteqlist]{label=\sset*}

\newcommand{\music}[1]{%
  \ifcase\number\value{#1}%
  \or\eighthnote%
  \or\twonotes%
  \or\quarternote%
  \or\halfnote%
  \or\fullnote%
  \fi%
}

%
\newcommand{\QQ}{\mathbb Q}
\newcommand{\DD}{\mathbb D}
\newcommand{\UU}{\mathbb U}
\newcommand{\RR}{\mathbb R}
\newcommand{\NN}{\mathbb N}
\newcommand{\FF}{\mathbb F}
\newcommand{\CC}{\mathbb C}
\newcommand{\TT}{\mathbb T}
\newcommand{\ZZ}{\mathbb Z}

\newcommand{\dif}{\mathop{}\!\mathrm d}
\newcommand{\pdif}{\mathop{}\!\partial}
\newcommand{\drv}[3][]{\frac{\dif^{#1} #2}{\dif #3^{#1}}}
\newcommand{\pdrv}[3][]{\frac{\pdif^{#1} #2}{\pdif #3^{#1}}}

\let\Re\relax
\let\Im\relax
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\Re}{Re}
\DeclareMathOperator{\Im}{Im}

\DeclarePairedDelimiter{\cbr}{\{}{\}}
\DeclarePairedDelimiter{\set}{\{}{\}}
\DeclarePairedDelimiter{\sbr}{[}{]}
\DeclarePairedDelimiter{\abr}{\langle}{\rangle}
\DeclarePairedDelimiter{\inner}{\langle}{\rangle}
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}
\DeclarePairedDelimiter{\prn}{(}{)}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}

% diagram presets
\RequirePackage{tikz}
\RequirePackage{pgfplots}

\pgfplotsset{compat=1.16}
\usepgfplotslibrary{patchplots}

\usetikzlibrary{arrows.meta}
\usetikzlibrary{angles}
\usetikzlibrary{3d}
\usetikzlibrary{quotes}
\usetikzlibrary{calc}
\usetikzlibrary{positioning}

\tikzset{
  angle eccentricity=3/2,
  vector/.style={
    thick,
    arrows=-{Stealth[length=1em/2]},
  },
  dot/.style={
    circle,
    fill,
    inner sep=0pt,
    minimum size=1em/4,
  },
  annotation/.style={
    opacity=1/2,
  },
  guide/.style={
    annotation,
    densely dotted,
  },
  measure/.style={
    annotation,
    arrows=<->,
  },
}