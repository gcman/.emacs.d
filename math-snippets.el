(setq gm/math-global-snippets
      '(("/" "" t)
        ("succ" "\\prec ")
        ("bul" "^{\\bullet}")
        ("Sh" "\\Sh")
        ("cprod" "\\coprod_{$1}")
        ("PSh" "\\PreSh")
        ("Ab" "\\Ab")
        ("EE" "\\E")
        ("PP" "\\Prob")
        ("_inv" "i^{-1}")
        ("End" "\\End")
        ("coker" "\\Coker ")
        ("Bil" "\\Bil")
        ("\\subset *" "\\supset ")
        ("HH" "\\HH")
        ("Mod" "\\Mod")
        ("esup" "\\Esup ")
        ("AGrp" "\\AGrp")
        ("du" "^{\\dual}")
        ("^{\\dual}du" "^{\\ddual}")
        ("Nat" "\\Nat")
        ("Ring" "\\Ring")
        ("Hom" "\\Hom")
        ("Id" "\\Id")
        ("Cod" "\\Cod")
        ("Dom" "\\Dom")
        ("Mor" "\\Mor")
        ("Ob" "\\Ob")
        ("fr" "\\mathfrak{$0}")
        ("\\to iso" "\\xrightarrow{\\sim} ")
        ("\\to by" "\\xrightarrow{$1}")
        ("wto" "\\rightharpoonup ")
        ("^pd" "^pd")
        ("\\tan h" "\\tanh ")
        ("\\sec h" "\\sech ")
        ("what" "\\widehat{$0}")
        (">>" "&>")
        ("<<" "&<")
        ("DD" "\\D{}")
        ("ipr" "\\intprod{}")
        ("WW" "\\wedge{}")
        ("SP" "equation-to-split" t)
        ("\\ge ge" "&\\ge ")
        ("\\le le" "&\\le ")
        ("asym" "^{\\Asym}")
        ("sym" "^{\\Sym}")
        ("res" "\\Res ")
        ("ome" "m_{\\ast{}}")
        ("vol" "\\Vol ")
        ("Log" "\\Log ")
        ("sub" "\\substack{$0}")
        ("dst" "^{\\ast{}\\ast{}}")
        ("cov" "\\Cov")
        ("var" "\\Var")
        ("Pr" "\\Prob")
        ("#" "\\card{}")
        ("Li" "\\Li")
        ("Tor" "\\Tor ")
        ("qqd" "\\qquad ")
        ("qd" "\\quad ")
        ("zsum" "\\sum_{n\\in\\Z} ")
        ("spec" "\\Spec ")
        ("Gal" "\\Gal{$1}{$2}")
        ("gal" "\\Gal{$1}{$2}")
        ("ov" "/")
        ("sgn" "\\Sgn ")
        ("op" "_{\\Op}")
        ("surj" "\\twoheadrightarrow{}")
        ("Q[" "\\Q[$0]")
        ("dist" "\\Dist ")
        ("\\sin n" "s\\in{}")
        ("inj" "\\hookrightarrow{}")
        ("loo" "\\ell^{\\infty}")
        ("Im" "\\Im ")
        ("Re" "\\Re ")
        ("Z[" "\\Z[$0]")
        ("C[" "\\C[$0]")
        ("dmat " "diagonal-matrix" t)
        ("nn" "_n")
        ("mm" "_m")
        ("ii" "_i")
        ("_nn" "_nn")
        ("_mm" "_mm")
        ("_ii" "_ii")
        ("nm" "\\norm{$0}")
        ("norm" "\\norm{$0}")
        ("rad" "\\Rad ")
        ("Hess" "\\Hess ")
        ("mid" "\\mid{}")
        ("mati " "identity-matrix" t)
        ("mat " "matrix" t)
        ("sp " "split" t)
        ("ndiv" "\\nmid ")
        ("adj" "\\Adj ")
        ("rref" "\\rref ")
        ("text" "\\text{$0}")
        ("num" "\\num{$0}")
        ("perp" "\\perp ")
        ("nsg" "\\normsg ")
        ("SL" "\\SL")
        ("\\pinn" "p\\in ")
        ("Aut" "\\Aut")
        ("md" "\\pmod ")
        ("pmod" "\\pmod ")
        ("{" "{$0}")
        ("gp" "\\group{$1}{$2}")
        ("ll" "\\ll ")
        ("gg" "\\gg ")
        ("khat" "\\khat")
        ("jhat" "\\jhat")
        ("ihat" "\\ihat")
        ("ilim" "\\varprojlim ")
        ("dlim" "\\varinjlim ")
        ("hk" "hook")
        ("\\Z/" "z-mod-n" t)
        ("Z/" "z-mod-n" t)
        ("rvec" "row-vector" t)
        ("cvec" "column-vector" t)
        ("<!" "\\triangleleft{}")
        ("=<" "\\impliedby{}")
        ("frac" "frac" t)
        ("ell" "\\ell{}")
        ("epr" "\\prod_{$0}")
        ("txt" "\\text{$0}")
        ("cdd" "commutative-diagram" t)
        ("frob" "\\Frob")
        ("lg" "\\legendre{$1}{$2}$0")
        ("st" "^\\ast{}")
        ("ast" "\\ast{}")
        ("til" "tilde" t)
        ("VV" "\\vee{}")
        ("FF" "field" t)
        ("iff" "\\iff ")
        ("Ptop" "\\PTop")
        ("Grp" "\\Grp")
        ("Top" "\\Top")
        ("Vect" "\\Vect")
        ("Set" "\\Set")
        ("obj" "\\Obj")
        ("mst" "m^\\star{}")
        ("circ" "\\circ ")
        ("Min" "\\min ")
        ("max" "\\max ")
        ("cneq" "\\subsetneq ")
        ("frak" "\\mathfrak{$0}")
        ("~" "\\sim ")
        ("~" "sim" t)
        ("mod" "quotient-helper" t)
        ("lcm" "\\LCM")
        ("gcd" "\\GCD")
        ("ang" "\\langle{}$0\\rangle{}")
        ("aut" "\\Aut($0)")
        ("GL" "\\GL")
        ("poly" "polynomial" t)
        ("ntin" "\\notin ")
        ("not" "\\not ")
        ("deg" "\\Deg ")
        ("conj" "\\conj{$0}")
        ("inp" "\\inp{${1:\\cdot}}{${2:\\cdot}}$0")
        ("esum" "\\sum_{$0}")
        ("<-" "\\leftarrow")
        ("CP" "\\CP")
        ("RP" "\\RP")
        ("scr" "\\mathscr{$0}")
        ("hom" "\\Hom")
        ("cal" "\\mathcal{$0}")
        ("!>" "\\mapsto ")
        ("==" "cong-or-split-equals" t)
        ("=>" "\\implies ")
        ("(" "($0)")
        ("CC" "\\C")
        ("LL" "\\mathcal{L}")
        ("NN" "\\N")
        ("QQ" "\\Q")
        ("RR" "\\R")
        ("ZZ" "\\Z")
        ("[" "[$0]")
        ("^" "superscript" t)
        ("_" "subscript" t)
        ("abs" "\\abs{$0}")
        ("acos" "\\arccos ")
        ("acot" "\\arccot ")
        ("aleph" "\\aleph")
        ("approx" "\\approx ")
        ("asin" "\\arcsin ")
        ("atan" "\\arctan ")
        ("bar" "bar" t)
        ("big" "big-operator" t)
        ("nck" "\\binom{${1:n}}{${2:k}}$0")
        ("bol" "\\left(${1:x} - ${2:\\delta}, $1 + $2\\right)$0")
        ("box" "\\boxed{$0}")
        ("cases" "cases" t)
        ("cb" "^3")
        ("cc" "\\subset ")
        ("ceil" "\\ceil{$0}")
        ("comp" "^\\complement ")
        ("cong" "\\equiv ")
        ("cos" "\\cos ")
        ("cot" "\\cot ")
        ("cu" "\\Curl ")
        ("dd" "derivative" t)
        ("del" "\\pd{}")
        ("det" "\\Det ")
        ("dim" "\\Dim ")
        ("dint" "dintegral" t)
        ("div" "\\Div ")
        ("dv" "\\dv{$1}{${2:x}}$0")
        ("exp" "\\exp ")
        ("faa" "\\forall ")
        ("flo" "\\floor{$0}")
        ("fun" "${1:f} : ${2:\\R}\\to{}${3:\\R} $0")
        ("ge" "\\ge ")
        ("gr" "\\Grad ")
        ("hat" "hat" t)
        ("iint" "iintegral" t)
        ("im" "\\Image ")
        ("inf" "infimum" t)
        ("inn" "\\in ")
        ("int" "integral" t)
        ("inv" "^{-1}")
        ("iso" "\\Iso ")
        ("ker" "\\Ker ")
        ("lap" "\\Lapl ")
        ("lb" "label" t)
        ("le" "\\le ")
        ("lim" "\\lim ")
        ("elim" "\\lim_{${1:n}\\to{}${2:\\infty}}$0")
        ("list" "${1:a}_{${2:1}},\\ldots,$1_{${3:n}}")
        ("ln" "\\ln ")
        ("log" "\\log ")
        ("lr(" "\\left({}$0\\right){}")
        ("lr[" "\\left[{}$0\\right]{}")
        ("lr{" "\\set{$0}")
        ("l(" "\\left(")
        ("l[" "\\left[")
        ("r)" "\\right)")
        ("r]" "\\right]")
        ("mp" "\\mp ")
        ("nabl" "\\nabla ")
        ("ndd" "\\dd[${1:n}]{${2:x}}$0")
        ("ndv" "\\dv[${1:n}]{$2}{${3:x}}$0")
        ("neq" "\\neq{}")
        ("npd" "\\pd[${1:n}]{$2}{${3:x}}$0")
        ("npv" "\\pdv[${1:n}]{$2}{${3:x}}$0")
        ("nsq" "\\sqrt[${1:n}]{$2}$0")
        ("o+" "\\oplus ")
        ("oint" "ointegral" t)
        ("oo" "\\infty")
        ("opl" "\\oplus ")
        ("ox" "\\otimes ")
        ("part" "\\pd{}")
        ("pd" "\\pd{}")
        ("pm" "\\pm ")
        ("prod" "\\prod_{${1:k}=${2:0}}^{${3:n}} $0")
        ("prop" "\\propto ")
        ("pas" "pairsum" t)
        ("psum" "pairsum" t)
        ("pv" "\\pdv{$1}{${2:x}}$0")
        ("sec" "\\sec ")
        ("seq" "\\set{${1:a}_${2:n}}_{$2\\in${4:\\N}}$0")
        ("set" "\\set{$0}")
        ("sim" "\\sim ")
        ("sin" "\\sin ")
        ("span" "\\Span ")
        ("sq" "\\sqrt{$0}")
        ("sr" "^2")
        ("star" "^\\star ")
        ("sum" "\\sum_{${1:n}=${2:0}}^{${3:\\infty}}")
        ("sup" "supremum" t)
        ("tan" "\\tan ")
        ("then" "\\implies ")
        ("to" "\\to ")
        ("tr" "\\Tr ")
        ("vv" "\\vec ")
        ("xii" "x_i")
        ("xx" "\\times ")))
