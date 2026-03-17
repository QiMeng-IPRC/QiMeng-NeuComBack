; ModuleID = '../benchmarks/fine_grained/exebench/kernel802.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel802.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@df = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local double @find_df(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load double, ptr @df, align 8, !tbaa !5
  %3 = fcmp oeq double %2, 0.000000e+00
  %4 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @df, i64 0, i32 1), align 8, !tbaa !10
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %3, label %6, label %9

6:                                                ; preds = %1
  br i1 %5, label %13, label %7

7:                                                ; preds = %6
  %8 = fneg double %4
  br label %13

9:                                                ; preds = %1
  br i1 %5, label %13, label %10

10:                                               ; preds = %9
  %11 = icmp eq ptr %0, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %13

13:                                               ; preds = %10, %12, %9, %6, %7
  %14 = phi double [ %8, %7 ], [ 0.000000e+00, %6 ], [ %2, %9 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %10 ]
  ret double %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
