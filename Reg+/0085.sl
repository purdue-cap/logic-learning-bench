(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/87) — gt=repeatatleast(or(<let>,<cap>),1)")
(set-info :description "lines with words and a letter or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00043 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00025 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00959 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00920 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00958 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00977 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00770 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01106 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00382 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01054 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01250 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01137 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00387 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
