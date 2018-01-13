(TeX-add-style-hook "proceedings"
 (lambda ()
    (LaTeX-add-bibliographies
     "references")
    (LaTeX-add-labels
     "fig:figure1"
     "tab:table1"
     "fig:figure2")
    (TeX-add-symbols
     "plaintitle"
     "plainauthor"
     "emptyauthor"
     "plainkeywords"
     "plaingeneralterms"
     "UrlFont"
     "pprw"
     "pprh")
    (TeX-run-style-hooks
     "todonotes"
     "ccicons"
     "microtype"
     "textcomp"
     "booktabs"
     "color"
     "hyperref"
     "pdftex"
     "mathptmx"
     "txfonts"
     "fontenc"
     "T1"
     "graphics"
     "balance"
     "latex2e"
     "sigchi10"
     "sigchi")))

