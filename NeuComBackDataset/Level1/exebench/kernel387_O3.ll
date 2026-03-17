; ModuleID = '../benchmarks/fine_grained/exebench/kernel387.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel387.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float }
%struct.TYPE_5__ = type { float, float, float, float, float, float, float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @QuaternionToTrfm3D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = fadd float %3, %3
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !10
  %8 = fmul float %4, %7
  %9 = fmul float %3, %4
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  %12 = load <2 x float>, ptr %5, align 4, !tbaa !11
  %13 = fadd <2 x float> %12, %12
  %14 = insertelement <2 x float> poison, float %7, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x float> %13, %15
  %17 = insertelement <2 x float> poison, float %3, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %18, %13
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %21 = extractelement <2 x float> %12, i64 0
  %22 = fmul <2 x float> %12, %13
  %23 = extractelement <2 x float> %22, i64 0
  %24 = extractelement <2 x float> %13, i64 1
  %25 = fmul float %21, %24
  %26 = fmul <2 x float> %12, %13
  %27 = extractelement <2 x float> %26, i64 1
  %28 = fadd float %23, %27
  %29 = fsub float 1.000000e+00, %28
  store float %29, ptr %1, align 4, !tbaa !12
  %30 = fsub <2 x float> %20, %16
  %31 = extractelement <2 x float> %30, i64 1
  store float %31, ptr %10, align 4, !tbaa !14
  %32 = fadd <2 x float> %20, %16
  store <2 x float> %32, ptr %11, align 4, !tbaa !11
  %33 = fadd float %9, %27
  %34 = fsub float 1.000000e+00, %33
  %35 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 4
  store float %34, ptr %35, align 4, !tbaa !15
  %36 = fsub float %25, %8
  %37 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 5
  store float %36, ptr %37, align 4, !tbaa !16
  %38 = fsub <2 x float> %20, %16
  %39 = extractelement <2 x float> %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 6
  store float %39, ptr %40, align 4, !tbaa !17
  %41 = fadd float %25, %8
  %42 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 7
  store float %41, ptr %42, align 4, !tbaa !18
  %43 = fadd float %9, %23
  %44 = fsub float 1.000000e+00, %43
  %45 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 8
  store float %44, ptr %45, align 4, !tbaa !19
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 12}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"TYPE_5__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!14 = !{!13, !7, i64 4}
!15 = !{!13, !7, i64 16}
!16 = !{!13, !7, i64 20}
!17 = !{!13, !7, i64 24}
!18 = !{!13, !7, i64 28}
!19 = !{!13, !7, i64 32}
