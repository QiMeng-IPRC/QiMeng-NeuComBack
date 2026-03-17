; ModuleID = '../benchmarks/fine_grained/exebench/kernel361.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tax_percent = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@total = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@count = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @add_with_tax(float noundef %0) local_unnamed_addr #0 {
  %2 = load double, ptr @tax_percent, align 8, !tbaa !5
  %3 = fdiv double %2, 1.000000e+02
  %4 = fadd double %3, 1.000000e+00
  %5 = fptrunc double %4 to float
  %6 = load float, ptr @total, align 4, !tbaa !9
  %7 = tail call float @llvm.fmuladd.f32(float %0, float %5, float %6)
  store float %7, ptr @total, align 4, !tbaa !9
  %8 = load i64, ptr @count, align 8, !tbaa !11
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr @count, align 8, !tbaa !11
  ret float %7
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
