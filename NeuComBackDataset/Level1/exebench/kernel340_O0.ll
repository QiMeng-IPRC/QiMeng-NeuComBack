; ModuleID = '../benchmarks/fine_grained/exebench/kernel340.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel340.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { float }

@DC = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdjustFrom640(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr @DC, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = load float, ptr %12, align 4
  %14 = fmul float %13, %11
  store float %14, ptr %12, align 4
  %15 = load ptr, ptr @DC, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 1
  %17 = load float, ptr %16, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = load float, ptr %18, align 4
  %20 = fmul float %19, %17
  store float %20, ptr %18, align 4
  %21 = load ptr, ptr @DC, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 0
  %23 = load float, ptr %22, align 4
  %24 = load ptr, ptr %7, align 8
  %25 = load float, ptr %24, align 4
  %26 = fmul float %25, %23
  store float %26, ptr %24, align 4
  %27 = load ptr, ptr @DC, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, ptr %27, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load float, ptr %30, align 4
  %32 = fmul float %31, %29
  store float %32, ptr %30, align 4
  %33 = load ptr, ptr @DC, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = fcmp ogt float %36, 0x3FF5555560000000
  br i1 %37, label %38, label %55

38:                                               ; preds = %4
  %39 = load ptr, ptr @DC, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i32 0, i32 0
  %42 = load float, ptr %41, align 4
  %43 = fdiv float 0x3FF5555560000000, %42
  %44 = load ptr, ptr %5, align 8
  %45 = load float, ptr %44, align 4
  %46 = fmul float %45, %43
  store float %46, ptr %44, align 4
  %47 = load ptr, ptr @DC, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, ptr %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, ptr %48, i32 0, i32 0
  %50 = load float, ptr %49, align 4
  %51 = fdiv float 0x3FF5555560000000, %50
  %52 = load ptr, ptr %7, align 8
  %53 = load float, ptr %52, align 4
  %54 = fmul float %53, %51
  store float %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %38, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
