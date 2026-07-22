(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/12) — gt=concat(or(<m0>,<low>),contain(<m1>))")
(set-info :description "lines with the string '!' or lower-case letter before string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00223 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00242 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00363 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00528 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00492 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00767 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00019 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00168 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
