(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/60) — gt=repeatatleast(startwith(<cap>),1)")
(set-info :description "lines starting with a capital letter at least 1 time")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00020 0 (size (Pos w00020)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00481 0 (size (Pos w00481)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00480 0 (size (Pos w00480)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01194 0 (size (Pos w01194)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00169 0 (size (Pos w00169)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00711 0 (size (Pos w00711)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01051 0 (size (Pos w01051)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00401 0 (size (Pos w00401))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00733 0 (size (Pos w00733))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00853 0 (size (Pos w00853))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01223 0 (size (Pos w01223))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01345 0 (size (Pos w01345))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00872 0 (size (Pos w00872))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
