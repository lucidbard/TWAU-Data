(TeX-add-style-hook "final"
 (lambda ()
    (TeX-add-symbols
     '("showeprint" ["argument"] 1)
     '("natexlab" 1)
     '("bibinfo" 2)
     '("bibfield" 2))
    (TeX-run-style-hooks
     "epstopdf"
     "booktabs"
     "latex2e"
     "acmart10"
     "acmart"
     "sigconf"
     "fdg_paper")))

