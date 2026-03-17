; ModuleID = '../benchmarks/fine_grained/exebench/kernel837.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel837.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp_cst1 = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@exp_cst2 = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @expapprox(float noundef %0) local_unnamed_addr #0 {
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 0x4167154760000000, float 0x41CFC00000000000)
  %3 = load float, ptr @exp_cst1, align 4
  %4 = fcmp olt float %2, %3
  %5 = select i1 %4, float %2, float %3
  %6 = load float, ptr @exp_cst2, align 4
  %7 = fcmp ogt float %5, %6
  %8 = select i1 %7, float %5, float %6
  %9 = fptosi float %8 to i32
  %10 = and i32 %9, 2139095040
  %11 = and i32 %9, 8388607
  %12 = or i32 %11, 1065353216
  %13 = bitcast i32 %12 to float
  %14 = bitcast i32 %10 to float
  %15 = tail call float @llvm.fmuladd.f32(float %13, float 0x3F8BFF8DC0000000, float 0xBF6799C2A0000000)
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float 0x3FC585B960000000)
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %16, float 0x3FD3E20820000000)
  %18 = tail call float @llvm.fmuladd.f32(float %13, float %17, float 0x3FE0552CE0000000)
  %19 = fmul float %18, %14
  ret float %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
