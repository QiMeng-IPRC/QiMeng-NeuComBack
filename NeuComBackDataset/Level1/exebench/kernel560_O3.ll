; ModuleID = '../benchmarks/fine_grained/exebench/kernel560.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel560.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double, double, double, double }

@bbox = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @cover(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @bbox, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store double %0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 2), align 8, !tbaa !11
  store double %0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 1), align 8, !tbaa !12
  store double %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 4), align 8, !tbaa !13
  store double %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 3), align 8, !tbaa !14
  store i32 1, ptr @bbox, align 8, !tbaa !5
  br label %22

6:                                                ; preds = %2
  %7 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 1), align 8, !tbaa !12
  %8 = fcmp ogt double %7, %0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store double %0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 1), align 8, !tbaa !12
  br label %10

10:                                               ; preds = %9, %6
  %11 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 3), align 8, !tbaa !14
  %12 = fcmp ogt double %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store double %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 3), align 8, !tbaa !14
  br label %14

14:                                               ; preds = %13, %10
  %15 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 2), align 8, !tbaa !11
  %16 = fcmp olt double %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store double %0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 2), align 8, !tbaa !11
  br label %18

18:                                               ; preds = %17, %14
  %19 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 4), align 8, !tbaa !13
  %20 = fcmp olt double %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store double %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i64 0, i32 4), align 8, !tbaa !13
  br label %22

22:                                               ; preds = %18, %21, %5
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!6, !10, i64 16}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !10, i64 32}
!14 = !{!6, !10, i64 24}
