(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/206) — gt=concat(repeatatleast(contain(<m0>),4),contain(<num>))")
(set-info :description "lines containing 4 or more of the string '!' before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00826 0 (size (Pos w00826)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01148 0 (size (Pos w01148)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00985 0 (size (Pos w00985)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01066 0 (size (Pos w01066)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01161 0 (size (Pos w01161)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01002 0 (size (Pos w01002)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01147 0 (size (Pos w01147)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00610 0 (size (Pos w00610))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
