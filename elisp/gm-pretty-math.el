(require 'cl-lib)
(require 'dash)

(define-minor-mode pretty-math-mode
  "Minor mode for math"
  :init-value nil
  (when pretty-math-mode
      (pretty-math)))

(defun pretty-math (&optional reverse)
    (substitute-patterns-with-unicode-symbol
     (append
      (--map (gm/math-regexp-spaced-after (car it) (cadr it)) gm/spaced-after)
      (-flatten-n 1 (--map (gm/math-regexp-spaced (car it) (cadr it)) gm/math-spaced))
      (-flatten-n 1 (--map (gm/math-regexp-unspaced (car it) (cadr it)) gm/math-unspaced))
      (-flatten-n 1 (--map (gm/math-regexp-commands (car it) (nth 1 it) (nth 2 it)) gm/math-commands)))
     reverse))

(defun substitute-pattern-with-unicode-symbol (pattern symbol &optional reverse)
  "Add a font lock hook to replace the matched part of PATTERN with the Unicode
symbol SYMBOL.
Symbol can be the symbol directly, no lookup needed."
  (interactive)
  (let ((func (if reverse
                  'font-lock-remove-keywords
                'font-lock-add-keywords)))
    (funcall func nil `((,pattern
                         (0 (progn
                              (compose-region (match-beginning 1) (match-end 1)
                                              ,symbol
                                              'decompose-region)
                              nil)))))))

(defun substitute-patterns-with-unicode-symbol (patterns &optional reverse)
  "Mapping over PATTERNS, calling SUBSTITUTE-PATTERN-WITH-UNICODE for each of the patterns."
  (mapcar (lambda (x)
            (substitute-pattern-with-unicode-symbol (car x) (cdr x) reverse))
          patterns))

(defvar gm/math-greek-upper
  '(("Gamma" "Γ")
    ("Delta" "Δ")
    ("Epsilon" "Ε")
    ("Theta" "Θ")
    ("Lambda" "Λ")
    ("Xi" "Ξ")
    ("Pi" "Π")
    ("Sigma" "Σ")
    ("Upsilon" "Υ")
    ("Phi" "Φ")
    ("Psi" "Ψ")
    ("Omega" "Ω")))

(defvar gm/math-greek-lower
  '(("alpha" "α")
    ("beta" "β")
    ("gamma" "γ")
    ("delta" "δ")
    ("epsilon" "ε")
    ("zeta" "ζ")
    ("eta" "η")
    ("theta" "θ")
    ("iota" "ι")
    ("kappa" "κ")
    ("lambda" "λ")
    ("mu" "μ")
    ("nu" "ν")
    ("xi" "ξ")
    ("omicron" "ο")
    ("pi" "π")
    ("rho" "ρ")
    ("sigma" "σ")
    ("tau" "τ")
    ("upsilon" "υ")
    ("phi" "ϕ")
    ("chi" "χ")
    ("psi" "ψ")
    ("omega" "ω")
    ("varphi" "φ")
    ("vartheta" "ϑ")
    ("varpi" "ϖ")
    ("varrho" "ϱ")
    ("varsigma" "ς")))

(defvar gm/math-vectors
  (append
   (cl-loop for i from 65 to 90
            collect (list (concat "vec " (char-to-string i))
                          (char-to-string (+ i 120211))))
   (cl-loop for i from 97 to 122
            collect (list (concat "vec " (char-to-string i))
                          (char-to-string (+ i 120205))))))

(defvar gm/math-letters
  (append
   gm/math-greek-lower
   gm/math-greek-upper
   gm/math-vectors
   '(("aleph" "ℵ")
     ("hbar" "ℏ")
     ("ell" "𝓁")
     ("wp" "℘")
     ("Re" "ℜ")
     ("Im" "ℑ")
     ("partial" "∂")
     ("N" "𝗡")
     ("Z" "𝗭")
     ("Q" "𝗤")
     ("R" "𝗥")
     ("C" "𝗖")
     ("F" "𝗙"))))

(defvar gm/math-arrows
  '(("rightarrow" "→")        ; Directions
    ("leftarrow" "←")
    ("leftrightarrow" "↔")
    ("Rightarrow" "⇒")
    ("Leftarrow" "⇐")
    ("Leftrightarrow" "⇔")
    ("uparrow" "↑")
    ("downarrow" "↓")
    ("updownarrow" "↕")
    ("Uparrow" "⇑")
    ("Downarrow" "⇓")
    ("Updownarrow" "⇕")
    ("nearrow" "↗")
    ("searrow" "↘")
    ("nwarrow" "↖")
    ("swarrow" "↙")
    ("Longrightarrow" "⟹")  ; Long arrows
    ("longrightarrow" "⟶")
    ("longleftarrow" "⟵")
    ("Longleftarrow" "⟸")
    ("longmapsto" "⟼")
    ("longleftrightarrow" "⟷")
    ("Longleftrightarrow" "⟺")
    ("leftharpoonup" "↼")     ; Special Arrows
    ("leftharpoondown" "↽")
    ("rightharpoonup" "⇀")
    ("rightharpoondown" "⇁")
    ("rightleftharpoons" "⇌")
    ("hookrightarrow" "↪")
    ("hookleftarrow" "↩")))

(defvar gm/math-operators
  '(("bigvee" "⋁")
    ("bigwedge" "⋀")
    ("biguplus" "⨄")
    ("bigcap" "⋂")
    ("bigcup" "⋃")
    ("nabla" "∇")
    ("prod" "∏")
    ("coprod" "∐")
    ("int" "∫")
    ("iint" "∬")
    ("iiint" "∭")
    ("oint" "∮")
    ("oiint" "∯")
    ("oiiint" "∰")
    ("sum" "∑")
    ("bigotimes" "⨂")
    ("bigoplus" "⨁")
    ("bigodot" "⨀")
    ("bigsqcup" "⨆")
    ("bigcirc" "◯")))

(defvar gm/math-spaced
  (append
   gm/math-arrows
  '(("geq" "≥")
    ("ge" "≥")
    ("leq" "≤")
    ("le" "≤")
    ("neq" "≠")
    ("land" "∧")
    ("lor" "∨")
    ("neg" "¬")
    ("forall" "∀")
    ("exists" "∃")
    ("Diamond" "⋄")
    ("Box" "□")
    ("models" "⊧")
    ("bot" "⊥")
    ("top" "⊤")
    ("mid" "|")
    ("cup" "∪")
    ("cap" "∩")
    ("setminus" "∖")
    ("minus" "∖")
    ("subseteq" "⊆")
    ("subset" "⊂")
    ("in" "∊")
    ("ni" "∋")
    ("notin" "∉")
    ("mapsto" "↦")
    ("to" "→")
    ("times" "×")
    ("equiv" "≡")
    ("sqcap" "⊓")
    ("sqcup" "⊔")
    ("uplus" "⊎")
    ("amalg" "⨿")
    ("odot" "⊙")
    ("oslash" "⊘")
    ("otimes" "⊗")
    ("ominus" "⊖")
    ("oplus" "⊕")
    ("mp" "∓")
    ("pm" "±")
    ("cdot" "⋅")
    ("ast" "∗")
    ("propto" "∝")
    ("sqsubseteq" "⊑")
    ("sqsupseteq" "⊒")
    ("parallel" "∥")
    ("dashv" "⊣")
    ("vdash" "⊢")
    ("succ" "≻")
    ("prec" "≺")
    ("approx" "≈")
    ("succeq" "≽")
    ("preceq" "≼")
    ("supset" "⊃")
    ("supseteq" "⊇")
    ("gg" "≫")
    ("ll" "≪")
    ("sim" "∼")
    ("simeq" "≃")
    ("asymp" "≍")
    ("smile" "⌣")
    ("frown" "⌢")
    ("bowtie" "⋈")
    ("models" "⊧")
    ("Vert" "∥")
    ("cong" "≅")
    ("doteq" "≐")
    ("triangleleft" "◁")
    ("triangleright" "▷")
    ("bigtriangleup" "△")
    ("bigtriangledown" "▽"))))

(defvar gm/math-unspaced
  (append
   gm/math-operators
   gm/math-letters
   '(("infty" "∞")
     ("emptyset" "∅")
     ("dots" "…")
     ("cdots" "⋯")
     ("vdots" "⋮")
     ("ddots" "⋱")
     ("langle" "⟨")
     ("rangle" "⟩")
     ("rceil" "⌉")
     ("lceil" "⌈")
     ("rfloor" "⌋")
     ("lfloor" "⌊")
     ("dagger" "†" )
     ("dag" "†")
     ("ddag" "‡")
     ("S" "§")
     ("star" "★")
     ("vDash" "⊨")
     ("circ" "∘")
     ("surd" "√")
     ("angle" "∠")
     ("triangle" "△")
     ("flat" "♭")
     ("natural" "♮")
     ("sharp" "♯")
     ("clubsuit" "♣")
     ("diamondsuit" "♢")
     ("heartsuit" "♡")
     ("spadesuit" "♠"))))

(defvar gm/spaced-after
  '(("Div" [?\s (Br . Bl) ?\s (Bc . Br) ?∇ (Br . Bc) ?\s (Br . Bc) ?\s (Bc . Bl) ?·])
    ("Grad" [?\s (Bc . Bc) ?\s (Bc . Br) ?∇])
    ("Curl" [?\s (Br . Bl) ?\s (Bc . Br) ?∇ (Br . Bc) ?\s (Br . Bc) ?\s (Bc . Bl) ?×])
    ("int" [?\s (Bc . Bc) ?\s (Bc . Br) ?∫])))

(defvar gm/math-commands
  '(("dd" [?\s (Br . Bl) ?𝖽] "")
    ("pd" ?∂ "")))

(defun gm/math-regexp-unspaced (name symbol)
  (list (cons (format "\\(\\\\%s{}\\)" name) symbol)
        (cons (format "\\(\\\\%s\\)[^[:alnum:]{]" name) symbol)))

(defun gm/math-regexp-spaced (name symbol)
  (setq symbol `[?\s (Br . Bl) ?\s (Bc . Bc) ,(string-to-char symbol)])
  (list (cons (format "\\(\\\\%s\\( \\|{}\\)\\)" name) symbol)
        (cons (format "\\([ ]?\\\\%s\\)[^[:alnum:]{ ]" name) symbol)))

(defun gm/math-regexp-spaced-after (name symbol)
  (cons (format "\\(\\\\%s \\)" name) symbol))

(defun gm/math-regexp-commands (command open-delim close-delim)
  (list (cons (format "\\([ ]?\\\\%s{\\)" command) open-delim)
        (cons (format "\\\\%s{[^}]*\\(}\\)" command) close-delim)))

(provide 'gm-pretty-math)
