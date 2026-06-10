(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/liveness/tlb_pcrel.ivy:tlb18")

(require "theories/tlb_pcrel-ea683e8e.sl")

(define-model P0
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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

(define-model N2
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model N5
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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

(define-model N6
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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

(define-model N9
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P2
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P3
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P4
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N12
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N13
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N14
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P5
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P6
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P7
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P8
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P9
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P10
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P11
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P12
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P13
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P14
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P15
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P16
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P17
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P18
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P19
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P20
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P21
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P22
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P23
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P24
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P25
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P26
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P27
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P28
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P29
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P30
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P31
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P32
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((_ _) false)
  )))
)

(define-model P33
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P34
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P35
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P36
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P37
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P38
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P39
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P40
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P41
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P42
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P43
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N18
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P44
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P45
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P46
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P47
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P48
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P49
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N19
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_1) true)
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

(define-model P50
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P51
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N20
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P52
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N21
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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

(define-model P53
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P54
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P55
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P56
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P57
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P58
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P59
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P60
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P61
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P62
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P63
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P64
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P65
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P66
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P67
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P68
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P69
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P70
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P71
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P72
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P73
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P74
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P75
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P76
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P77
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P78
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P79
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P80
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P81
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P82
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P83
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P84
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P85
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P86
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P87
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
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

(define-model P88
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P89
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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
    ((@uc_tlb.processor_0) true)
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

(define-model P90
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P91
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P92
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P93
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P94
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P95
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P96
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P97
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P98
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P99
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P100
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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

(define-model P101
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P102
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P103
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P104
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P105
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P106
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P107
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P108
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P109
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P110
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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

(define-model P111
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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

(define-model P112
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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

(define-model P113
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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
    ((@uc_tlb.processor_0) true)
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

(define-model P114
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P115
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P116
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P117
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P118
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P119
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P120
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P121
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P122
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P123
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((_ _) false)
  )))
  (interp-fun tlb.error (false))
  (interp-fun tlb.interrupt (match (
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P124
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P125
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P126
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0))
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

(define-model P127
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model P128
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
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
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N24
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
  (interp-fun tlb.tp1.sk0 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk1 (@uc_tlb.processor_0))
  (interp-fun tlb.tp1.sk2 (@uc_tlb.pmap_0))
  (interp-fun tlb.pentry (match (
    ((@uc_tlb.pmap_0) @uc_tlb.pageentry_0)
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
    ((@uc_tlb.processor_1) true)
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

(define-model N25
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
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
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
    ((_ _) false)
  )))
)

(define-model N26
  (interp-sort tlb.pageentry (@uc_tlb.pageentry_0))
  (interp-sort tlb.pmap (@uc_tlb.pmap_0 @uc_tlb.pmap_1))
  (interp-sort tlb.processor (@uc_tlb.processor_0 @uc_tlb.processor_1))
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
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_b1 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0) true)
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r2 (match (
    ((@uc_tlb.processor_1) true)
    ((_) false)
  )))
  (interp-fun tlb.pc_r3 (match (
    ((@uc_tlb.processor_1) true)
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
    ((@uc_tlb.processor_0 @uc_tlb.processor_0) true)
    ((@uc_tlb.processor_0 @uc_tlb.processor_1) true)
    ((@uc_tlb.processor_1 @uc_tlb.processor_1) true)
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
(constraint (FO.Sem phi (FO.Asp P14)))
(constraint (FO.Sem phi (FO.Asp P15)))
(constraint (FO.Sem phi (FO.Asp P16)))
(constraint (FO.Sem phi (FO.Asp P17)))
(constraint (FO.Sem phi (FO.Asp P18)))
(constraint (FO.Sem phi (FO.Asp P19)))
(constraint (FO.Sem phi (FO.Asp P20)))
(constraint (FO.Sem phi (FO.Asp P21)))
(constraint (FO.Sem phi (FO.Asp P22)))
(constraint (FO.Sem phi (FO.Asp P23)))
(constraint (FO.Sem phi (FO.Asp P24)))
(constraint (FO.Sem phi (FO.Asp P25)))
(constraint (FO.Sem phi (FO.Asp P26)))
(constraint (FO.Sem phi (FO.Asp P27)))
(constraint (FO.Sem phi (FO.Asp P28)))
(constraint (FO.Sem phi (FO.Asp P29)))
(constraint (FO.Sem phi (FO.Asp P30)))
(constraint (FO.Sem phi (FO.Asp P31)))
(constraint (FO.Sem phi (FO.Asp P32)))
(constraint (FO.Sem phi (FO.Asp P33)))
(constraint (FO.Sem phi (FO.Asp P34)))
(constraint (FO.Sem phi (FO.Asp P35)))
(constraint (FO.Sem phi (FO.Asp P36)))
(constraint (FO.Sem phi (FO.Asp P37)))
(constraint (FO.Sem phi (FO.Asp P38)))
(constraint (FO.Sem phi (FO.Asp P39)))
(constraint (FO.Sem phi (FO.Asp P40)))
(constraint (FO.Sem phi (FO.Asp P41)))
(constraint (FO.Sem phi (FO.Asp P42)))
(constraint (FO.Sem phi (FO.Asp P43)))
(constraint (FO.Sem phi (FO.Asp P44)))
(constraint (FO.Sem phi (FO.Asp P45)))
(constraint (FO.Sem phi (FO.Asp P46)))
(constraint (FO.Sem phi (FO.Asp P47)))
(constraint (FO.Sem phi (FO.Asp P48)))
(constraint (FO.Sem phi (FO.Asp P49)))
(constraint (FO.Sem phi (FO.Asp P50)))
(constraint (FO.Sem phi (FO.Asp P51)))
(constraint (FO.Sem phi (FO.Asp P52)))
(constraint (FO.Sem phi (FO.Asp P53)))
(constraint (FO.Sem phi (FO.Asp P54)))
(constraint (FO.Sem phi (FO.Asp P55)))
(constraint (FO.Sem phi (FO.Asp P56)))
(constraint (FO.Sem phi (FO.Asp P57)))
(constraint (FO.Sem phi (FO.Asp P58)))
(constraint (FO.Sem phi (FO.Asp P59)))
(constraint (FO.Sem phi (FO.Asp P60)))
(constraint (FO.Sem phi (FO.Asp P61)))
(constraint (FO.Sem phi (FO.Asp P62)))
(constraint (FO.Sem phi (FO.Asp P63)))
(constraint (FO.Sem phi (FO.Asp P64)))
(constraint (FO.Sem phi (FO.Asp P65)))
(constraint (FO.Sem phi (FO.Asp P66)))
(constraint (FO.Sem phi (FO.Asp P67)))
(constraint (FO.Sem phi (FO.Asp P68)))
(constraint (FO.Sem phi (FO.Asp P69)))
(constraint (FO.Sem phi (FO.Asp P70)))
(constraint (FO.Sem phi (FO.Asp P71)))
(constraint (FO.Sem phi (FO.Asp P72)))
(constraint (FO.Sem phi (FO.Asp P73)))
(constraint (FO.Sem phi (FO.Asp P74)))
(constraint (FO.Sem phi (FO.Asp P75)))
(constraint (FO.Sem phi (FO.Asp P76)))
(constraint (FO.Sem phi (FO.Asp P77)))
(constraint (FO.Sem phi (FO.Asp P78)))
(constraint (FO.Sem phi (FO.Asp P79)))
(constraint (FO.Sem phi (FO.Asp P80)))
(constraint (FO.Sem phi (FO.Asp P81)))
(constraint (FO.Sem phi (FO.Asp P82)))
(constraint (FO.Sem phi (FO.Asp P83)))
(constraint (FO.Sem phi (FO.Asp P84)))
(constraint (FO.Sem phi (FO.Asp P85)))
(constraint (FO.Sem phi (FO.Asp P86)))
(constraint (FO.Sem phi (FO.Asp P87)))
(constraint (FO.Sem phi (FO.Asp P88)))
(constraint (FO.Sem phi (FO.Asp P89)))
(constraint (FO.Sem phi (FO.Asp P90)))
(constraint (FO.Sem phi (FO.Asp P91)))
(constraint (FO.Sem phi (FO.Asp P92)))
(constraint (FO.Sem phi (FO.Asp P93)))
(constraint (FO.Sem phi (FO.Asp P94)))
(constraint (FO.Sem phi (FO.Asp P95)))
(constraint (FO.Sem phi (FO.Asp P96)))
(constraint (FO.Sem phi (FO.Asp P97)))
(constraint (FO.Sem phi (FO.Asp P98)))
(constraint (FO.Sem phi (FO.Asp P99)))
(constraint (FO.Sem phi (FO.Asp P100)))
(constraint (FO.Sem phi (FO.Asp P101)))
(constraint (FO.Sem phi (FO.Asp P102)))
(constraint (FO.Sem phi (FO.Asp P103)))
(constraint (FO.Sem phi (FO.Asp P104)))
(constraint (FO.Sem phi (FO.Asp P105)))
(constraint (FO.Sem phi (FO.Asp P106)))
(constraint (FO.Sem phi (FO.Asp P107)))
(constraint (FO.Sem phi (FO.Asp P108)))
(constraint (FO.Sem phi (FO.Asp P109)))
(constraint (FO.Sem phi (FO.Asp P110)))
(constraint (FO.Sem phi (FO.Asp P111)))
(constraint (FO.Sem phi (FO.Asp P112)))
(constraint (FO.Sem phi (FO.Asp P113)))
(constraint (FO.Sem phi (FO.Asp P114)))
(constraint (FO.Sem phi (FO.Asp P115)))
(constraint (FO.Sem phi (FO.Asp P116)))
(constraint (FO.Sem phi (FO.Asp P117)))
(constraint (FO.Sem phi (FO.Asp P118)))
(constraint (FO.Sem phi (FO.Asp P119)))
(constraint (FO.Sem phi (FO.Asp P120)))
(constraint (FO.Sem phi (FO.Asp P121)))
(constraint (FO.Sem phi (FO.Asp P122)))
(constraint (FO.Sem phi (FO.Asp P123)))
(constraint (FO.Sem phi (FO.Asp P124)))
(constraint (FO.Sem phi (FO.Asp P125)))
(constraint (FO.Sem phi (FO.Asp P126)))
(constraint (FO.Sem phi (FO.Asp P127)))
(constraint (FO.Sem phi (FO.Asp P128)))
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

(check-synth)
