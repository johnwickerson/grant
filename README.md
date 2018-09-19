# grant
A LaTeX class for writing grant proposals

Example usage:

    \documentclass[supercite]{grant}
    
    \usepackage{pdfpages}
    
    \bibliography{/path/to/bibfile}
    
    \begin{document}
    
    \title{Title of project}
    
    \begin{multicols}{2}
    
    \begin{abstract}
    Blah blah.
    \end{abstract}
    
    \section{Context}
    
    Blah blah.
    
    \section{Track record}
    
    Blah blah.
    
    \section{Work plan}
    
    The project will be divided into two work-packages.
    
    \paragraph{\WP1---}
    
    Blah blah.
    
    \subparagraph{Deliverable:} blah.
    
    \subparagraph{Risks:} blah.
    
    \paragraph{\WP2---}
    
    Blah blah.
    
    \subparagraph{Deliverable:} blah.
    
    \subparagraph{Risks:} blah.
    
    \section{Track record}
    
    Blah blah.
    
    \clearpage
    
    \printbibliography
    
    \end{multicols}
    
    \includepdf[pages={-}]{support_letter.pdf}
    
    \end{document}

Options:

- `[supercite]` typesets citations as footnotes (i.e., superscript).

- `[tinybib]` typesets the bibliography in `\tiny` size (the default is `\small`).
