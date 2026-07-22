(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/8) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,or(<0>,<5>))))")
(set-info :description "It should accept numbers only with decimal part '0' or '5' only.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00099 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00102 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00106 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00008 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00116 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00118 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00405 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00097 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00104 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00105 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00117 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
