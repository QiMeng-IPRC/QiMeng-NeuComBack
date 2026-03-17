; ModuleID = '../benchmarks/fine_grained/exebench/kernel570.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel570.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @rational_best_approximation(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %6, %16
  %9 = phi i64 [ %10, %16 ], [ %0, %6 ]
  %10 = phi i64 [ %18, %16 ], [ %1, %6 ]
  %11 = phi i64 [ %22, %16 ], [ 0, %6 ]
  %12 = phi i64 [ %20, %16 ], [ 1, %6 ]
  %13 = phi i64 [ %11, %16 ], [ 1, %6 ]
  %14 = phi i64 [ %12, %16 ], [ 0, %6 ]
  %15 = icmp eq i64 %10, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8
  %17 = udiv i64 %9, %10
  %18 = urem i64 %9, %10
  %19 = mul i64 %17, %12
  %20 = add i64 %19, %14
  %21 = mul i64 %17, %11
  %22 = add i64 %21, %13
  %23 = icmp ugt i64 %20, %2
  %24 = icmp ugt i64 %22, %3
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %8

26:                                               ; preds = %8, %16, %6
  %27 = phi i64 [ 0, %6 ], [ %12, %16 ], [ %12, %8 ]
  %28 = phi i64 [ 1, %6 ], [ %11, %16 ], [ %11, %8 ]
  store i64 %27, ptr %4, align 8, !tbaa !5
  store i64 %28, ptr %5, align 8, !tbaa !5
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
