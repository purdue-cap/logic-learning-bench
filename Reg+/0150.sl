(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/157) — gt=concat(<m0>,contain(or(<any>,<cap>)))")
(set-info :description "lines with words with string '!' before character or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00075 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00067 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00839 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
