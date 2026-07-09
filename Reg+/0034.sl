(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/34) — gt=or(startwith(<m0>),concat(<any>,contain(<num>)))")
(set-info :description "lines starting with string '!' or character followed by number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00068 0 (size (Pos w00068)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00503 0 (size (Pos w00503)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00676 0 (size (Pos w00676)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00324 0 (size (Pos w00324)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00637 0 (size (Pos w00637)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00832 0 (size (Pos w00832)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00108 0 (size (Pos w00108))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00105 0 (size (Pos w00105))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00154 0 (size (Pos w00154))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00149 0 (size (Pos w00149))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00152 0 (size (Pos w00152))))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex 0 (size (Pos wempty_deepregex))))))

(check-synth)
