(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/37) — gt=contain(endwith(or(<let>,<num>)))")
(set-info :description "a letter or a numbre appears at the end of the lines")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00348 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00522 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00108 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00106 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00423 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00004 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00152 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00317 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
