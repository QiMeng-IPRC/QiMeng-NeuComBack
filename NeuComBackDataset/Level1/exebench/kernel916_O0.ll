; ModuleID = '../benchmarks/fine_grained/exebench/kernel916.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel916.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h_nint(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load float, ptr %3, align 4
  %5 = fcmp oge float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = load float, ptr %7, align 4
  %9 = fadd float %8, 5.000000e-01
  %10 = fptosi float %9 to i32
  br label %17

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8
  %13 = load float, ptr %12, align 4
  %14 = fsub float 5.000000e-01, %13
  %15 = fptosi float %14 to i32
  %16 = sub nsw i32 0, %15
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ %10, %6 ], [ %16, %11 ]
  ret i32 %18
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
