# grant
A LaTeX class for writing grant proposals

Example usage:

    \documentclass[supercite]{grant}
    
    \usepackage{pdfpages}
    
    \bibliography{/path/to/bibfile}

    \title{Title of project}
    \subtitle{Optional subtitle here}

    \begin{document}
    
    \begin{abstract}
    Blah blah.
    \end{abstract}
    
    \section{Context}
    
    Blah blah.
    
    \section{Track record}
    
    Blah blah.
    
    \section{Work plan}
    
    The project will be divided into two work-packages.
    
    \subsubsection*{\WP1---}
    
    Blah blah.
    
    \paragraph{Deliverable:} blah.
    
    \paragraph{Risks:} blah.
    
    \subsubsection*{\WP2---}
    
    Blah blah.
    
    \paragraph{Deliverable:} blah.
    
    \paragraph{Risks:} blah.
    
    \section{Track record}
    
    Blah blah.
    
    \clearpage
    
    \printbibliography
    
    \includepdf[pages={-}]{support_letter.pdf}
    
    \end{document}

Options:

- `[supercite]` typesets citations as footnotes (i.e., superscript).

- `[tinybib]` typesets the bibliography in `\tiny` size (the default is `\small`).
