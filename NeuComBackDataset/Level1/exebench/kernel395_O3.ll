; ModuleID = '../benchmarks/fine_grained/exebench/kernel395.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel395.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @check_prime(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 4
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = lshr i32 %0, 1
  %5 = add nuw nsw i32 %4, 1
  br label %6

6:                                                ; preds = %3, %10
  %7 = phi i32 [ %11, %10 ], [ 2, %3 ]
  %8 = srem i32 %0, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %7, %4
  br i1 %12, label %13, label %6, !llvm.loop !5

13:                                               ; preds = %6, %10, %1
  %14 = phi i32 [ 2, %1 ], [ %5, %10 ], [ %7, %6 ]
  %15 = phi i32 [ 2, %1 ], [ 2, %10 ], [ 10, %6 ]
  store i32 %14, ptr @x, align 4, !tbaa !7
  ret i32 %15
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
