; ModuleID = '../benchmarks/fine_grained/exebench/kernel46.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @blQuatTransform(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca { i64, i32 }, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 0
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = sub nsw i32 %27, %33
  %35 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 0
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = sub nsw i32 %41, %47
  %49 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 0
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sub nsw i32 %55, %61
  %63 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = mul nsw i32 %70, %72
  %74 = sub nsw i32 %68, %73
  %75 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 0
  %79 = load i32, ptr %78, align 4
  %80 = mul nsw i32 %77, %79
  %81 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 0
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = sub nsw i32 %80, %85
  %87 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 1
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 0
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = mul nsw i32 %89, %91
  %93 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 0
  %96 = load i32, ptr %95, align 4
  %97 = mul nsw i32 %94, %96
  %98 = sub nsw i32 %92, %97
  %99 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, ptr %100, i32 0, i32 3
  %102 = load float, ptr %101, align 4
  %103 = fmul float 2.000000e+00, %102
  %104 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 0
  %105 = load i32, ptr %104, align 4
  %106 = sitofp i32 %105 to float
  %107 = fmul float %106, %103
  %108 = fptosi float %107 to i32
  store i32 %108, ptr %104, align 4
  %109 = load ptr, ptr %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, ptr %109, i32 0, i32 3
  %111 = load float, ptr %110, align 4
  %112 = fmul float 2.000000e+00, %111
  %113 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = sitofp i32 %114 to float
  %116 = fmul float %115, %112
  %117 = fptosi float %116 to i32
  store i32 %117, ptr %113, align 4
  %118 = load ptr, ptr %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, ptr %118, i32 0, i32 3
  %120 = load float, ptr %119, align 4
  %121 = fmul float 2.000000e+00, %120
  %122 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = sitofp i32 %123 to float
  %125 = fmul float %124, %121
  %126 = fptosi float %125 to i32
  store i32 %126, ptr %122, align 4
  %127 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  %128 = load i32, ptr %127, align 4
  %129 = sitofp i32 %128 to float
  %130 = fmul float %129, 2.000000e+00
  %131 = fptosi float %130 to i32
  store i32 %131, ptr %127, align 4
  %132 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = sitofp i32 %133 to float
  %135 = fmul float %134, 2.000000e+00
  %136 = fptosi float %135 to i32
  store i32 %136, ptr %132, align 4
  %137 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = sitofp i32 %138 to float
  %140 = fmul float %139, 2.000000e+00
  %141 = fptosi float %140 to i32
  store i32 %141, ptr %137, align 4
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, ptr %142, i32 0, i32 0
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 0
  %146 = load i32, ptr %145, align 4
  %147 = add nsw i32 %144, %146
  %148 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  %149 = load i32, ptr %148, align 4
  %150 = add nsw i32 %147, %149
  %151 = getelementptr inbounds %struct.TYPE_6__, ptr %3, i32 0, i32 0
  store i32 %150, ptr %151, align 4
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = add nsw i32 %154, %156
  %158 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = add nsw i32 %157, %159
  %161 = getelementptr inbounds %struct.TYPE_6__, ptr %3, i32 0, i32 1
  store i32 %160, ptr %161, align 4
  %162 = load ptr, ptr %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = add nsw i32 %164, %166
  %168 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = add nsw i32 %167, %169
  %171 = getelementptr inbounds %struct.TYPE_6__, ptr %3, i32 0, i32 2
  store i32 %170, ptr %171, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 4 %3, i64 12, i1 false)
  %172 = load { i64, i32 }, ptr %9, align 8
  ret { i64, i32 } %172
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
