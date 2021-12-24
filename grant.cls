\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grant}[2018/09/18 Class for writing grant applications]

\newif\if@biggermargins\@biggermarginsfalse
\DeclareOption{biggermargins}{\@biggermarginstrue}

\newif\if@onecolumn\@onecolumnfalse
\DeclareOption{onecolumn}{\@onecolumntrue}

\newif\if@tinybib\@tinybibfalse
\DeclareOption{tinybib}{\@tinybibtrue}

\newif\if@normalbib\@normalbibfalse
\DeclareOption{normalbib}{\@normalbibtrue}

\newif\if@supercite\@supercitefalse
\DeclareOption{supercite}{\@supercitetrue}

\ProcessOptions\relax

\LoadClass[11pt]{article}

\if@biggermargins
  \RequirePackage[margin=1in]{geometry}
\else
  \RequirePackage[margin=20mm]{geometry}
\fi

\RequirePackage[T1]{fontenc}
\RequirePackage{url}
\RequirePackage[table]{xcolor}
\RequirePackage{booktabs}
%\RequirePackage{multicol}
\RequirePackage{caption}

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
\setenumerate{itemsep=0em, leftmargin=*, topsep=0em, parsep=0em}

\RequirePackage{helvet}
\renewcommand\familydefault{\sfdefault}

\RequirePackage[maxnames=6, sortcites, style=numeric-comp, backend=bibtex]{biblatex}
\if@tinybib
  \AtBeginBibliography{\tiny}
\else
  \if@normalbib
    \AtBeginBibliography{\normalsize}
  \else
    \AtBeginBibliography{\footnotesize}
  \fi  
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

\newcommand\WP[1]{\textbf{WP#1}}

% Reduce spacing above/below figures {
\setlength{\floatsep}{16pt plus 4pt minus 2pt}
\setlength{\textfloatsep}{16pt plus 4pt minus 3pt}
% }

\newenvironment{Figure}{%
  \begingroup
    \OuterFrameSep=0em
    \begin{figure}%
      \begin{framed}%
}{%
      \end{framed}%
    \end{figure}%
  \endgroup%
}

\def\@subtitle{}
\def\subtitle#1{\gdef\@subtitle{#1}}

\newcommand\titleblock{
\centerline{\bf\Large \@title}%
\ifx\@subtitle\empty\else \medskip\centerline{\it\Large \@subtitle}\fi
\bigskip}

\renewcommand\maketitle{%
\if@onecolumn
  \titleblock
\else
  \twocolumn[\titleblock]
\fi}

\newcommand\keywords[1]{\noindent\textbf{Keywords:~}#1}
  
\endinput