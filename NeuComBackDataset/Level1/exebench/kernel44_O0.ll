; ModuleID = '../benchmarks/fine_grained/exebench/kernel44.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @es_textComprInfo(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 255
  %7 = shl i32 %6, 24
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65280
  %12 = shl i32 %11, 8
  %13 = or i32 %7, %12
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16711680
  %18 = ashr i32 %17, 8
  %19 = or i32 %13, %18
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -16777216
  %24 = lshr i32 %23, 24
  %25 = or i32 %19, %24
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 0
  store i32 %25, ptr %27, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 255
  %32 = shl i32 %31, 24
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 65280
  %37 = shl i32 %36, 8
  %38 = or i32 %32, %37
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 16711680
  %43 = ashr i32 %42, 8
  %44 = or i32 %38, %43
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -16777216
  %49 = lshr i32 %48, 24
  %50 = or i32 %44, %49
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, ptr %51, i32 0, i32 1
  store i32 %50, ptr %52, align 4
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 24
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 65280
  %62 = shl i32 %61, 8
  %63 = or i32 %57, %62
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 16711680
  %68 = ashr i32 %67, 8
  %69 = or i32 %63, %68
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, -16777216
  %74 = lshr i32 %73, 24
  %75 = or i32 %69, %74
  %76 = load ptr, ptr %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, ptr %76, i32 0, i32 2
  store i32 %75, ptr %77, align 4
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 255
  %82 = shl i32 %81, 24
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 65280
  %87 = shl i32 %86, 8
  %88 = or i32 %82, %87
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, ptr %89, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 16711680
  %93 = ashr i32 %92, 8
  %94 = or i32 %88, %93
  %95 = load ptr, ptr %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -16777216
  %99 = lshr i32 %98, 24
  %100 = or i32 %94, %99
  %101 = load ptr, ptr %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, ptr %101, i32 0, i32 3
  store i32 %100, ptr %102, align 4
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 255
  %107 = shl i32 %106, 24
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 65280
  %112 = shl i32 %111, 8
  %113 = or i32 %107, %112
  %114 = load ptr, ptr %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, ptr %114, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 16711680
  %118 = ashr i32 %117, 8
  %119 = or i32 %113, %118
  %120 = load ptr, ptr %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, ptr %120, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, -16777216
  %124 = lshr i32 %123, 24
  %125 = or i32 %119, %124
  %126 = load ptr, ptr %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, ptr %126, i32 0, i32 4
  store i32 %125, ptr %127, align 4
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
