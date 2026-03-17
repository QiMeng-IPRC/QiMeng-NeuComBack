; ModuleID = '../benchmarks/fine_grained/exebench/kernel1342.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1342.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@playerX = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@playerY = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@nearestEnemyD = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@nearestEnemyX = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@nearestEnemyY = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @draw_enemy(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load float, ptr @playerX, align 4, !tbaa !5
  %4 = fsub float %0, %3
  %5 = load float, ptr @playerY, align 4, !tbaa !5
  %6 = fsub float %1, %5
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = load float, ptr @nearestEnemyD, align 4, !tbaa !5
  %10 = fcmp olt float %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store float %0, ptr @nearestEnemyX, align 4, !tbaa !5
  store float %1, ptr @nearestEnemyY, align 4, !tbaa !5
  store float %8, ptr @nearestEnemyD, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %11, %2
  ret void
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
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
