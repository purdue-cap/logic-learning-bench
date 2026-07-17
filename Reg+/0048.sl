(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/48) — gt=repeatatleast(startwith(concat(<vow>,contain(<any>))),1)")
(set-info :description "lines starting with a vowel before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00234 0 (size (Pos w00234)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00262 0 (size (Pos w00262)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00277 0 (size (Pos w00277)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00290 0 (size (Pos w00290)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 0 (size (Pos w00303)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00289 0 (size (Pos w00289)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00304 0 (size (Pos w00304)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00057 0 (size (Pos w00057))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00293 0 (size (Pos w00293))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00291 0 (size (Pos w00291))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00577 0 (size (Pos w00577))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00816 0 (size (Pos w00816))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00292 0 (size (Pos w00292))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
