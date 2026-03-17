; ModuleID = '../benchmarks/fine_grained/exebench/kernel1342.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1342.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@playerX = dso_local global float 0.000000e+00, align 4
@playerY = dso_local global float 0.000000e+00, align 4
@nearestEnemyD = dso_local global float 0.000000e+00, align 4
@nearestEnemyX = dso_local global float 0.000000e+00, align 4
@nearestEnemyY = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_enemy(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, ptr %3, align 4
  store float %1, ptr %4, align 4
  %6 = load float, ptr %3, align 4
  %7 = load float, ptr @playerX, align 4
  %8 = fsub float %6, %7
  %9 = load float, ptr %3, align 4
  %10 = load float, ptr @playerX, align 4
  %11 = fsub float %9, %10
  %12 = load float, ptr %4, align 4
  %13 = load float, ptr @playerY, align 4
  %14 = fsub float %12, %13
  %15 = load float, ptr %4, align 4
  %16 = load float, ptr @playerY, align 4
  %17 = fsub float %15, %16
  %18 = fmul float %14, %17
  %19 = call float @llvm.fmuladd.f32(float %8, float %11, float %18)
  store float %19, ptr %5, align 4
  %20 = load float, ptr %5, align 4
  %21 = load float, ptr @nearestEnemyD, align 4
  %22 = fcmp olt float %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load float, ptr %3, align 4
  store float %24, ptr @nearestEnemyX, align 4
  %25 = load float, ptr %4, align 4
  store float %25, ptr @nearestEnemyY, align 4
  %26 = load float, ptr %5, align 4
  store float %26, ptr @nearestEnemyD, align 4
  br label %27

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
