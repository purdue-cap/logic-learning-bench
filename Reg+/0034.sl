(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/34) — gt=or(startwith(<m0>),concat(<any>,contain(<num>)))")
(set-info :description "lines starting with string '!' or character followed by number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00068 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00503 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00676 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00324 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00637 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00832 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00010 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00108 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00105 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00154 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00149 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00152 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
