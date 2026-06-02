(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/72) — gt=and(repeatatleast(<any>,6),and(not(contain(< >)),and(contain(<num>),and(contain(<cap>),and(contain(<low>),contain(or(<!>,or(<@>,or(<#>,or(<$>,or(<%>,or(<^>,or(<&>,or(<*>,or(<(>,or(<)>,or(<_>,<.>)))))))))))))))))")
(set-info :description "at least 6 characters. no space. at least one digit. at least one upper case letter. at least one lower case letter. at least one special character ''!'',''@'',''#'',''$'',''%'',''^'',''&'',''*'',''('','')'',''_''.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00550 0 (size (Pos w00550)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00558 0 (size (Pos w00558))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00512 0 (size (Pos w00512))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00630 0 (size (Pos w00630))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00227 0 (size (Pos w00227))))))

(check-synth)
