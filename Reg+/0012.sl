(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/12) — gt=concat(or(<m0>,<low>),contain(<m1>))")
(set-info :description "lines with the string '!' or lower-case letter before string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 0 (size (Pos w00223)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00242 0 (size (Pos w00242)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00363 0 (size (Pos w00363)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00528 0 (size (Pos w00528)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00492 0 (size (Pos w00492)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00767 0 (size (Pos w00767)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00168 0 (size (Pos w00168))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079))))))

(check-synth)
