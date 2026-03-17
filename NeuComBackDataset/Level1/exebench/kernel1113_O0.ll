; ModuleID = '../benchmarks/fine_grained/exebench/kernel1113.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1113.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float, float, float, float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @egMat4Transpose(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %4, i32 0, i32 0
  %6 = load float, ptr %5, align 4
  store float %6, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 1
  %9 = load float, ptr %8, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 0
  store float %9, ptr %11, align 4
  %12 = load float, ptr %3, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %13, i32 0, i32 1
  store float %12, ptr %14, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 2
  %17 = load float, ptr %16, align 4
  store float %17, ptr %3, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %18, i32 0, i32 3
  %20 = load float, ptr %19, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 2
  store float %20, ptr %22, align 4
  %23 = load float, ptr %3, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %24, i32 0, i32 3
  store float %23, ptr %25, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 4
  %28 = load float, ptr %27, align 4
  store float %28, ptr %3, align 4
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %29, i32 0, i32 5
  %31 = load float, ptr %30, align 4
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i32 0, i32 4
  store float %31, ptr %33, align 4
  %34 = load float, ptr %3, align 4
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 5
  store float %34, ptr %36, align 4
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %37, i32 0, i32 6
  %39 = load float, ptr %38, align 4
  store float %39, ptr %3, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i32 0, i32 7
  %42 = load float, ptr %41, align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, ptr %43, i32 0, i32 6
  store float %42, ptr %44, align 4
  %45 = load float, ptr %3, align 4
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %46, i32 0, i32 7
  store float %45, ptr %47, align 4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, ptr %48, i32 0, i32 8
  %50 = load float, ptr %49, align 4
  store float %50, ptr %3, align 4
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, ptr %51, i32 0, i32 9
  %53 = load float, ptr %52, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %54, i32 0, i32 8
  store float %53, ptr %55, align 4
  %56 = load float, ptr %3, align 4
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, ptr %57, i32 0, i32 9
  store float %56, ptr %58, align 4
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, ptr %59, i32 0, i32 10
  %61 = load float, ptr %60, align 4
  store float %61, ptr %3, align 4
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, ptr %62, i32 0, i32 11
  %64 = load float, ptr %63, align 4
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, ptr %65, i32 0, i32 10
  store float %64, ptr %66, align 4
  %67 = load float, ptr %3, align 4
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, ptr %68, i32 0, i32 11
  store float %67, ptr %69, align 4
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
