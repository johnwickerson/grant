\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grant}[2018/09/18 Class for writing grant applications]
\LoadClass[11pt, twocolumn]{article}

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
  \AtBeginBibliography{\footnotesize}
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

\renewcommand\maketitle{%
\twocolumn[\centerline{\bf\Large \@title}%
\ifx\@subtitle\empty\else \medskip\centerline{\it\Large \@subtitle}\fi
\bigskip]
}
  
\endinput