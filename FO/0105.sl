(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/liveness/tlb_pcrel.ivy:tlb")

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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i4 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.pmap_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model N1
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.pmap_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N3
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.pmap_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model N5
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
    ((@uc_tlb.processor_0) true)
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

(define-model N6
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i15 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N7
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
    ((@uc_tlb.processor_0) true)
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

(define-model N8
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N10
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
    ((@uc_tlb.processor_0) true)
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

(define-model N11
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model N12
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
    ((@uc_tlb.processor_0) true)
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

(define-model N13
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model N15
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i12 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N16
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N17
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model N19
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N21
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_i14 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model N22
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
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i9 (match (
    ((@uc_tlb.processor_0) true)
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
    ((_) false)
  )))
  (interp-fun tlb.pc_i7 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_i8 (match (
    ((@uc_tlb.processor_0) true)
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

(check-synth)
