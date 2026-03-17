; ModuleID = '../benchmarks/fine_grained/exebench/kernel558.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel558.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GPS_Math_Deg_To_DegMinSec(double noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = fcmp uge double %0, 0.000000e+00
  %6 = fneg double %0
  %7 = select i1 %5, double %0, double %6
  %8 = fptosi double %7 to i32
  store i32 %8, ptr %1, align 4, !tbaa !5
  %9 = sitofp i32 %8 to double
  %10 = fsub double %7, %9
  %11 = fmul double %10, 6.000000e+01
  %12 = load i32, ptr %2, align 4, !tbaa !5
  %13 = sitofp i32 %12 to double
  %14 = fsub double %11, %13
  %15 = fmul double %14, 6.000000e+01
  %16 = fcmp ogt double %15, 5.999900e+01
  %17 = fadd double %11, 1.000000e+00
  %18 = select i1 %16, double 0.000000e+00, double %15
  %19 = select i1 %16, double %17, double %11
  store double %18, ptr %3, align 8, !tbaa !9
  %20 = fcmp ogt double %19, 5.999900e+01
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = add nsw i32 %8, 1
  store i32 %22, ptr %1, align 4, !tbaa !5
  br label %23

23:                                               ; preds = %21, %4
  %24 = phi double [ 0.000000e+00, %21 ], [ %19, %4 ]
  %25 = fptosi double %24 to i32
  store i32 %25, ptr %2, align 4, !tbaa !5
  br i1 %5, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4, !tbaa !5
  %28 = sub nsw i32 0, %27
  store i32 %28, ptr %1, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %26, %23
  ret void
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
