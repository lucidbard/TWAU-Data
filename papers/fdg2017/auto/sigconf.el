(TeX-add-style-hook "sigconf"
 (lambda ()
    (LaTeX-add-bibliographies
     "sigproc")
    (TeX-run-style-hooks
     "epstopdf"
     "booktabs"
     "latex2e"
     "acmart10"
     "acmart"
     "samplebody-conf")))

