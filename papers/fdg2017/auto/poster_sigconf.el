(TeX-add-style-hook "poster_sigconf"
 (lambda ()
    (LaTeX-add-bibliographies
     "sigproc")
    (TeX-run-style-hooks
     "booktabs"
     "latex2e"
     "acmart10"
     "acmart"
     "sigconf"
     "posterbody-conf")))

