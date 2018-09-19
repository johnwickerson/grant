\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grant}[2018/09/18 Class for writing grant applications]
\LoadClass[11pt]{article}

\newif\if@tinybib\@tinybibfalse
\DeclareOption{tinybib}{\@tinybibtrue}

\newif\if@supercite\@supercitefalse
\DeclareOption{supercite}{\@supercitetrue}

\ProcessOptions\relax

\RequirePackage[margin=20mm]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{url}
\RequirePackage{xcolor}
\RequirePackage{booktabs}
\RequirePackage{multicol}

\RequirePackage{soul} % strikeout and underlining
\setuldepth{a}

\RequirePackage{framed}
\setlength\FrameSep{1mm}

\renewenvironment{abstract}[1][Summary]{%
\begin{framed}
\paragraph{#1---}
}{
\end{framed}
}

\RequirePackage{enumitem}
\setitemize{itemsep=0em, leftmargin=*, topsep=0em}

\RequirePackage{helvet}
\renewcommand\familydefault{\sfdefault}

\RequirePackage[maxnames=3, sortcites]{biblatex}
\if@tinybib
  \AtBeginBibliography{\tiny}
\else
  \AtBeginBibliography{\small}
\fi

\setlength\bibitemsep{0pt}
\let\oldcite\cite
\if@supercite
  \renewcommand*\cite[1]{\textsuperscript{\textcolor{blue!80!black}{\oldcite{#1}}}}
\else
  \renewcommand*\cite[1]{\textcolor{blue!80!black}{\oldcite{#1}}}
\fi

\RequirePackage{titlesec}
\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.2\baselineskip}
\titlespacing*{\paragraph}{\parindent}{0.2\baselineskip}{0.2\baselineskip}
\titlespacing*{\subparagraph}{0pt}{0.2\baselineskip}{0.2\baselineskip}
\titleformat*{\section}{\large\bfseries\color{green!60!black}}
\titleformat*{\paragraph}{\normalsize\bfseries\itshape\color{green!40!black}}
\titleformat*{\subparagraph}{\normalsize\itshape\color{green!40!black}}

\renewcommand\title[1]{{\hfill\bf\Large #1\hfill}}

\newcommand\WP[1]{\textbf{WP#1}}

\endinput