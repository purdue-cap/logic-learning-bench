(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/87) — gt=repeatatleast(or(<let>,<cap>),1)")
(set-info :description "lines with words and a letter or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00043 0 (size (Pos w00043)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00025 0 (size (Pos w00025)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00959 0 (size (Pos w00959)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00920 0 (size (Pos w00920)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00958 0 (size (Pos w00958)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00977 0 (size (Pos w00977)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00770 0 (size (Pos w00770)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01106 0 (size (Pos w01106))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 0 (size (Pos w00382))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01054 0 (size (Pos w01054))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01250 0 (size (Pos w01250))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01137 0 (size (Pos w01137))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00387 0 (size (Pos w00387))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
