(TeX-add-style-hook "Murray-CHI2018-FocusOnStory"
 (lambda ()
    (LaTeX-add-bibliographies
     "references")
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
     "sigchi"
     "paper")))

