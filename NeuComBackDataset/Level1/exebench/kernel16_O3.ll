; ModuleID = '../benchmarks/fine_grained/exebench/kernel16.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double }

@kn = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@nu = dso_local local_unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local double @compute_force_right_wall(i32 noundef %0, ptr nocapture noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %4, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !10
  %9 = fadd double %6, %8
  %10 = fsub double %2, %9
  %11 = fcmp olt double %10, 0.000000e+00
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %4, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !11
  %15 = load double, ptr @kn, align 8, !tbaa !12
  %16 = fneg double %15
  %17 = load double, ptr @nu, align 8, !tbaa !12
  %18 = fmul double %14, %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %10, double %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %4, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = fsub double %21, %19
  store double %22, ptr %20, align 8, !tbaa !13
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %4, i32 4
  %24 = load double, ptr %23, align 8, !tbaa !14
  %25 = fadd double %19, %24
  store double %25, ptr %23, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %3, %12
  %27 = phi double [ %19, %12 ], [ 0.000000e+00, %3 ]
  ret double %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 32}
