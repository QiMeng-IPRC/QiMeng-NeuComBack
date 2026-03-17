; ModuleID = '../benchmarks/fine_grained/exebench/kernel100.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2c_add_stats(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.c2c_stats, ptr %5, i32 0, i32 25
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.c2c_stats, ptr %8, i32 0, i32 25
  %10 = load i64, ptr %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.c2c_stats, ptr %12, i32 0, i32 24
  %14 = load i64, ptr %13, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.c2c_stats, ptr %15, i32 0, i32 24
  %17 = load i64, ptr %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, ptr %16, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.c2c_stats, ptr %19, i32 0, i32 23
  %21 = load i64, ptr %20, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.c2c_stats, ptr %22, i32 0, i32 23
  %24 = load i64, ptr %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, ptr %23, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.c2c_stats, ptr %26, i32 0, i32 22
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.c2c_stats, ptr %29, i32 0, i32 22
  %31 = load i64, ptr %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, ptr %30, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.c2c_stats, ptr %33, i32 0, i32 21
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.c2c_stats, ptr %36, i32 0, i32 21
  %38 = load i64, ptr %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, ptr %37, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.c2c_stats, ptr %40, i32 0, i32 20
  %42 = load i64, ptr %41, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.c2c_stats, ptr %43, i32 0, i32 20
  %45 = load i64, ptr %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, ptr %44, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.c2c_stats, ptr %47, i32 0, i32 19
  %49 = load i64, ptr %48, align 8
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.c2c_stats, ptr %50, i32 0, i32 19
  %52 = load i64, ptr %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, ptr %51, align 8
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.c2c_stats, ptr %54, i32 0, i32 18
  %56 = load i64, ptr %55, align 8
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.c2c_stats, ptr %57, i32 0, i32 18
  %59 = load i64, ptr %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, ptr %58, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.c2c_stats, ptr %61, i32 0, i32 17
  %63 = load i64, ptr %62, align 8
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.c2c_stats, ptr %64, i32 0, i32 17
  %66 = load i64, ptr %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, ptr %65, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.c2c_stats, ptr %68, i32 0, i32 16
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.c2c_stats, ptr %71, i32 0, i32 16
  %73 = load i64, ptr %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, ptr %72, align 8
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct.c2c_stats, ptr %75, i32 0, i32 15
  %77 = load i64, ptr %76, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.c2c_stats, ptr %78, i32 0, i32 15
  %80 = load i64, ptr %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, ptr %79, align 8
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds %struct.c2c_stats, ptr %82, i32 0, i32 14
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds %struct.c2c_stats, ptr %85, i32 0, i32 14
  %87 = load i64, ptr %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, ptr %86, align 8
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.c2c_stats, ptr %89, i32 0, i32 13
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.c2c_stats, ptr %92, i32 0, i32 13
  %94 = load i64, ptr %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, ptr %93, align 8
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds %struct.c2c_stats, ptr %96, i32 0, i32 12
  %98 = load i64, ptr %97, align 8
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds %struct.c2c_stats, ptr %99, i32 0, i32 12
  %101 = load i64, ptr %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, ptr %100, align 8
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds %struct.c2c_stats, ptr %103, i32 0, i32 11
  %105 = load i64, ptr %104, align 8
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds %struct.c2c_stats, ptr %106, i32 0, i32 11
  %108 = load i64, ptr %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, ptr %107, align 8
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds %struct.c2c_stats, ptr %110, i32 0, i32 10
  %112 = load i64, ptr %111, align 8
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct.c2c_stats, ptr %113, i32 0, i32 10
  %115 = load i64, ptr %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, ptr %114, align 8
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.c2c_stats, ptr %117, i32 0, i32 9
  %119 = load i64, ptr %118, align 8
  %120 = load ptr, ptr %3, align 8
  %121 = getelementptr inbounds %struct.c2c_stats, ptr %120, i32 0, i32 9
  %122 = load i64, ptr %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, ptr %121, align 8
  %124 = load ptr, ptr %4, align 8
  %125 = getelementptr inbounds %struct.c2c_stats, ptr %124, i32 0, i32 8
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %3, align 8
  %128 = getelementptr inbounds %struct.c2c_stats, ptr %127, i32 0, i32 8
  %129 = load i64, ptr %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, ptr %128, align 8
  %131 = load ptr, ptr %4, align 8
  %132 = getelementptr inbounds %struct.c2c_stats, ptr %131, i32 0, i32 7
  %133 = load i64, ptr %132, align 8
  %134 = load ptr, ptr %3, align 8
  %135 = getelementptr inbounds %struct.c2c_stats, ptr %134, i32 0, i32 7
  %136 = load i64, ptr %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, ptr %135, align 8
  %138 = load ptr, ptr %4, align 8
  %139 = getelementptr inbounds %struct.c2c_stats, ptr %138, i32 0, i32 6
  %140 = load i64, ptr %139, align 8
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds %struct.c2c_stats, ptr %141, i32 0, i32 6
  %143 = load i64, ptr %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, ptr %142, align 8
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct.c2c_stats, ptr %145, i32 0, i32 5
  %147 = load i64, ptr %146, align 8
  %148 = load ptr, ptr %3, align 8
  %149 = getelementptr inbounds %struct.c2c_stats, ptr %148, i32 0, i32 5
  %150 = load i64, ptr %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, ptr %149, align 8
  %152 = load ptr, ptr %4, align 8
  %153 = getelementptr inbounds %struct.c2c_stats, ptr %152, i32 0, i32 4
  %154 = load i64, ptr %153, align 8
  %155 = load ptr, ptr %3, align 8
  %156 = getelementptr inbounds %struct.c2c_stats, ptr %155, i32 0, i32 4
  %157 = load i64, ptr %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, ptr %156, align 8
  %159 = load ptr, ptr %4, align 8
  %160 = getelementptr inbounds %struct.c2c_stats, ptr %159, i32 0, i32 3
  %161 = load i64, ptr %160, align 8
  %162 = load ptr, ptr %3, align 8
  %163 = getelementptr inbounds %struct.c2c_stats, ptr %162, i32 0, i32 3
  %164 = load i64, ptr %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, ptr %163, align 8
  %166 = load ptr, ptr %4, align 8
  %167 = getelementptr inbounds %struct.c2c_stats, ptr %166, i32 0, i32 2
  %168 = load i64, ptr %167, align 8
  %169 = load ptr, ptr %3, align 8
  %170 = getelementptr inbounds %struct.c2c_stats, ptr %169, i32 0, i32 2
  %171 = load i64, ptr %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, ptr %170, align 8
  %173 = load ptr, ptr %4, align 8
  %174 = getelementptr inbounds %struct.c2c_stats, ptr %173, i32 0, i32 1
  %175 = load i64, ptr %174, align 8
  %176 = load ptr, ptr %3, align 8
  %177 = getelementptr inbounds %struct.c2c_stats, ptr %176, i32 0, i32 1
  %178 = load i64, ptr %177, align 8
  %179 = add nsw i64 %178, %175
  store i64 %179, ptr %177, align 8
  %180 = load ptr, ptr %4, align 8
  %181 = getelementptr inbounds %struct.c2c_stats, ptr %180, i32 0, i32 0
  %182 = load i64, ptr %181, align 8
  %183 = load ptr, ptr %3, align 8
  %184 = getelementptr inbounds %struct.c2c_stats, ptr %183, i32 0, i32 0
  %185 = load i64, ptr %184, align 8
  %186 = add nsw i64 %185, %182
  store i64 %186, ptr %184, align 8
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
