(require "../signatures/116.sl")
(provide so_116_P1 so_116_P2 so_116_P3 so_116_P4 so_116_N1 so_116_N2)

(define-model so_116_P1
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    ((_) false)
  )))
)

(define-model so_116_P2
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
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($0) true)
    (($1) true)
    (($3) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    (($1) true)
    (($3) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($1) true)
    (($3) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($1) true)
    (($3) true)
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    ((_) false)
  )))
)

(define-model so_116_P3
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($0) true)
    (($2) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    (($2) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($2) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($2) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    ((_) false)
  )))
)

(define-model so_116_P4
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
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($4) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    (($0) true)
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    (($1) true)
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    (($2) true)
    (($3) true)
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    (($6) true)
    ((_) false)
  )))
)

(define-model so_116_N1
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun is.any (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.digit (match (
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($0) true)
    (($1) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    (($1) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($1) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($1) true)
    (($4) true)
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    ((_) false)
  )))
)

(define-model so_116_N2
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
    ((_) false)
  )))
  (interp-fun is.lower (match (
    (($0) true)
    (($2) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.upper (match (
    (($5) true)
    ((_) false)
  )))
  (interp-fun is.alpha (match (
    (($0) true)
    (($2) true)
    (($5) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.alnum (match (
    (($0) true)
    (($2) true)
    (($5) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.word (match (
    (($0) true)
    (($1) true)
    (($2) true)
    (($3) true)
    (($4) true)
    (($5) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.space (match (
    ((_) false)
  )))
  (interp-fun is.hex (match (
    (($0) true)
    (($2) true)
    (($5) true)
    (($6) true)
    ((_) false)
  )))
  (interp-fun is.x25 (match (
    ((_) false)
  )))
  (interp-fun is.x2A (match (
    ((_) false)
  )))
  (interp-fun is.x23 (match (
    ((_) false)
  )))
  (interp-fun is.x40 (match (
    ((_) false)
  )))
  (interp-fun is.x2B (match (
    ((_) false)
  )))
)
