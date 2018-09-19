\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grant}[2018/09/18 Class for writing grant applications]

\LoadClass[11pt]{article}

\RequirePackage[margin=20mm]{geometry}
\RequirePackage[T1]{fontenc}

\RequirePackage{url}

\RequirePackage{enumitem}
\setitemize{itemsep=0em, leftmargin=*, topsep=0em}

\RequirePackage{helvet}
\renewcommand\familydefault{\sfdefault}

\RequirePackage[maxnames=3, sortcites]{biblatex}

\AtBeginBibliography{%
\tiny
}
\setlength\bibitemsep{0pt}
\let\oldcite\cite
\renewcommand*\cite[1]{\textcolor{blue!80!black}{\oldcite{#1}}}


\RequirePackage{titlesec}
\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.2\baselineskip}
\titlespacing*{\paragraph}{\parindent}{0.2\baselineskip}{0.2\baselineskip}
\titlespacing*{\subparagraph}{0pt}{0.2\baselineskip}{0.2\baselineskip}
\titleformat*{\section}{\large\bfseries\color{green!60!black}}
\titleformat*{\paragraph}{\normalsize\bfseries\itshape\color{green!40!black}}
\titleformat*{\subparagraph}{\normalsize\itshape\color{green!40!black}}

\renewcommand\title[1]{{\hfill\bf\Large #1\hfill}}

\endinput