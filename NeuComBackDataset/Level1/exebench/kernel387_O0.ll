; ModuleID = '../benchmarks/fine_grained/exebench/kernel387.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel387.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float }
%struct.TYPE_5__ = type { float, float, float, float, float, float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QuaternionToTrfm3D(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, ptr %17, i32 0, i32 0
  %19 = load float, ptr %18, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %20, i32 0, i32 0
  %22 = load float, ptr %21, align 4
  %23 = fadd float %19, %22
  store float %23, ptr %5, align 4
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, ptr %24, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, ptr %27, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = fadd float %26, %29
  store float %30, ptr %6, align 4
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, ptr %31, i32 0, i32 2
  %33 = load float, ptr %32, align 4
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, ptr %34, i32 0, i32 2
  %36 = load float, ptr %35, align 4
  %37 = fadd float %33, %36
  store float %37, ptr %7, align 4
  %38 = load float, ptr %5, align 4
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, ptr %39, i32 0, i32 3
  %41 = load float, ptr %40, align 4
  %42 = fmul float %38, %41
  store float %42, ptr %8, align 4
  %43 = load float, ptr %6, align 4
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, ptr %44, i32 0, i32 3
  %46 = load float, ptr %45, align 4
  %47 = fmul float %43, %46
  store float %47, ptr %9, align 4
  %48 = load float, ptr %7, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, ptr %49, i32 0, i32 3
  %51 = load float, ptr %50, align 4
  %52 = fmul float %48, %51
  store float %52, ptr %10, align 4
  %53 = load float, ptr %5, align 4
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, ptr %54, i32 0, i32 0
  %56 = load float, ptr %55, align 4
  %57 = fmul float %53, %56
  store float %57, ptr %11, align 4
  %58 = load float, ptr %6, align 4
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, ptr %59, i32 0, i32 0
  %61 = load float, ptr %60, align 4
  %62 = fmul float %58, %61
  store float %62, ptr %12, align 4
  %63 = load float, ptr %7, align 4
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, ptr %64, i32 0, i32 0
  %66 = load float, ptr %65, align 4
  %67 = fmul float %63, %66
  store float %67, ptr %13, align 4
  %68 = load float, ptr %6, align 4
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, ptr %69, i32 0, i32 1
  %71 = load float, ptr %70, align 4
  %72 = fmul float %68, %71
  store float %72, ptr %14, align 4
  %73 = load float, ptr %7, align 4
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, ptr %74, i32 0, i32 1
  %76 = load float, ptr %75, align 4
  %77 = fmul float %73, %76
  store float %77, ptr %15, align 4
  %78 = load float, ptr %7, align 4
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, ptr %79, i32 0, i32 2
  %81 = load float, ptr %80, align 4
  %82 = fmul float %78, %81
  store float %82, ptr %16, align 4
  %83 = load float, ptr %14, align 4
  %84 = load float, ptr %16, align 4
  %85 = fadd float %83, %84
  %86 = fsub float 1.000000e+00, %85
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, ptr %87, i32 0, i32 0
  store float %86, ptr %88, align 4
  %89 = load float, ptr %12, align 4
  %90 = load float, ptr %10, align 4
  %91 = fsub float %89, %90
  %92 = load ptr, ptr %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, ptr %92, i32 0, i32 1
  store float %91, ptr %93, align 4
  %94 = load float, ptr %13, align 4
  %95 = load float, ptr %9, align 4
  %96 = fadd float %94, %95
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, ptr %97, i32 0, i32 2
  store float %96, ptr %98, align 4
  %99 = load float, ptr %12, align 4
  %100 = load float, ptr %10, align 4
  %101 = fadd float %99, %100
  %102 = load ptr, ptr %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, ptr %102, i32 0, i32 3
  store float %101, ptr %103, align 4
  %104 = load float, ptr %11, align 4
  %105 = load float, ptr %16, align 4
  %106 = fadd float %104, %105
  %107 = fsub float 1.000000e+00, %106
  %108 = load ptr, ptr %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, ptr %108, i32 0, i32 4
  store float %107, ptr %109, align 4
  %110 = load float, ptr %15, align 4
  %111 = load float, ptr %8, align 4
  %112 = fsub float %110, %111
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, ptr %113, i32 0, i32 5
  store float %112, ptr %114, align 4
  %115 = load float, ptr %13, align 4
  %116 = load float, ptr %9, align 4
  %117 = fsub float %115, %116
  %118 = load ptr, ptr %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, ptr %118, i32 0, i32 6
  store float %117, ptr %119, align 4
  %120 = load float, ptr %15, align 4
  %121 = load float, ptr %8, align 4
  %122 = fadd float %120, %121
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, ptr %123, i32 0, i32 7
  store float %122, ptr %124, align 4
  %125 = load float, ptr %11, align 4
  %126 = load float, ptr %14, align 4
  %127 = fadd float %125, %126
  %128 = fsub float 1.000000e+00, %127
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, ptr %129, i32 0, i32 8
  store float %128, ptr %130, align 4
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
