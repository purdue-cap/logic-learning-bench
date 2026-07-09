;; Reg+_0143: lines that have a character preceding a letter , or containing a number
;; source: REGEL (deepregex/149) — gt=or(concat(<any>,contain(<let>)),contain(<num>))
;; examples: 14, constraints: 14, max_len: 4

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any)
            ($x21) ($x23) ($x31) ($x32) ($x33) ($x34) ($x40) ($x44) ($x47) ($x5E) ($x61) ($x64) ($x65) ($x66) ($x73)
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
        (Start.Sem ((t Start) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (s_1 Int) (s_2 Int) (s_3 Int) (X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_1))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 2) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_2))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 3) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_3))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_0_2 Bool) (X_0_3 Bool) (X_0_4 Bool) (X_1_1 Bool) (X_1_2 Bool) (X_1_3 Bool) (X_1_4 Bool) (X_2_2 Bool) (X_2_3 Bool) (X_2_4 Bool) (X_3_3 Bool) (X_3_4 Bool) (X_4_4 Bool))
                    (and (= len 4) (R.Sem t1 len s_0 s_1 s_2 s_3 X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4) (= result X_0_4))
                ))
            )
        )) :input (len s_0 s_1 s_2 s_3) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (< 0 len)) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (< 1 len)) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (< 2 len)) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (< 3 len)) (= X_4_4 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 33))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 33))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 33))) (= X_4_4 false))
            )
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 35))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 35))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 35))) (= X_4_4 false))
            )
            ($x31
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 49))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 49))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 49))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 49))) (= X_4_4 false))
            )
            ($x32
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 50))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 50))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 50))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 50))) (= X_4_4 false))
            )
            ($x33
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 51))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 51))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 51))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 51))) (= X_4_4 false))
            )
            ($x34
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 52))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 52))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 52))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 52))) (= X_4_4 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 64))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 64))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 64))) (= X_4_4 false))
            )
            ($x44
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 68))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 68))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 68))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 68))) (= X_4_4 false))
            )
            ($x47
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 71))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 71))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 71))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 71))) (= X_4_4 false))
            )
            ($x5E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 94))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 94))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 94))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 94))) (= X_4_4 false))
            )
            ($x61
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 97))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 97))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 97))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 97))) (= X_4_4 false))
            )
            ($x64
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 100))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 100))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 100))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 100))) (= X_4_4 false))
            )
            ($x65
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 101))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 101))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 101))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 101))) (= X_4_4 false))
            )
            ($x66
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 102))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 102))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 102))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 102))) (= X_4_4 false))
            )
            ($x73
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 115))) (= X_0_2 false) (= X_0_3 false) (= X_0_4 false) (= X_1_1 false) (= X_1_2 (and (< 1 len) (= s_1 115))) (= X_1_3 false) (= X_1_4 false) (= X_2_2 false) (= X_2_3 (and (< 2 len) (= s_2 115))) (= X_2_4 false) (= X_3_3 false) (= X_3_4 (and (< 3 len) (= s_3 115))) (= X_4_4 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_0_2 (or A_0_2 B_0_2)) (= X_0_3 (or A_0_3 B_0_3)) (= X_0_4 (or A_0_4 B_0_4)) (= X_1_1 (or A_1_1 B_1_1)) (= X_1_2 (or A_1_2 B_1_2)) (= X_1_3 (or A_1_3 B_1_3)) (= X_1_4 (or A_1_4 B_1_4)) (= X_2_2 (or A_2_2 B_2_2)) (= X_2_3 (or A_2_3 B_2_3)) (= X_2_4 (or A_2_4 B_2_4)) (= X_3_3 (or A_3_3 B_3_3)) (= X_3_4 (or A_3_4 B_3_4)) (= X_4_4 (or A_4_4 B_4_4))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_0_2 (or (and A_0_0 B_0_2) (and A_0_1 B_1_2) (and A_0_2 B_2_2))) (= X_0_3 (or (and A_0_0 B_0_3) (and A_0_1 B_1_3) (and A_0_2 B_2_3) (and A_0_3 B_3_3))) (= X_0_4 (or (and A_0_0 B_0_4) (and A_0_1 B_1_4) (and A_0_2 B_2_4) (and A_0_3 B_3_4) (and A_0_4 B_4_4))) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (or (and A_1_1 B_1_2) (and A_1_2 B_2_2))) (= X_1_3 (or (and A_1_1 B_1_3) (and A_1_2 B_2_3) (and A_1_3 B_3_3))) (= X_1_4 (or (and A_1_1 B_1_4) (and A_1_2 B_2_4) (and A_1_3 B_3_4) (and A_1_4 B_4_4))) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (or (and A_2_2 B_2_3) (and A_2_3 B_3_3))) (= X_2_4 (or (and A_2_2 B_2_4) (and A_2_3 B_3_4) (and A_2_4 B_4_4))) (= X_3_3 (and A_3_3 B_3_3)) (= X_3_4 (or (and A_3_3 B_3_4) (and A_3_4 B_4_4))) (= X_4_4 (and A_4_4 B_4_4))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_0_2 Bool) (B_0_3 Bool) (B_0_4 Bool) (B_1_1 Bool) (B_1_2 Bool) (B_1_3 Bool) (B_1_4 Bool) (B_2_2 Bool) (B_2_3 Bool) (B_2_4 Bool) (B_3_3 Bool) (B_3_4 Bool) (B_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (R.Sem t2 len s_0 s_1 s_2 s_3 B_0_0 B_0_1 B_0_2 B_0_3 B_0_4 B_1_1 B_1_2 B_1_3 B_1_4 B_2_2 B_2_3 B_2_4 B_3_3 B_3_4 B_4_4) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_0_2 (and A_0_2 B_0_2)) (= X_0_3 (and A_0_3 B_0_3)) (= X_0_4 (and A_0_4 B_0_4)) (= X_1_1 (and A_1_1 B_1_1)) (= X_1_2 (and A_1_2 B_1_2)) (= X_1_3 (and A_1_3 B_1_3)) (= X_1_4 (and A_1_4 B_1_4)) (= X_2_2 (and A_2_2 B_2_2)) (= X_2_3 (and A_2_3 B_2_3)) (= X_2_4 (and A_2_4 B_2_4)) (= X_3_3 (and A_3_3 B_3_3)) (= X_3_4 (and A_3_4 B_3_4)) (= X_4_4 (and A_4_4 B_4_4))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_0_2 A_0_2) (= X_0_3 A_0_3) (= X_0_4 A_0_4) (= X_1_1 true) (= X_1_2 A_1_2) (= X_1_3 A_1_3) (= X_1_4 A_1_4) (= X_2_2 true) (= X_2_3 A_2_3) (= X_2_4 A_2_4) (= X_3_3 true) (= X_3_4 A_3_4) (= X_4_4 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_0_4 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_1_4 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_2_4 Bool) (S_3_3 Bool) (S_3_4 Bool) (S_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= S_3_3 true) (= S_3_4 (and A_3_4 S_4_4)) (= S_4_4 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= X_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= X_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= X_1_1 false) (= X_1_2 (and A_1_2 S_2_2)) (= X_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= X_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= X_2_2 false) (= X_2_3 (and A_2_3 S_3_3)) (= X_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= X_3_3 false) (= X_3_4 (and A_3_4 S_4_4)) (= X_4_4 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_0_2 Bool) (A_0_3 Bool) (A_0_4 Bool) (A_1_1 Bool) (A_1_2 Bool) (A_1_3 Bool) (A_1_4 Bool) (A_2_2 Bool) (A_2_3 Bool) (A_2_4 Bool) (A_3_3 Bool) (A_3_4 Bool) (A_4_4 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_0_2 Bool) (S_0_3 Bool) (S_0_4 Bool) (S_1_1 Bool) (S_1_2 Bool) (S_1_3 Bool) (S_1_4 Bool) (S_2_2 Bool) (S_2_3 Bool) (S_2_4 Bool) (S_3_3 Bool) (S_3_4 Bool) (S_4_4 Bool))
                    (and (R.Sem t1 len s_0 s_1 s_2 s_3 A_0_0 A_0_1 A_0_2 A_0_3 A_0_4 A_1_1 A_1_2 A_1_3 A_1_4 A_2_2 A_2_3 A_2_4 A_3_3 A_3_4 A_4_4) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_0_2 (or (and A_0_1 S_1_2) (and A_0_2 S_2_2))) (= S_0_3 (or (and A_0_1 S_1_3) (and A_0_2 S_2_3) (and A_0_3 S_3_3))) (= S_0_4 (or (and A_0_1 S_1_4) (and A_0_2 S_2_4) (and A_0_3 S_3_4) (and A_0_4 S_4_4))) (= S_1_1 true) (= S_1_2 (and A_1_2 S_2_2)) (= S_1_3 (or (and A_1_2 S_2_3) (and A_1_3 S_3_3))) (= S_1_4 (or (and A_1_2 S_2_4) (and A_1_3 S_3_4) (and A_1_4 S_4_4))) (= S_2_2 true) (= S_2_3 (and A_2_3 S_3_3)) (= S_2_4 (or (and A_2_3 S_3_4) (and A_2_4 S_4_4))) (= S_3_3 true) (= S_3_4 (and A_3_4 S_4_4)) (= S_4_4 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_0_2 S_0_2) (= X_0_3 S_0_3) (= X_0_4 S_0_4) (= X_1_1 S_1_1) (= X_1_2 S_1_2) (= X_1_3 S_1_3) (= X_1_4 S_1_4) (= X_2_2 S_2_2) (= X_2_3 S_2_3) (= X_2_4 S_2_4) (= X_3_3 S_3_3) (= X_3_4 S_3_4) (= X_4_4 S_4_4)))
                )
            )
        )) :input (len s_0 s_1 s_2 s_3) :output (X_0_0 X_0_1 X_0_2 X_0_3 X_0_4 X_1_1 X_1_2 X_1_3 X_1_4 X_2_2 X_2_3 X_2_4 X_3_3 X_3_4 X_4_4))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 2 50 68 0 0 true))
(constraint (Start.Sem match_regex 2 97 101 0 0 true))
(constraint (Start.Sem match_regex 1 52 0 0 0 true))
(constraint (Start.Sem match_regex 4 102 101 52 71 true))
(constraint (Start.Sem match_regex 3 49 50 51 0 true))
(constraint (Start.Sem match_regex 4 33 33 102 94 true))
(constraint (Start.Sem match_regex 2 100 115 0 0 true))
(constraint (Start.Sem match_regex 1 115 0 0 0 false))
(constraint (Start.Sem match_regex 1 71 0 0 0 false))
(constraint (Start.Sem match_regex 1 97 0 0 0 false))
(constraint (Start.Sem match_regex 1 33 0 0 0 false))
(constraint (Start.Sem match_regex 2 64 35 0 0 false))
(constraint (Start.Sem match_regex 1 101 0 0 0 false))
(constraint (Start.Sem match_regex 0 0 0 0 0 false))
(check-synth)
