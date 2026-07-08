;; Reg+_0223: I need a regular expression that can validate an input string to make sure it is a number between 1 - 30 and up to 2 decimal places.
;; source: REGEL (stackoverflow/23) — gt=and(not(<0>),or(concat(concat(<3>,<0>),optional(concat(<.>,repeatrange(<0>,1,2)))),concat(optional(or(<1>,<2>)),concat(<num>,optional(concat(<.>,repeatrange(<num>,1,2)))))))
;; examples: 6, constraints: 6, max_len: 5

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x2E) ($x30) ($x31) ($x32) ($x33) ($x34) ($x35) ($x39)
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
            ($x2E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 46))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 46))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 46))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 46))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 46))) (= X_5_5 false))
            )
            ($x30
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 48))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 48))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 48))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 48))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 48))) (= X_5_5 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 49))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 49))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 49))) (= X_5_5 false))
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
            ($x35
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 53))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 53))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 53))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 53))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 53))) (= X_5_5 false))
            )
            ($x39
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 57))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_0_5 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 57))) (= X_1_3 false) (= X_1_4 false) (= X_1_5 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 57))) (= X_2_4 false) (= X_2_5 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 57))) (= X_3_5 false) (= X_4_4 false) (= X_4_5 (and (< 4 len) (= s_4 57))) (= X_5_5 false))
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

(constraint (Start.Sem match_regex 1 52 0 0 0 0 true))
(constraint (Start.Sem match_regex 5 49 48 46 50 53 true))
(constraint (Start.Sem match_regex 4 49 53 46 51 0 true))
(constraint (Start.Sem match_regex 5 50 57 46 57 57 true))
(constraint (Start.Sem match_regex 2 51 48 0 0 0 true))
(constraint (Start.Sem match_regex 5 51 48 46 48 49 false))
(check-synth)
