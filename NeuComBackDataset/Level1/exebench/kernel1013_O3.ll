; ModuleID = '../benchmarks/fine_grained/exebench/kernel1013.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1013.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aint0 = dso_local local_unnamed_addr global i32 0, align 4
@failures = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @compare_int_to_lits2() local_unnamed_addr #0 {
  %1 = load i32, ptr @aint0, align 4, !tbaa !5
  switch i32 %1, label %2 [
    i32 0, label %4
    i32 1, label %7
    i32 7, label %10
    i32 5, label %16
  ]

2:                                                ; preds = %0
  %3 = load i32, ptr @failures, align 4, !tbaa !5
  br label %13

4:                                                ; preds = %0
  %5 = load i32, ptr @failures, align 4, !tbaa !5
  %6 = add nsw i32 %5, 1
  br label %13

7:                                                ; preds = %0
  %8 = load i32, ptr @failures, align 4, !tbaa !5
  %9 = add nsw i32 %8, 1
  br label %13

10:                                               ; preds = %0
  %11 = load i32, ptr @failures, align 4, !tbaa !5
  %12 = add nsw i32 %11, 1
  br label %13

13:                                               ; preds = %2, %7, %4, %10
  %14 = phi i32 [ %3, %2 ], [ %9, %7 ], [ %6, %4 ], [ %12, %10 ]
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @failures, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %0, %13
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
