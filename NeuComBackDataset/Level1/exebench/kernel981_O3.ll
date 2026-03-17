; ModuleID = '../benchmarks/fine_grained/exebench/kernel981.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel981.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_bit = dso_local local_unnamed_addr global i32 0, align 4
@reduce_action = dso_local local_unnamed_addr global i32 0, align 4
@global_action = dso_local local_unnamed_addr global i32 0, align 4
@reduce_peer = dso_local local_unnamed_addr global i32 0, align 4
@global_peer = dso_local local_unnamed_addr global i32 0, align 4
@reduce_done = dso_local local_unnamed_addr global i32 0, align 4
@global_done = dso_local local_unnamed_addr global i32 0, align 4
@reduce_shift = dso_local local_unnamed_addr global i32 0, align 4
@global_shift = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @reduce_begin() local_unnamed_addr #0 {
  store i32 1, ptr @global_bit, align 4, !tbaa !5
  %1 = load i32, ptr @reduce_action, align 4, !tbaa !5
  store i32 %1, ptr @global_action, align 4, !tbaa !5
  %2 = load i32, ptr @reduce_peer, align 4, !tbaa !5
  store i32 %2, ptr @global_peer, align 4, !tbaa !5
  %3 = load i32, ptr @reduce_done, align 4, !tbaa !5
  store i32 %3, ptr @global_done, align 4, !tbaa !5
  %4 = load i32, ptr @reduce_shift, align 4, !tbaa !5
  store i32 %4, ptr @global_shift, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
