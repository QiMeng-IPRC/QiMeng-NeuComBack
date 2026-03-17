; ModuleID = '../benchmarks/fine_grained/exebench/kernel862.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel862.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LIScaleMat4(ptr noundef %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds { i64, i32 }, ptr %5, i32 0, i32 0
  store i64 %1, ptr %7, align 4
  %8 = getelementptr inbounds { i64, i32 }, ptr %5, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %5, i64 12, i1 false)
  store ptr %0, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = mul nsw i32 %11, %13
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, ptr %15, i32 0, i32 0
  store i32 %14, ptr %16, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = mul nsw i32 %19, %21
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %23, i32 0, i32 1
  store i32 %22, ptr %24, align 4
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %29 = load i32, ptr %28, align 4
  %30 = mul nsw i32 %27, %29
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, ptr %31, i32 0, i32 2
  store i32 %30, ptr %32, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = mul nsw i32 %35, %37
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, ptr %39, i32 0, i32 3
  store i32 %38, ptr %40, align 4
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, ptr %41, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, ptr %47, i32 0, i32 4
  store i32 %46, ptr %48, align 4
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, ptr %49, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, ptr %55, i32 0, i32 5
  store i32 %54, ptr %56, align 4
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, ptr %63, i32 0, i32 6
  store i32 %62, ptr %64, align 4
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, ptr %65, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = mul nsw i32 %67, %69
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, ptr %71, i32 0, i32 7
  store i32 %70, ptr %72, align 4
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, ptr %73, i32 0, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = mul nsw i32 %75, %77
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, ptr %79, i32 0, i32 8
  store i32 %78, ptr %80, align 4
  ret void
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
