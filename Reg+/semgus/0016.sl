;; Reg+_0016: lines without a character , a vowel , or a capital letter
;; source: REGEL (deepregex/16) — gt=not(or(or(<any>,<vow>),<cap>))
;; examples: 8, constraints: 8, max_len: 1

;; (set-info :format-version "2.2.0")
;; (set-info :author "Chentian Wu")
(declare-term-types
    ((Start 0) (R 0))
    (
        (($eval R))
        (
            ($any) ($digit) ($lower) ($upper) ($alpha) ($alnum) ($word) ($space) ($hex) ($x1B) ($x21) ($x22) ($x23) ($x24) ($x25) ($x26) ($x27) ($x28) ($x29) ($x2A) ($x2C) ($x2D) ($x2E) ($x2F) ($x3A) ($x3B) ($x3C) ($x3E) ($x3F) ($x40) ($x5B) ($x5C) ($x5E) ($x5F) ($x60) ($x7B) ($x7E)
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
        (Start.Sem ((t Start) (len Int) (s_0 Int) (result Bool)) Bool)
        (R.Sem ((t R) (len Int) (s_0 Int) (X_0_0 Bool) (X_0_1 Bool) (X_1_1 Bool)) Bool)
    )
    (
        (! (match t (
            (($eval t1)
                (or (exists ((X_0_0 Bool) (X_0_1 Bool) (X_1_1 Bool))
                    (and (= len 0) (R.Sem t1 len s_0 X_0_0 X_0_1 X_1_1) (= result X_0_0))
                ) (exists ((X_0_0 Bool) (X_0_1 Bool) (X_1_1 Bool))
                    (and (= len 1) (R.Sem t1 len s_0 X_0_0 X_0_1 X_1_1) (= result X_0_1))
                ))
            )
        )) :input (len s_0) :output (result))
        (! (match t (
            ($any
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) true)) (= X_1_1 false))
            )
            ($digit
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 48 s_0) (<= s_0 57)))) (= X_1_1 false))
            )
            ($lower
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 97 s_0) (<= s_0 122)))) (= X_1_1 false))
            )
            ($upper
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (and (<= 65 s_0) (<= s_0 90)))) (= X_1_1 false))
            )
            ($alpha
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))))) (= X_1_1 false))
            )
            ($alnum
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))) (and (<= 48 s_0) (<= s_0 57))))) (= X_1_1 false))
            )
            ($word
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (or (or (and (<= 65 s_0) (<= s_0 90)) (and (<= 97 s_0) (<= s_0 122))) (and (<= 48 s_0) (<= s_0 57))) (= s_0 95)))) (= X_1_1 false))
            )
            ($space
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (= s_0 32) (= s_0 9) (= s_0 10)))) (= X_1_1 false))
            )
            ($hex
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (or (and (<= 48 s_0) (<= s_0 57)) (and (<= 97 s_0) (<= s_0 102)) (and (<= 65 s_0) (<= s_0 70))))) (= X_1_1 false))
            )
            ($x1B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 27))) (= X_1_1 false))
            )
            ($x21
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 33))) (= X_1_1 false))
            )
            ($x22
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 34))) (= X_1_1 false))
            )
            ($x23
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 35))) (= X_1_1 false))
            )
            ($x24
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 36))) (= X_1_1 false))
            )
            ($x25
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 37))) (= X_1_1 false))
            )
            ($x26
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 38))) (= X_1_1 false))
            )
            ($x27
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 39))) (= X_1_1 false))
            )
            ($x28
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 40))) (= X_1_1 false))
            )
            ($x29
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 41))) (= X_1_1 false))
            )
            ($x2A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 42))) (= X_1_1 false))
            )
            ($x2C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 44))) (= X_1_1 false))
            )
            ($x2D
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 45))) (= X_1_1 false))
            )
            ($x2E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 46))) (= X_1_1 false))
            )
            ($x2F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 47))) (= X_1_1 false))
            )
            ($x3A
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 58))) (= X_1_1 false))
            )
            ($x3B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 59))) (= X_1_1 false))
            )
            ($x3C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 60))) (= X_1_1 false))
            )
            ($x3E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 62))) (= X_1_1 false))
            )
            ($x3F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 63))) (= X_1_1 false))
            )
            ($x40
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 64))) (= X_1_1 false))
            )
            ($x5B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 91))) (= X_1_1 false))
            )
            ($x5C
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 92))) (= X_1_1 false))
            )
            ($x5E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 94))) (= X_1_1 false))
            )
            ($x5F
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 95))) (= X_1_1 false))
            )
            ($x60
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 96))) (= X_1_1 false))
            )
            ($x7B
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 123))) (= X_1_1 false))
            )
            ($x7E
                (and (= X_0_0 false) (= X_0_1 (and (< 0 len) (= s_0 126))) (= X_1_1 false))
            )
            (($or t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (R.Sem t2 len s_0 B_0_0 B_0_1 B_1_1) (and (= X_0_0 (or A_0_0 B_0_0)) (= X_0_1 (or A_0_1 B_0_1)) (= X_1_1 (or A_1_1 B_1_1))))
                )
            )
            (($concat t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (R.Sem t2 len s_0 B_0_0 B_0_1 B_1_1) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (or (and A_0_0 B_0_1) (and A_0_1 B_1_1))) (= X_1_1 (and A_1_1 B_1_1))))
                )
            )
            (($inter t1 t2)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (B_0_0 Bool) (B_0_1 Bool) (B_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (R.Sem t2 len s_0 B_0_0 B_0_1 B_1_1) (and (= X_0_0 (and A_0_0 B_0_0)) (= X_0_1 (and A_0_1 B_0_1)) (= X_1_1 (and A_1_1 B_1_1))))
                )
            )
            (($question t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (and (= X_0_0 true) (= X_0_1 A_0_1) (= X_1_1 true)))
                )
            )
            (($plus t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_1_1 true)) (and (= X_0_0 false) (= X_0_1 (and A_0_1 S_1_1)) (= X_1_1 false)))
                )
            )
            (($star t1)
                (exists
                    ((A_0_0 Bool) (A_0_1 Bool) (A_1_1 Bool) (S_0_0 Bool) (S_0_1 Bool) (S_1_1 Bool))
                    (and (R.Sem t1 len s_0 A_0_0 A_0_1 A_1_1) (and (= S_0_0 true) (= S_0_1 (and A_0_1 S_1_1)) (= S_1_1 true)) (and (= X_0_0 S_0_0) (= X_0_1 S_0_1) (= X_1_1 S_1_1)))
                )
            )
        )) :input (len s_0) :output (X_0_0 X_0_1 X_1_1))
    )
)

(synth-fun match_regex() Start)

(constraint (Start.Sem match_regex 1 97 false))
(constraint (Start.Sem match_regex 1 101 false))
(constraint (Start.Sem match_regex 1 98 false))
(constraint (Start.Sem match_regex 1 65 false))
(constraint (Start.Sem match_regex 1 87 false))
(constraint (Start.Sem match_regex 1 49 false))
(constraint (Start.Sem match_regex 1 64 false))
(constraint (Start.Sem match_regex 0 0 true))
(check-synth)
