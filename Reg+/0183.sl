(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/191) — gt=concat(<any>,contain(or(<let>,<m0>)))")
(set-info :description "lines containing the string '!' or a letter after a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00120 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00406 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00677 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
