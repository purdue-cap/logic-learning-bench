(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/48) — gt=repeatatleast(startwith(concat(<vow>,contain(<any>))),1)")
(set-info :description "lines starting with a vowel before a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00234 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00262 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00277 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00290 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00303 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00289 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00304 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00057 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00293 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00291 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00577 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00816 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00292 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
