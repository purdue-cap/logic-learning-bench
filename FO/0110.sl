(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/liveness/tlb_pcrel.ivy:tlb12")

(require "theories/tlb_pcrel-ea683e8e.sl")

(define-model P0
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N0
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N1
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N2
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N3
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N4
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N5
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P1
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N6
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_1))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N7
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N8
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N9
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_1))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N10
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_1))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N11
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N12
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N13
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P2
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N14
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N15
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_1))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N16
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N17
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_1))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N18
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N19
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N20
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N21
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N22
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N23
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N24
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N25
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N26
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N27
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N28
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N29
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N30
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N31
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N32
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N33
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N34
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N35
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N36
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N37
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N38
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N39
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N40
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N41
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N42
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N43
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P3
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P4
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P5
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N44
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N45
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N46
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N47
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P6
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N48
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N49
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N50
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N51
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N52
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N53
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N54
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N55
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N56
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P7
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N57
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N58
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N59
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N60
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P8
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P9
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P10
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N61
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N62
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N63
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N64
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N65
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P11
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N66
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P12
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N67
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N68
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model N69
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.processor_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((@uc_tlb.processor_1) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(define-model P13
  (define-univ tlb.pageentry (@uc_tlb.pageentry_0))
  (define-univ tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (define-univ tlb.processor (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
    ((@uc_tlb.pmap_1) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.tlb (match (
    ((@uc_tlb.processor_0) @uc_tlb.pageentry_0)
    ((_) @uc_tlb.pageentry_0)
  )))
  (interp-fun tlb.userpmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_0)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.writepmap (match (
    ((@uc_tlb.processor_0) @uc_tlb.pmap_1)
    ((_) @uc_tlb.pmap_0)
  )))
  (interp-fun tlb.actionlock (match (
    ((_) false)
  )))
  (interp-fun tlb.actionneeded (match (
    ((_) false)
  )))
  (interp-fun tlb.active (match (
    ((_) false)
  )))
  (interp-fun tlb.currentcpu (match (
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i11 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i6 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_m5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r1 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r5 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r6 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r8 (match (
    ((_) false)
  )))
  (interp-fun tlb.plock (match (
    ((_) false)
  )))
  (interp-fun tlb.scheduled (match (
    ((_) false)
  )))
  (interp-fun tlb.todo (match (
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (FO.Sem phi (FO.Asp P9)))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))
(constraint (FO.Sem phi (FO.Asp P12)))
(constraint (FO.Sem phi (FO.Asp P13)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (not (FO.Sem phi (FO.Asp N8))))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (not (FO.Sem phi (FO.Asp N10))))
(constraint (not (FO.Sem phi (FO.Asp N11))))
(constraint (not (FO.Sem phi (FO.Asp N12))))
(constraint (not (FO.Sem phi (FO.Asp N13))))
(constraint (not (FO.Sem phi (FO.Asp N14))))
(constraint (not (FO.Sem phi (FO.Asp N15))))
(constraint (not (FO.Sem phi (FO.Asp N16))))
(constraint (not (FO.Sem phi (FO.Asp N17))))
(constraint (not (FO.Sem phi (FO.Asp N18))))
(constraint (not (FO.Sem phi (FO.Asp N19))))
(constraint (not (FO.Sem phi (FO.Asp N20))))
(constraint (not (FO.Sem phi (FO.Asp N21))))
(constraint (not (FO.Sem phi (FO.Asp N22))))
(constraint (not (FO.Sem phi (FO.Asp N23))))
(constraint (not (FO.Sem phi (FO.Asp N24))))
(constraint (not (FO.Sem phi (FO.Asp N25))))
(constraint (not (FO.Sem phi (FO.Asp N26))))
(constraint (not (FO.Sem phi (FO.Asp N27))))
(constraint (not (FO.Sem phi (FO.Asp N28))))
(constraint (not (FO.Sem phi (FO.Asp N29))))
(constraint (not (FO.Sem phi (FO.Asp N30))))
(constraint (not (FO.Sem phi (FO.Asp N31))))
(constraint (not (FO.Sem phi (FO.Asp N32))))
(constraint (not (FO.Sem phi (FO.Asp N33))))
(constraint (not (FO.Sem phi (FO.Asp N34))))
(constraint (not (FO.Sem phi (FO.Asp N35))))
(constraint (not (FO.Sem phi (FO.Asp N36))))
(constraint (not (FO.Sem phi (FO.Asp N37))))
(constraint (not (FO.Sem phi (FO.Asp N38))))
(constraint (not (FO.Sem phi (FO.Asp N39))))
(constraint (not (FO.Sem phi (FO.Asp N40))))
(constraint (not (FO.Sem phi (FO.Asp N41))))
(constraint (not (FO.Sem phi (FO.Asp N42))))
(constraint (not (FO.Sem phi (FO.Asp N43))))
(constraint (not (FO.Sem phi (FO.Asp N44))))
(constraint (not (FO.Sem phi (FO.Asp N45))))
(constraint (not (FO.Sem phi (FO.Asp N46))))
(constraint (not (FO.Sem phi (FO.Asp N47))))
(constraint (not (FO.Sem phi (FO.Asp N48))))
(constraint (not (FO.Sem phi (FO.Asp N49))))
(constraint (not (FO.Sem phi (FO.Asp N50))))
(constraint (not (FO.Sem phi (FO.Asp N51))))
(constraint (not (FO.Sem phi (FO.Asp N52))))
(constraint (not (FO.Sem phi (FO.Asp N53))))
(constraint (not (FO.Sem phi (FO.Asp N54))))
(constraint (not (FO.Sem phi (FO.Asp N55))))
(constraint (not (FO.Sem phi (FO.Asp N56))))
(constraint (not (FO.Sem phi (FO.Asp N57))))
(constraint (not (FO.Sem phi (FO.Asp N58))))
(constraint (not (FO.Sem phi (FO.Asp N59))))
(constraint (not (FO.Sem phi (FO.Asp N60))))
(constraint (not (FO.Sem phi (FO.Asp N61))))
(constraint (not (FO.Sem phi (FO.Asp N62))))
(constraint (not (FO.Sem phi (FO.Asp N63))))
(constraint (not (FO.Sem phi (FO.Asp N64))))
(constraint (not (FO.Sem phi (FO.Asp N65))))
(constraint (not (FO.Sem phi (FO.Asp N66))))
(constraint (not (FO.Sem phi (FO.Asp N67))))
(constraint (not (FO.Sem phi (FO.Asp N68))))
(constraint (not (FO.Sem phi (FO.Asp N69))))

(check-synth)
