(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/22) — gt=and(repeatrange(<any>,3,20),and(startwith(<cap>),and(not(contain(concat(<cap>,<cap>))),and(not(contain(concat(not(<let>),< >))),and(not(contain(concat(< >,not(<cap>)))),and(not(contain(concat(not(<let>),<->))),and(not(contain(concat(<->,not(<low>)))),not(contain(concat(<cap>,not(or(<low>,or(<->,< >)))))))))))))")
(set-info :description "I'm trying to write a regular expression to check whether or not a proposed name is valid in a gaming platform. Rules: Name must contain at least 3 and no more than 20 letters. Name must start with a upper case letter. Name must never have two uppercase letters in a row. Spaces are allowed, but must be preceded by a letter and be followed by an uppercase letter. Hyphens are allowed, but must be preceded by a letter and be followed by a lowercase letter. All uppercase letters must be followed by a lowercase letter unless they are followed by a space or hyphen.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00141 0 (size (Pos w00141)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00577 0 (size (Pos w00577)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00580 0 (size (Pos w00580)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00687 0 (size (Pos w00687)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00152 0 (size (Pos w00152))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00578 0 (size (Pos w00578))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00579 0 (size (Pos w00579))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00572 0 (size (Pos w00572))))))

(check-synth)
