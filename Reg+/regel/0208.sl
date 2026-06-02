(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/8) — gt=concat(repeatatleast(<num>,1),optional(concat(<.>,or(<0>,<5>))))")
(set-info :description "It should accept numbers only with decimal part '0' or '5' only.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00099 0 (size (Pos w00099)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00102 0 (size (Pos w00102)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00106 0 (size (Pos w00106)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00008 0 (size (Pos w00008)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00116 0 (size (Pos w00116)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00118 0 (size (Pos w00118)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00405 0 (size (Pos w00405)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00097 0 (size (Pos w00097))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00104 0 (size (Pos w00104))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00105 0 (size (Pos w00105))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00117 0 (size (Pos w00117))))))

(check-synth)
