(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/17) — gt=or(or(<let>,<low>),<cap>)")
(set-info :description "lines with a lower-case or capital letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00021 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00113 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00170 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00230 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00173 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00009 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
