(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/8) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,or(<0>,<5>))))")
(set-info :description "It should accept numbers only with decimal part '0' or '5' only.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00099 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00102 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00106 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00008 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00116 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00118 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00405 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00097 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00104 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00105 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00117 head tail))))

(check-synth)
