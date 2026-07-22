(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/202) — gt=concat(<any>,contain(contain(<low>)))")
(set-info :description "a character appears before containing a lower-case letter in the lines")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00736 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00731 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00080 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00993 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00062 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00224 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
