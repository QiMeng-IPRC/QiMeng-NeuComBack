; ModuleID = '../benchmarks/fine_grained/exebench/kernel495.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel495.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @mm_setr_clipped_pd(ptr noundef returned writeonly %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load double, ptr %4, align 8, !tbaa !5
  %7 = fcmp olt double %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load double, ptr %3, align 8, !tbaa !5
  %10 = fcmp ogt double %9, %1
  %11 = select i1 %10, double %9, double %1
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi double [ %6, %5 ], [ %11, %8 ]
  store double %13, ptr %0, align 8, !tbaa !5
  %14 = getelementptr inbounds double, ptr %4, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !5
  %16 = fcmp olt double %15, %2
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds double, ptr %0, i64 1
  store double %15, ptr %18, align 8, !tbaa !5
  br label %26

19:                                               ; preds = %12
  %20 = getelementptr inbounds double, ptr %3, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !5
  %22 = fcmp ogt double %21, %2
  %23 = getelementptr inbounds double, ptr %0, i64 1
  br i1 %22, label %24, label %25

24:                                               ; preds = %19
  store double %21, ptr %23, align 8, !tbaa !5
  br label %26

25:                                               ; preds = %19
  store double %2, ptr %23, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %24, %25, %17
  ret ptr %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
