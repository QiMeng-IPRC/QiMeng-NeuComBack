; ModuleID = '../benchmarks/fine_grained/exebench/kernel31.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_litobj = type { float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @GX_InitLightDistAttn(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp olt float %2, 0.000000e+00
  %7 = or i1 %5, %6
  %8 = fcmp oge float %2, 1.000000e+00
  %9 = or i1 %8, %7
  %10 = select i1 %9, i32 129, i32 %3
  switch i32 %10, label %32 [
    i32 131, label %11
    i32 130, label %16
    i32 128, label %26
  ]

11:                                               ; preds = %4
  %12 = fsub float 1.000000e+00, %2
  %13 = fmul float %1, %2
  %14 = fdiv float %12, %13
  %15 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %14, i64 0
  br label %32

16:                                               ; preds = %4
  %17 = fsub float 1.000000e+00, %2
  %18 = fmul float %17, 5.000000e-01
  %19 = fmul float %1, %2
  %20 = fmul float %19, %1
  %21 = insertelement <2 x float> poison, float %18, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x float> poison, float %19, i64 0
  %24 = insertelement <2 x float> %23, float %20, i64 1
  %25 = fdiv <2 x float> %22, %24
  br label %32

26:                                               ; preds = %4
  %27 = fsub float 1.000000e+00, %2
  %28 = fmul float %1, %2
  %29 = fmul float %28, %1
  %30 = fdiv float %27, %29
  %31 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %30, i64 1
  br label %32

32:                                               ; preds = %4, %26, %16, %11
  %33 = phi <2 x float> [ %31, %26 ], [ %25, %16 ], [ %15, %11 ], [ zeroinitializer, %4 ]
  store float 1.000000e+00, ptr %0, align 4, !tbaa !5
  %34 = getelementptr inbounds %struct.__gx_litobj, ptr %0, i64 0, i32 1
  store <2 x float> %33, ptr %34, align 4, !tbaa !10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__gx_litobj", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
