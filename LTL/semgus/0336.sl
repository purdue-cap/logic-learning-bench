;; LTL_0336: ->(F(x1),U(!(x0),x1))
;; source: samples2LTL — freshTests/0033
;; operators: G,F,!,U,&,|,->,X,prop
;; depth: 3
;; traces: 10, pos: 5, neg: 5
;; vars: 3, max_len: 3

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (LTL 0))
    (
        (($eval LTL))
        (
            ($p0) ($p1) ($p2)
            ($not LTL)
            ($X LTL)
            ($G LTL)
            ($F LTL)
            ($and LTL LTL)
            ($or LTL LTL)
            ($impl LTL LTL)
            ($U LTL LTL)
        )
    )
)

(define-funs-rec
    (
        (Start.Sem ((t Start) (len Int) (loop Int) (p0_0 Bool) (p0_1 Bool) (p0_2 Bool) (p1_0 Bool) (p1_1 Bool) (p1_2 Bool) (p2_0 Bool) (p2_1 Bool) (p2_2 Bool) (result Bool)) Bool)
        (LTL.Sem ((t LTL) (len Int) (loop Int) (p0_0 Bool) (p0_1 Bool) (p0_2 Bool) (p1_0 Bool) (p1_1 Bool) (p1_2 Bool) (p2_0 Bool) (p2_1 Bool) (p2_2 Bool) (X_0 Bool) (X_1 Bool) (X_2 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (exists
                    ((X_0 Bool) (X_1 Bool) (X_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 X_0 X_1 X_2) (= result X_0))
                )
            )
        )) :input (len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2) :output (result))
        (! (match t (
            ($p0
                (and (= X_0 (and (< 0 len) p0_0)) (= X_1 (and (< 1 len) p0_1)) (= X_2 (and (< 2 len) p0_2)))
            )
            ($p1
                (and (= X_0 (and (< 0 len) p1_0)) (= X_1 (and (< 1 len) p1_1)) (= X_2 (and (< 2 len) p1_2)))
            )
            ($p2
                (and (= X_0 (and (< 0 len) p2_0)) (= X_1 (and (< 1 len) p2_1)) (= X_2 (and (< 2 len) p2_2)))
            )
            (($not t1)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (and (= X_0 (and (< 0 len) (not A_0))) (= X_1 (and (< 1 len) (not A_1))) (= X_2 (and (< 2 len) (not A_2)))))
                )
            )
            (($X t1)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (and (= X_0 (or (and (< 1 len) A_1) (and (= len 1) (= loop 0) A_0))) (= X_1 (or (and (< 2 len) A_2) (and (= len 2) (= loop 0) A_0) (and (= len 2) (= loop 1) A_1))) (= X_2 (or (and (= len 3) (= loop 0) A_0) (and (= len 3) (= loop 1) A_1) (and (= len 3) (= loop 2) A_2)))))
                )
            )
            (($G t1)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (and (= X_0 (and (< 0 len) (or (not (< 0 len)) A_0) (or (not (< 1 len)) A_1) (or (not (< 2 len)) A_2))) (= X_1 (and (< 1 len) (or (not (and (< 1 len) (< loop 1))) A_0) (or (not (< 1 len)) A_1) (or (not (< 2 len)) A_2))) (= X_2 (and (< 2 len) (or (not (and (< 2 len) (< loop 1))) A_0) (or (not (and (< 2 len) (< loop 2))) A_1) (or (not (< 2 len)) A_2)))))
                )
            )
            (($F t1)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (and (= X_0 (or (and (< 0 len) A_0) (and (< 1 len) A_1) (and (< 2 len) A_2))) (= X_1 (or (and (and (< 1 len) (< loop 1)) A_0) (and (< 1 len) A_1) (and (< 2 len) A_2))) (= X_2 (or (and (and (< 2 len) (< loop 1)) A_0) (and (and (< 2 len) (< loop 2)) A_1) (and (< 2 len) A_2)))))
                )
            )
            (($and t1 t2)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool) (B_0 Bool) (B_1 Bool) (B_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (LTL.Sem t2 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 B_0 B_1 B_2) (and (= X_0 (and (< 0 len) A_0 B_0)) (= X_1 (and (< 1 len) A_1 B_1)) (= X_2 (and (< 2 len) A_2 B_2))))
                )
            )
            (($or t1 t2)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool) (B_0 Bool) (B_1 Bool) (B_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (LTL.Sem t2 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 B_0 B_1 B_2) (and (= X_0 (and (< 0 len) (or A_0 B_0))) (= X_1 (and (< 1 len) (or A_1 B_1))) (= X_2 (and (< 2 len) (or A_2 B_2)))))
                )
            )
            (($impl t1 t2)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool) (B_0 Bool) (B_1 Bool) (B_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (LTL.Sem t2 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 B_0 B_1 B_2) (and (= X_0 (and (< 0 len) (or (not A_0) B_0))) (= X_1 (and (< 1 len) (or (not A_1) B_1))) (= X_2 (and (< 2 len) (or (not A_2) B_2)))))
                )
            )
            (($U t1 t2)
                (exists
                    ((A_0 Bool) (A_1 Bool) (A_2 Bool) (B_0 Bool) (B_1 Bool) (B_2 Bool))
                    (and (LTL.Sem t1 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 A_0 A_1 A_2) (LTL.Sem t2 len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2 B_0 B_1 B_2) (and (= X_0 (or (and (< 0 len) B_0) (and (< 1 len) B_1 (or (not (< 1 len)) A_0)) (and (< 2 len) B_2 (or (not (< 2 len)) A_0) (or (not (< 2 len)) A_1)))) (= X_1 (or (and (and (< 1 len) (< loop 1)) B_0 (or (not (and (< 1 len) (< loop 1))) A_1) (or (not (and (< 2 len) (< loop 1))) A_2)) (and (< 1 len) B_1) (and (< 2 len) B_2 (or (not (< 2 len)) A_1)))) (= X_2 (or (and (and (< 2 len) (< loop 1)) B_0 (or (not (and (< 2 len) (< loop 1))) A_2)) (and (and (< 2 len) (< loop 2)) B_1 (or (not (and (< 2 len) (< loop 1))) A_0) (or (not (and (< 2 len) (< loop 2))) A_2)) (and (< 2 len) B_2)))))
                )
            )
        )) :input (len loop p0_0 p0_1 p0_2 p1_0 p1_1 p1_2 p2_0 p2_1 p2_2) :output (X_0 X_1 X_2))
    )
)

(synth-fun phi () Start)

(constraint (Start.Sem phi 3 0 true false false true false true false false true true))
(constraint (Start.Sem phi 3 2 true false false false false false true true true true))
(constraint (Start.Sem phi 3 0 false true true false false false true false true true))
(constraint (Start.Sem phi 3 1 true false true true false true false false true true))
(constraint (Start.Sem phi 3 0 false false false false true false true false false true))
(constraint (Start.Sem phi 3 1 true false true false false true false true false false))
(constraint (Start.Sem phi 3 2 true true true false true false true false true false))
(constraint (Start.Sem phi 3 1 false true true false false true false true false false))
(constraint (Start.Sem phi 3 1 true true true false false true true false true false))
(constraint (Start.Sem phi 3 1 true false true false true true true false false false))
(check-synth)
