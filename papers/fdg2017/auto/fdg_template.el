(TeX-add-style-hook "fdg_template"
 (lambda ()
    (LaTeX-add-bibliographies
     "references")
    (TeX-run-style-hooks
     "epstopdf"
     "booktabs"
     "latex2e"
     "acmart10"
     "acmart"
     "sigconf"
     "fdg_poster")))

