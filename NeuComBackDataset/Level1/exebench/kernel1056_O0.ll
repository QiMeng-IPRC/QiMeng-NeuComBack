; ModuleID = '../benchmarks/fine_grained/exebench/kernel1056.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1056.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EVP_PKEY_asn1_copy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %8, i32 0, i32 22
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 21
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, ptr %18, i32 0, i32 20
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, ptr %20, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %23, i32 0, i32 19
  store i32 %22, ptr %24, align 4
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %25, i32 0, i32 18
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, ptr %28, i32 0, i32 18
  store i32 %27, ptr %29, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, ptr %30, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, ptr %33, i32 0, i32 17
  store i32 %32, ptr %34, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, ptr %35, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, ptr %38, i32 0, i32 16
  store i32 %37, ptr %39, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %40, i32 0, i32 15
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, ptr %43, i32 0, i32 15
  store i32 %42, ptr %44, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, ptr %45, i32 0, i32 14
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, ptr %48, i32 0, i32 14
  store i32 %47, ptr %49, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, ptr %50, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, ptr %53, i32 0, i32 13
  store i32 %52, ptr %54, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, ptr %55, i32 0, i32 12
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, ptr %58, i32 0, i32 12
  store i32 %57, ptr %59, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, ptr %60, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, ptr %63, i32 0, i32 11
  store i32 %62, ptr %64, align 4
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, ptr %65, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, ptr %68, i32 0, i32 10
  store i32 %67, ptr %69, align 4
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, ptr %70, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, ptr %73, i32 0, i32 9
  store i32 %72, ptr %74, align 4
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, ptr %75, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, ptr %78, i32 0, i32 8
  store i32 %77, ptr %79, align 4
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, ptr %80, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, ptr %83, i32 0, i32 7
  store i32 %82, ptr %84, align 4
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, ptr %85, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, ptr %88, i32 0, i32 6
  store i32 %87, ptr %89, align 4
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, ptr %90, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, ptr %93, i32 0, i32 5
  store i32 %92, ptr %94, align 4
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, ptr %98, i32 0, i32 4
  store i32 %97, ptr %99, align 4
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, ptr %100, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, ptr %103, i32 0, i32 3
  store i32 %102, ptr %104, align 4
  %105 = load ptr, ptr %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, ptr %108, i32 0, i32 2
  store i32 %107, ptr %109, align 4
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, ptr %113, i32 0, i32 1
  store i32 %112, ptr %114, align 4
  %115 = load ptr, ptr %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, ptr %115, i32 0, i32 0
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, ptr %118, i32 0, i32 0
  store i32 %117, ptr %119, align 4
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
