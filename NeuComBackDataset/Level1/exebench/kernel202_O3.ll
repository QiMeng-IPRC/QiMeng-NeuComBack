; ModuleID = '../benchmarks/fine_grained/exebench/kernel202.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel202.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dispKp = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@dispKi = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@dispKd = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@SampleTime = dso_local local_unnamed_addr global i64 0, align 8
@kp = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@ki = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@kd = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@controllerDirection = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @PIDSetTunings(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = or i1 %4, %5
  %7 = fcmp olt float %2, 0.000000e+00
  %8 = or i1 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  store float %0, ptr @dispKp, align 4, !tbaa !5
  store float %1, ptr @dispKi, align 4, !tbaa !5
  store float %2, ptr @dispKd, align 4, !tbaa !5
  %10 = load i64, ptr @SampleTime, align 8, !tbaa !9
  %11 = sitofp i64 %10 to float
  %12 = fdiv float %11, 1.000000e+03
  store float %0, ptr @kp, align 4, !tbaa !5
  %13 = fmul float %12, %1
  store float %13, ptr @ki, align 4, !tbaa !5
  %14 = fdiv float %2, %12
  store float %14, ptr @kd, align 4, !tbaa !5
  %15 = load i32, ptr @controllerDirection, align 4, !tbaa !11
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = fsub float 0.000000e+00, %0
  store float %18, ptr @kp, align 4, !tbaa !5
  %19 = fsub float 0.000000e+00, %13
  store float %19, ptr @ki, align 4, !tbaa !5
  %20 = fsub float 0.000000e+00, %14
  store float %20, ptr @kd, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %9, %17, %3
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
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
