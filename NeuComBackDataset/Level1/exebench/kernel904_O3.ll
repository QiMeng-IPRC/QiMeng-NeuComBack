; ModuleID = '../benchmarks/fine_grained/exebench/kernel904.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel904.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@singri = dso_local local_unnamed_addr global i32 0, align 4
@arjunsingri = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@c = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @function(i64 noundef %0, float noundef %1, i64 noundef %2, i16 noundef signext %3, float noundef %4, float noundef %5, i64 noundef %6, float noundef %7, i64 noundef %8) local_unnamed_addr #0 {
  %10 = fadd float %1, 1.000000e+00
  %11 = add nsw i64 %2, 1
  %12 = add i16 %3, 1
  %13 = fadd float %4, 1.000000e+00
  %14 = fadd float %7, 1.000000e+00
  %15 = fptosi float %10 to i64
  %16 = load i32, ptr @singri, align 4, !tbaa !5
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @singri, align 4, !tbaa !5
  %18 = sext i16 %12 to i64
  %19 = sdiv i64 %15, %18
  %20 = sitofp i64 %19 to float
  %21 = fadd float %10, %20
  %22 = sitofp i64 %11 to float
  %23 = fsub float %21, %22
  %24 = fadd float %13, %23
  %25 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %24)
  %26 = fadd float %13, %25
  %27 = load float, ptr @c, align 4, !tbaa !9
  %28 = fadd float %27, %26
  %29 = fptosi float %28 to i16
  %30 = sitofp i64 %8 to float
  %31 = fadd float %14, %30
  %32 = sitofp i16 %29 to float
  %33 = fadd float %31, %32
  %34 = fptosi float %33 to i64
  %35 = sitofp i64 %34 to float
  %36 = fadd float %35, 1.000000e+00
  store float %36, ptr @arjunsingri, align 4, !tbaa !9
  %37 = trunc i64 %34 to i32
  ret i32 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!"float", !7, i64 0}
