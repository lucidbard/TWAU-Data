(TeX-add-style-hook "template"
 (lambda ()
    (LaTeX-add-bibliographies
     "./references")
    (TeX-add-symbols
     "year")
    (TeX-run-style-hooks
     "graphicx"
     "url"
     "courier"
     "helvet"
     "times"
     "aaai17"
     "latex2e"
     "art10"
     "article"
     "letterpaper"
     "paper")))

