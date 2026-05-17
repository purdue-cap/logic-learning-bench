(require "../signatures/49.sl")
(provide so_49_P1 so_49_P2 so_49_P3 so_49_N1 so_49_N2 so_49_N3 so_49_N4)

(define-model so_49_P1
  (define-univ Pos ($0))
  (interp-fun is.any (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    ((_) false)
  )))
)

(define-model so_49_P2
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    (($1) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    (($1) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($2) true)
    ((_) false)
  )))
)

(define-model so_49_P3
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7 $8))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    (($6) true)
    (($7) true)
    (($8) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    (($4) true)
    (($8) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($4) true)
    (($8) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($4) true)
    (($8) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    (($1) true)
    (($3) true)
    (($5) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($4) true)
    (($8) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    (($1) true)
    (($3) true)
    (($5) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($2) true)
    (($6) true)
    ((_) false)
  )))
)

(define-model so_49_N1
  (define-univ Pos ($0 $1 $2))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($2) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($1) true)
    ((_) false)
  )))
)

(define-model so_49_N2
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($2) true)
    ((_) false)
  )))
)

(define-model so_49_N3
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    (($1) true)
    (($3) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    (($1) true)
    (($3) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($2) true)
    (($6) true)
    ((_) false)
  )))
)

(define-model so_49_N4
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    (($6) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    (($0) true)
    (($4) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.lower (match (
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($4) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($4) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    (($1) true)
    (($3) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($4) true)
    (($7) true)
    ((_) false)
  )))
  (interp-fun is.x20 (match (
    (($1) true)
    (($3) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($2) true)
    (($5) true)
    ((_) false)
  )))
)
