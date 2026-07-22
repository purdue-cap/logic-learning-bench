(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/87) — gt=repeatatleast(or(<let>,<cap>),1)")
(set-info :description "lines with words and a letter or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00043 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00025 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00959 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00920 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00958 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00977 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00770 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01106 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00382 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01054 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01250 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01137 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00387 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
