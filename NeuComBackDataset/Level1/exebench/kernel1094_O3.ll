; ModuleID = '../benchmarks/fine_grained/exebench/kernel1094.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1094.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, double }

@QP_DO_NEVER = dso_local local_unnamed_addr global i64 0, align 8
@QP_DO_ONCE = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @qp_check_update(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = load i64, ptr @QP_DO_NEVER, align 8, !tbaa !11
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr @QP_DO_ONCE, align 8, !tbaa !11
  %8 = icmp eq i64 %3, %7
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !12
  %11 = fcmp ogt double %10, 0.000000e+00
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %23, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %15 = fcmp ole double %10, 0.000000e+00
  %16 = fcmp ogt double %10, %1
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = fsub double %1, %10
  %20 = sitofp i64 %3 to double
  %21 = fcmp ult double %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %13
  store double %1, ptr %14, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %22, %6, %18, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %18 ], [ 0, %6 ], [ 1, %22 ]
  ret i32 %24
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !10, i64 8}
