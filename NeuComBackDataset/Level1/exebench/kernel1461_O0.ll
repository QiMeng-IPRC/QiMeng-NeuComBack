; ModuleID = '../benchmarks/fine_grained/exebench/kernel1461.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_vec2_div(ptr noundef %0, <2 x float> %1, float noundef %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  store <2 x float> %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  store float %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i32 0, i32 0
  %8 = load float, ptr %7, align 4
  %9 = load float, ptr %6, align 4
  %10 = fdiv float %8, %9
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, ptr %11, i32 0, i32 0
  store float %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i32 0, i32 1
  %14 = load float, ptr %13, align 4
  %15 = load float, ptr %6, align 4
  %16 = fdiv float %14, %15
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 1
  store float %16, ptr %18, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
