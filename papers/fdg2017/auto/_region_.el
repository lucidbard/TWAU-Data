(TeX-add-style-hook "_region_"
 (lambda ()
    (LaTeX-add-bibliographies
     "../../../library")
    (TeX-run-style-hooks
     "epstopdf"
     "booktabs"
     "latex2e"
     "acmart10"
     "acmart"
     "sigconf"
     "fdg_poster")))

