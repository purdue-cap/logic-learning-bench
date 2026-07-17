(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/194) — gt=concat(or(or(<m0>,<num>),<m1>),contain(<vow>))")
(set-info :description "lines with the string '!' or '@' or a number before a vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00079 0 (size (Pos w00079)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00157 0 (size (Pos w00157)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00122 0 (size (Pos w00122)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00846 0 (size (Pos w00846)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00877 0 (size (Pos w00877)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00434 0 (size (Pos w00434)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00019 0 (size (Pos w00019))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
