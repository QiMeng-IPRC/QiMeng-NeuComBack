; ModuleID = '../benchmarks/fine_grained/exebench/kernel556.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel556.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@motor = dso_local global ptr null, align 8
@LL1 = dso_local global i64 0, align 8
@LR1 = dso_local global i64 0, align 8
@LR2 = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @activateLauncher(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  %3 = load float, ptr %2, align 4
  %4 = load ptr, ptr @motor, align 8
  %5 = load i64, ptr @LL1, align 8
  %6 = getelementptr inbounds float, ptr %4, i64 %5
  store float %3, ptr %6, align 4
  %7 = load float, ptr %2, align 4
  %8 = load ptr, ptr @motor, align 8
  %9 = load i64, ptr @LR1, align 8
  %10 = getelementptr inbounds float, ptr %8, i64 %9
  store float %7, ptr %10, align 4
  %11 = load float, ptr %2, align 4
  %12 = load ptr, ptr @motor, align 8
  %13 = load i64, ptr @LR2, align 8
  %14 = getelementptr inbounds float, ptr %12, i64 %13
  store float %11, ptr %14, align 4
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
