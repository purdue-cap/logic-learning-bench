(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/35) — gt=concat(or(or(<m0>,<let>),<any>),contain(<m1>))")
(set-info :description "lines with the string '!' , letter , or character before string '@'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00223 0 (size (Pos w00223)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00168 0 (size (Pos w00168)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00107 0 (size (Pos w00107)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00522 0 (size (Pos w00522)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00152 0 (size (Pos w00152)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00504 0 (size (Pos w00504)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00154 0 (size (Pos w00154))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00155 0 (size (Pos w00155))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00156 0 (size (Pos w00156))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00153 0 (size (Pos w00153))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00149 0 (size (Pos w00149))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
