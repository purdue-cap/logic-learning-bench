;; Reg+_0173: lines beginning with the string '!' followed by the string '@'
;; source: REGEL (deepregex/180) — gt=startwith(concat(<m0>,contain(<m1>)))
;; examples: 13, constraints: 13, max_len: 5

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x20) ($x21) ($x32) ($x33) ($x34) ($x40) ($x61)
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
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (s_4 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (s_4 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5) (= result X_0_1))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5) (= result X_0_2))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool))
                    (and (= len 3) (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5) (= result X_0_3))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool))
                    (and (= len 4) (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5) (= result X_0_4))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_0_5 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_1_5 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_2_5 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_3_5 Bool) (X_4_4 Bool) (X_4_5 Bool) (X_5_5 Bool))
                    (and (= len 5) (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5) (= result X_0_5))
                ))
            )
        )) :input (len s_0 s_1 s_2 s_3 s_4) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (< 0 len)) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (< 1 len)) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (< 2 len)) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (< 3 len)) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (< 4 len)) (= X_5_5 false))
            )
            ($x20
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 32))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 32))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 32))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 32))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 32))) (= X_5_5 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 33))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 33))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 33))) (= X_5_5 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 50))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 50))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 50))) (= X_5_5 false))
            )
            ($x33
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 51))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 51))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 51))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 51))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 51))) (= X_5_5 false))
            )
            ($x34
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 52))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 52))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 52))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 52))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 52))) (= X_5_5 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 64))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 64))) (= X_5_5 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 97))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 97))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 97))) (= X_5_5 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_0_5 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_1_5 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_2_5 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_3_5 Bool) (A_4_4 Bool) (A_4_5 Bool) (A_5_5 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_0_5 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_1_5 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_2_5 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_3_5 Bool) (B_4_4 Bool) (B_4_5 Bool) (B_5_5 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_0_5 A_1_1 A_1_2 A_1_3 A_1_4 A_1_5 A_2_2 A_2_3 A_2_4 A_2_5 A_3_3 A_3_4 A_3_5 A_4_4 A_4_5 A_5_5) (R.Sem t2 len s_0 s_1 s_2 s_3 s_4 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_0_5 B_1_1 B_1_2 B_1_3 B_1_4 B_1_5 B_2_2 B_2_3 B_2_4 B_2_5 B_3_3 B_3_4 B_3_5 B_4_4 B_4_5 B_5_5) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_0_2 (or A_0_2 B_0_2)) (= X_0_3 (or A_0_3 B_0_3)) (= X_0_4 (or A_0_4 B_0_4)) (= X_0_5 (or A_0_5 B_0_5)) (= X_1_1 (or A_1_1 B_1_1)) (= X_1_2 (or A_1_2 B_1_2)) (= X_1_3 (or A_1_3 B_1_3)) (= X_1_4 (or A_1_4 B_1_4)) (= X_1_5 (or A_1_5 B_1_5)) (= X_2_2 (or A_2_2 B_2_2)) (= X_2_3 (or A_2_3 B_2_3)) (= X_2_4 (or A_2_4 B_2_4)) (= X_2_5 (or A_2_5 B_2_5)) (= X_3_3 (or A_3_3 B_3_3)) (= X_3_4 (or A_3_4 B_3_4)) (= X_3_5 (or A_3_5 B_3_5)) (= X_4_4 (or A_4_4 B_4_4)) (= X_4_5 (or A_4_5 B_4_5)) (= X_5_5 (or A_5_5 B_5_5))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_0_5 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_1_5 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_2_5 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_3_5 Bool) (A_4_4 Bool) (A_4_5 Bool) (A_5_5 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_0_5 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_1_5 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_2_5 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_3_5 Bool) (B_4_4 Bool) (B_4_5 Bool) (B_5_5 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_0_5 A_1_1 A_1_2 A_1_3 A_1_4 A_1_5 A_2_2 A_2_3 A_2_4 A_2_5 A_3_3 A_3_4 A_3_5 A_4_4 A_4_5 A_5_5) (R.Sem t2 len s_0 s_1 s_2 s_3 s_4 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_0_5 B_1_1 B_1_2 B_1_3 B_1_4 B_1_5 B_2_2 B_2_3 B_2_4 B_2_5 B_3_3 B_3_4 B_3_5 B_4_4 B_4_5 B_5_5) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2))) (= X_0_3 (or (and A_0_0 B_0_3) (and A_0_1 B_1_3) (and A_0_2 B_2_3) (and A_0_3 B_3_3))) (= X_0_4 (or (and A_0_0 B_0_4) (and A_0_1 B_1_4) (and A_0_2 B_2_4) (and A_0_3 B_3_4) (and A_0_4 B_4_4))) (= X_0_5 (or (and A_0_0 B_0_5) (and A_0_1 B_1_5) (and A_0_2 B_2_5) (and A_0_3 B_3_5) (and A_0_4 B_4_5) (and A_0_5 B_5_5))) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2))) (= X_1_3 (or (and A_1_1 B_1_3) (and A_1_2 B_2_3) (and A_1_3 B_3_3))) (= X_1_4 (or (and A_1_1 B_1_4) (and A_1_2 B_2_4) (and A_1_3 B_3_4) (and A_1_4 B_4_4))) (= X_1_5 (or (and A_1_1 B_1_5) (and A_1_2 B_2_5) (and A_1_3 B_3_5) (and A_1_4 B_4_5) (and A_1_5 B_5_5))) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (or (and A_2_2 B_2_3) (and A_2_3 B_3_3))) (= X_2_4 (or (and A_2_2 B_2_4) (and A_2_3 B_3_4) (and A_2_4 B_4_4))) (= X_2_5 (or (and A_2_2 B_2_5) (and A_2_3 B_3_5) (and A_2_4 B_4_5) (and A_2_5 B_5_5))) (= X_3_3 (and A_3_3 B_3_3)) (= X_3_4 (or (and A_3_3 B_3_4) (and A_3_4 B_4_4))) (= X_3_5 (or (and A_3_3 B_3_5) (and A_3_4 B_4_5) (and A_3_5 B_5_5))) (= X_4_4 (and A_4_4 B_4_4)) (= X_4_5 (or (and A_4_4 B_4_5) (and A_4_5 B_5_5))) (= X_5_5 (and A_5_5 B_5_5))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_0_5 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_1_5 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_2_5 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_3_5 Bool) (A_4_4 Bool) (A_4_5 Bool) (A_5_5 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_0_5 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_1_5 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_2_5 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_3_5 Bool) (B_4_4 Bool) (B_4_5 Bool) (B_5_5 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_0_5 A_1_1 A_1_2 A_1_3 A_1_4 A_1_5 A_2_2 A_2_3 A_2_4 A_2_5 A_3_3 A_3_4 A_3_5 A_4_4 A_4_5 A_5_5) (R.Sem t2 len s_0 s_1 s_2 s_3 s_4 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_0_5 B_1_1 B_1_2 B_1_3 B_1_4 B_1_5 B_2_2 B_2_3 B_2_4 B_2_5 B_3_3 B_3_4 B_3_5 B_4_4 B_4_5 B_5_5) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_0_2 (and A_0_2 B_0_2)) (= X_0_3 (and A_0_3 B_0_3)) (= X_0_4 (and A_0_4 B_0_4)) (= X_0_5 (and A_0_5 B_0_5)) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (and A_1_2 B_1_2)) (= X_1_3 (and A_1_3 B_1_3)) (= X_1_4 (and A_1_4 B_1_4)) (= X_1_5 (and A_1_5 B_1_5)) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (and A_2_3 B_2_3)) (= X_2_4 (and A_2_4 B_2_4)) (= X_2_5 (and A_2_5 B_2_5)) (= X_3_3 (and A_3_3 B_3_3)) (= X_3_4 (and A_3_4 B_3_4)) (= X_3_5 (and A_3_5 B_3_5)) (= X_4_4 (and A_4_4 B_4_4)) (= X_4_5 (and A_4_5 B_4_5)) (= X_5_5 (and A_5_5 B_5_5))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_0_5 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_1_5 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_2_5 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_3_5 Bool) (A_4_4 Bool) (A_4_5 Bool) (A_5_5 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_0_5 A_1_1 A_1_2 A_1_3 A_1_4 A_1_5 A_2_2 A_2_3 A_2_4 A_2_5 A_3_3 A_3_4 A_3_5 A_4_4 A_4_5 A_5_5) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_0_2 A_0_2) (= X_0_3 A_0_3) (= X_0_4 A_0_4) (= X_0_5 A_0_5) (= X_1_1 true) (= X_1_2 A_1_2) (= X_1_3 A_1_3) (= X_1_4 A_1_4) (= X_1_5 A_1_5) (= X_2_2 true) (= X_2_3 A_2_3) (= X_2_4 A_2_4) (= X_2_5 A_2_5) (= X_3_3 true) (= X_3_4 A_3_4) (= X_3_5 A_3_5) (= X_4_4 true) (= X_4_5 A_4_5) (= X_5_5 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_0_5 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_1_5 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_2_5 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_3_5 Bool) (A_4_4 Bool) (A_4_5 Bool) (A_5_5 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_0_4 Bool) (S_0_5 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_1_4 Bool) (S_1_5 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_2_4 Bool) (S_2_5 Bool) (S_3_3 Bool) (S_3_4 Bool) (S_3_5 Bool) (S_4_4 Bool) (S_4_5 Bool) (S_5_5 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_0_5 A_1_1 A_1_2 A_1_3 A_1_4 A_1_5 A_2_2 A_2_3 A_2_4 A_2_5 A_3_3 A_3_4 A_3_5 A_4_4 A_4_5 A_5_5) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= S_0_5 (or (and A_0_1 S_1_5) (and A_0_2 S_2_5) (and A_0_3 S_3_5) (and A_0_4 S_4_5) (and A_0_5 S_5_5))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= S_1_5 (or (and A_1_2 S_2_5) (and A_1_3 S_3_5) (and A_1_4 S_4_5) (and A_1_5 S_5_5))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= S_2_5 (or (and A_2_3 S_3_5) (and A_2_4 S_4_5) (and A_2_5 S_5_5))) (= S_3_3 true) (= S_3_4 (and A_3_4 S_4_4)) (= S_3_5 (or (and A_3_4 S_4_5) (and A_3_5 S_5_5))) (= S_4_4 true) (= S_4_5 (and A_4_5 S_5_5)) (= S_5_5 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= X_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= X_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= X_0_5 (or (and A_0_1 S_1_5) (and A_0_2 S_2_5) (and A_0_3 S_3_5) (and A_0_4 S_4_5) (and A_0_5 S_5_5))) (= X_1_1 false) (= X_1_2 (and A_1_2 S_2_2)) (= X_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= X_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= X_1_5 (or (and A_1_2 S_2_5) (and A_1_3 S_3_5) (and A_1_4 S_4_5) (and A_1_5 S_5_5))) (= X_2_2 false) (= X_2_3 (and A_2_3 S_3_3)) (= X_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= X_2_5 (or (and A_2_3 S_3_5) (and A_2_4 S_4_5) (and A_2_5 S_5_5))) (= X_3_3 false) (= X_3_4 (and A_3_4 S_4_4)) (= X_3_5 (or (and A_3_4 S_4_5) (and A_3_5 S_5_5))) (= X_4_4 false) (= X_4_5 (and A_4_5 S_5_5)) (= X_5_5 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_0_5 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_1_5 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_2_5 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_3_5 Bool) (A_4_4 Bool) (A_4_5 Bool) (A_5_5 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_0_4 Bool) (S_0_5 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_1_4 Bool) (S_1_5 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_2_4 Bool) (S_2_5 Bool) (S_3_3 Bool) (S_3_4 Bool) (S_3_5 Bool) (S_4_4 Bool) (S_4_5 Bool) (S_5_5 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 s_4 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_0_5 A_1_1 A_1_2 A_1_3 A_1_4 A_1_5 A_2_2 A_2_3 A_2_4 A_2_5 A_3_3 A_3_4 A_3_5 A_4_4 A_4_5 A_5_5) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= S_0_5 (or (and A_0_1 S_1_5) (and A_0_2 S_2_5) (and A_0_3 S_3_5) (and A_0_4 S_4_5) (and A_0_5 S_5_5))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= S_1_5 (or (and A_1_2 S_2_5) (and A_1_3 S_3_5) (and A_1_4 S_4_5) (and A_1_5 S_5_5))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= S_2_5 (or (and A_2_3 S_3_5) (and A_2_4 S_4_5) (and A_2_5 S_5_5))) (= S_3_3 true) (= S_3_4 (and A_3_4 S_4_4)) (= S_3_5 (or (and A_3_4 S_4_5) (and A_3_5 S_5_5))) (= S_4_4 true) (= S_4_5 (and A_4_5 S_5_5)) (= S_5_5 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_0_2 S_0_2) (= X_0_3 S_0_3) (= X_0_4 S_0_4) (= X_0_5 S_0_5) (= X_1_1 S_1_1) (= X_1_2 S_1_2) (= X_1_3 S_1_3) (= X_1_4 S_1_4) (= X_1_5 S_1_5) (= X_2_2 S_2_2) (= X_2_3 S_2_3) (= X_2_4 S_2_4) (= X_2_5 S_2_5) (= X_3_3 S_3_3) (= X_3_4 S_3_4) (= X_3_5 S_3_5) (= X_4_4 S_4_4) (= X_4_5 S_4_5) (= X_5_5 S_5_5)))
                )
            )
        )) :input (len s_0 s_1 s_2 s_3 s_4) :output (X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_0_5 X_1_1 X_1_2 X_1_3 X_1_4 X_1_5 X_2_2 X_2_3 X_2_4 X_2_5 X_3_3 X_3_4 X_3_5 X_4_4 X_4_5 X_5_5))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 2 33 64 0 0 0 true))
(constraint (Start.Sem match_regex 3 33 50 64 0 0 true))
(constraint (Start.Sem match_regex 4 33 50 64 51 0 true))
(constraint (Start.Sem match_regex 4 33 64 51 52 0 true))
(constraint (Start.Sem match_regex 5 33 64 97 33 64 true))
(constraint (Start.Sem match_regex 4 33 64 32 33 0 true))
(constraint (Start.Sem match_regex 3 33 64 97 0 0 true))
(constraint (Start.Sem match_regex 1 32 0 0 0 0 false))
(constraint (Start.Sem match_regex 1 33 0 0 0 0 false))
(constraint (Start.Sem match_regex 1 64 0 0 0 0 false))
(constraint (Start.Sem match_regex 1 97 0 0 0 0 false))
(constraint (Start.Sem match_regex 2 33 97 0 0 0 false))
(constraint (Start.Sem match_regex 2 33 50 0 0 0 false))
(check-synth)
