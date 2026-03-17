; ModuleID = '../benchmarks/fine_grained/exebench/kernel194.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel194.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOSH_sched_free = dso_local local_unnamed_addr global ptr null, align 8
@TOSH_sched_full = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @TOSH_sched_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @TOSH_sched_free, align 8, !tbaa !5
  %2 = load ptr, ptr @TOSH_sched_full, align 8, !tbaa !5
  store i64 0, ptr %1, align 8, !tbaa !9
  store i64 0, ptr %2, align 8, !tbaa !9
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 0, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds i64, ptr %2, i64 1
  store i64 0, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 0, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds i64, ptr %2, i64 2
  store i64 0, ptr %6, align 8, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
