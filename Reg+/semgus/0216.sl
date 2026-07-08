;; Reg+_0216: R1:can be only single numeric digit
;; source: REGEL (stackoverflow/16) — gt=concat(<num1-9>,concat(<@>,concat(repeatrange(<num>,1,3),<%>)))
;; examples: 0, constraints: 0, max_len: 0

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            
            ($question R)
            ($plus R)
            ($or R R)
            ($concat R R)
            ($inter R R)
            ($star R)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (len Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (X_0_0 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (exists ((X_0_0 Bool))
                    (and (= len 0) (R.Sem t1 len X_0_0) (= result X_0_0))
                )
            )
        )) :input (len) :output (result))
        (! (match t (
            ($any
                (= X_0_0 false)
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (B_0_0 Bool))
                    (and (R.Sem t1 len A_0_0) (R.Sem t2 len B_0_0) (= X_0_0 (or A_0_0 B_0_0)))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (B_0_0 Bool))
                    (and (R.Sem t1 len A_0_0) (R.Sem t2 len B_0_0) (= X_0_0 (and A_0_0 B_0_0)))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (B_0_0 Bool))
                    (and (R.Sem t1 len A_0_0) (R.Sem t2 len B_0_0) (= X_0_0 (and A_0_0 B_0_0)))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool))
                    (and (R.Sem t1 len A_0_0) (= X_0_0 true))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (S_0_0 Bool))
                    (and (R.Sem t1 len A_0_0) (= S_0_0 true) (= X_0_0 false))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (S_0_0 Bool))
                    (and (R.Sem t1 len A_0_0) (= S_0_0 true) (= X_0_0 S_0_0))
                )
            )
        )) :input (len) :output (X_0_0))
    )
)

(synth-fun match_regex() Start)


(check-synth)
