; ModuleID = '../benchmarks/fine_grained/exebench/kernel1601.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tek_STR_BITMODEL = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tek_setbm5(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %5, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr %6, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %11, i32 0, i32 1
  store i32 %10, ptr %12, align 4
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %5, align 4
  %15 = add nsw i32 %13, %14
  %16 = shl i32 -1, %15
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %17, i32 0, i32 2
  store i32 %16, ptr %18, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %21, -1
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %23, i32 0, i32 3
  store i32 %22, ptr %24, align 4
  %25 = load i32, ptr %5, align 4
  %26 = shl i32 1, %25
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %5, align 4
  %32 = shl i32 -1, %31
  %33 = and i32 %32, 65535
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %34, i32 0, i32 4
  store i32 %33, ptr %35, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %36, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, ptr %40, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, ptr %47, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = xor i32 %52, -1
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.tek_STR_BITMODEL, ptr %54, i32 0, i32 5
  store i32 %53, ptr %55, align 4
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
