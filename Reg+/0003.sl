(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/3) — gt=endwith(or(<any>,<vow>))")
(set-info :description "lines that end with a character or a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00120 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00894 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00103 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00152 (RegLan.Sem r (RegLan.Asp head tail))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
