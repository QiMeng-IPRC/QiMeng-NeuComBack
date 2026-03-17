; ModuleID = '../benchmarks/fine_grained/exebench/kernel1215.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1215.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetGLMatrixTrfm3D(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 0
  %7 = load float, ptr %6, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 1
  %10 = load float, ptr %9, align 4
  %11 = fmul float %7, %10
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds float, ptr %12, i64 0
  store float %11, ptr %13, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 2
  %16 = load float, ptr %15, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 1
  %19 = load float, ptr %18, align 4
  %20 = fmul float %16, %19
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds float, ptr %21, i64 1
  store float %20, ptr %22, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %23, i32 0, i32 3
  %25 = load float, ptr %24, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = fmul float %25, %28
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds float, ptr %30, i64 2
  store float %29, ptr %31, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i32 0, i32 4
  %34 = load float, ptr %33, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds float, ptr %35, i64 3
  store float %34, ptr %36, align 4
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %37, i32 0, i32 5
  %39 = load float, ptr %38, align 4
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = fmul float %39, %42
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds float, ptr %44, i64 4
  store float %43, ptr %45, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, ptr %46, i32 0, i32 6
  %48 = load float, ptr %47, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, ptr %49, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  %52 = fmul float %48, %51
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds float, ptr %53, i64 5
  store float %52, ptr %54, align 4
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 7
  %57 = load float, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %58, i32 0, i32 1
  %60 = load float, ptr %59, align 4
  %61 = fmul float %57, %60
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds float, ptr %62, i64 6
  store float %61, ptr %63, align 4
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %64, i32 0, i32 8
  %66 = load float, ptr %65, align 4
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds float, ptr %67, i64 7
  store float %66, ptr %68, align 4
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %69, i32 0, i32 9
  %71 = load float, ptr %70, align 4
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, ptr %72, i32 0, i32 1
  %74 = load float, ptr %73, align 4
  %75 = fmul float %71, %74
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds float, ptr %76, i64 8
  store float %75, ptr %77, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, ptr %78, i32 0, i32 10
  %80 = load float, ptr %79, align 4
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, ptr %81, i32 0, i32 1
  %83 = load float, ptr %82, align 4
  %84 = fmul float %80, %83
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds float, ptr %85, i64 9
  store float %84, ptr %86, align 4
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, ptr %87, i32 0, i32 11
  %89 = load float, ptr %88, align 4
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, ptr %90, i32 0, i32 1
  %92 = load float, ptr %91, align 4
  %93 = fmul float %89, %92
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr inbounds float, ptr %94, i64 10
  store float %93, ptr %95, align 4
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, ptr %96, i32 0, i32 12
  %98 = load float, ptr %97, align 4
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds float, ptr %99, i64 11
  store float %98, ptr %100, align 4
  %101 = load ptr, ptr %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, ptr %101, i32 0, i32 13
  %103 = load float, ptr %102, align 4
  %104 = load ptr, ptr %4, align 8
  %105 = getelementptr inbounds float, ptr %104, i64 12
  store float %103, ptr %105, align 4
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, ptr %106, i32 0, i32 14
  %108 = load float, ptr %107, align 4
  %109 = load ptr, ptr %4, align 8
  %110 = getelementptr inbounds float, ptr %109, i64 13
  store float %108, ptr %110, align 4
  %111 = load ptr, ptr %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, ptr %111, i32 0, i32 15
  %113 = load float, ptr %112, align 4
  %114 = load ptr, ptr %4, align 8
  %115 = getelementptr inbounds float, ptr %114, i64 14
  store float %113, ptr %115, align 4
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, ptr %116, i32 0, i32 16
  %118 = load float, ptr %117, align 4
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds float, ptr %119, i64 15
  store float %118, ptr %120, align 4
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
