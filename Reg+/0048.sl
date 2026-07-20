(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/48) — gt=repeatatleast(startwith(concat(<vow>,contain(<any>))),1)")
(set-info :description "lines starting with a vowel before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00234 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00262 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00277 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00290 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00303 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00289 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00304 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00057 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00293 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00291 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00577 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00816 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00292 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
