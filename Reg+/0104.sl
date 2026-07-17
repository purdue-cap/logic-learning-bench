(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/108) — gt=contain(and(<vow>,<any>))")
(set-info :description "lines that have a vowel and a character")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00487 0 (size (Pos w00487)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00553 0 (size (Pos w00553)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00925 0 (size (Pos w00925)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01347 0 (size (Pos w01347)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01158 0 (size (Pos w01158)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00316 0 (size (Pos w00316)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00051 0 (size (Pos w00051))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00090 0 (size (Pos w00090))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00030 0 (size (Pos w00030))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01311 0 (size (Pos w01311))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 0 (size (Pos w00065))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
