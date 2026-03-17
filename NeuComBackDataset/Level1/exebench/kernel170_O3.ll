; ModuleID = '../benchmarks/fine_grained/exebench/kernel170.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @F_influenza(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %1, i64 3
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = load ptr, ptr @x, align 8, !tbaa !9
  %12 = getelementptr inbounds float, ptr %11, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = fneg float %13
  %15 = fmul float %4, %14
  %16 = fmul float %10, %15
  store float %16, ptr %2, align 4, !tbaa !5
  %17 = load float, ptr %12, align 4, !tbaa !5
  %18 = fmul float %4, %17
  %19 = getelementptr inbounds float, ptr %11, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = fneg float %6
  %22 = fdiv float %21, %20
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %10, float %22)
  %24 = getelementptr inbounds float, ptr %2, i64 1
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = load float, ptr %19, align 4, !tbaa !5
  %26 = fdiv float %6, %25
  %27 = getelementptr inbounds float, ptr %11, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = fdiv float %8, %28
  %30 = fsub float %26, %29
  %31 = getelementptr inbounds float, ptr %2, i64 2
  store float %30, ptr %31, align 4, !tbaa !5
  %32 = getelementptr inbounds float, ptr %11, i64 4
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = fmul float %8, %33
  %35 = getelementptr inbounds float, ptr %11, i64 5
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = fdiv float %34, %36
  %38 = getelementptr inbounds float, ptr %11, i64 6
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = fneg float %39
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %10, float %37)
  %42 = getelementptr inbounds float, ptr %2, i64 3
  store float %41, ptr %42, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = !{!"any pointer", !7, i64 0}
