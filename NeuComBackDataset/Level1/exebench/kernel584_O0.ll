; ModuleID = '../benchmarks/fine_grained/exebench/kernel584.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel584.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitrv216neg(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds i32, ptr %33, i64 2
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %3, align 4
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 3
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %4, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 4
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %5, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds i32, ptr %42, i64 5
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %6, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 6
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %7, align 4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 7
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %8, align 4
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds i32, ptr %51, i64 8
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %9, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds i32, ptr %54, i64 9
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %10, align 4
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds i32, ptr %57, i64 10
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %11, align 4
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds i32, ptr %60, i64 11
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %12, align 4
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 12
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %13, align 4
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds i32, ptr %66, i64 13
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %14, align 4
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds i32, ptr %69, i64 14
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %15, align 4
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds i32, ptr %72, i64 15
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %16, align 4
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds i32, ptr %75, i64 16
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %17, align 4
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds i32, ptr %78, i64 17
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %18, align 4
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds i32, ptr %81, i64 18
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %19, align 4
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds i32, ptr %84, i64 19
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %20, align 4
  %87 = load ptr, ptr %2, align 8
  %88 = getelementptr inbounds i32, ptr %87, i64 20
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %21, align 4
  %90 = load ptr, ptr %2, align 8
  %91 = getelementptr inbounds i32, ptr %90, i64 21
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %22, align 4
  %93 = load ptr, ptr %2, align 8
  %94 = getelementptr inbounds i32, ptr %93, i64 22
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %23, align 4
  %96 = load ptr, ptr %2, align 8
  %97 = getelementptr inbounds i32, ptr %96, i64 23
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %24, align 4
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds i32, ptr %99, i64 24
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %25, align 4
  %102 = load ptr, ptr %2, align 8
  %103 = getelementptr inbounds i32, ptr %102, i64 25
  %104 = load i32, ptr %103, align 4
  store i32 %104, ptr %26, align 4
  %105 = load ptr, ptr %2, align 8
  %106 = getelementptr inbounds i32, ptr %105, i64 26
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %27, align 4
  %108 = load ptr, ptr %2, align 8
  %109 = getelementptr inbounds i32, ptr %108, i64 27
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %28, align 4
  %111 = load ptr, ptr %2, align 8
  %112 = getelementptr inbounds i32, ptr %111, i64 28
  %113 = load i32, ptr %112, align 4
  store i32 %113, ptr %29, align 4
  %114 = load ptr, ptr %2, align 8
  %115 = getelementptr inbounds i32, ptr %114, i64 29
  %116 = load i32, ptr %115, align 4
  store i32 %116, ptr %30, align 4
  %117 = load ptr, ptr %2, align 8
  %118 = getelementptr inbounds i32, ptr %117, i64 30
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %31, align 4
  %120 = load ptr, ptr %2, align 8
  %121 = getelementptr inbounds i32, ptr %120, i64 31
  %122 = load i32, ptr %121, align 4
  store i32 %122, ptr %32, align 4
  %123 = load i32, ptr %31, align 4
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds i32, ptr %124, i64 2
  store i32 %123, ptr %125, align 4
  %126 = load i32, ptr %32, align 4
  %127 = load ptr, ptr %2, align 8
  %128 = getelementptr inbounds i32, ptr %127, i64 3
  store i32 %126, ptr %128, align 4
  %129 = load i32, ptr %15, align 4
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr inbounds i32, ptr %130, i64 4
  store i32 %129, ptr %131, align 4
  %132 = load i32, ptr %16, align 4
  %133 = load ptr, ptr %2, align 8
  %134 = getelementptr inbounds i32, ptr %133, i64 5
  store i32 %132, ptr %134, align 4
  %135 = load i32, ptr %23, align 4
  %136 = load ptr, ptr %2, align 8
  %137 = getelementptr inbounds i32, ptr %136, i64 6
  store i32 %135, ptr %137, align 4
  %138 = load i32, ptr %24, align 4
  %139 = load ptr, ptr %2, align 8
  %140 = getelementptr inbounds i32, ptr %139, i64 7
  store i32 %138, ptr %140, align 4
  %141 = load i32, ptr %7, align 4
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr inbounds i32, ptr %142, i64 8
  store i32 %141, ptr %143, align 4
  %144 = load i32, ptr %8, align 4
  %145 = load ptr, ptr %2, align 8
  %146 = getelementptr inbounds i32, ptr %145, i64 9
  store i32 %144, ptr %146, align 4
  %147 = load i32, ptr %27, align 4
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr inbounds i32, ptr %148, i64 10
  store i32 %147, ptr %149, align 4
  %150 = load i32, ptr %28, align 4
  %151 = load ptr, ptr %2, align 8
  %152 = getelementptr inbounds i32, ptr %151, i64 11
  store i32 %150, ptr %152, align 4
  %153 = load i32, ptr %11, align 4
  %154 = load ptr, ptr %2, align 8
  %155 = getelementptr inbounds i32, ptr %154, i64 12
  store i32 %153, ptr %155, align 4
  %156 = load i32, ptr %12, align 4
  %157 = load ptr, ptr %2, align 8
  %158 = getelementptr inbounds i32, ptr %157, i64 13
  store i32 %156, ptr %158, align 4
  %159 = load i32, ptr %19, align 4
  %160 = load ptr, ptr %2, align 8
  %161 = getelementptr inbounds i32, ptr %160, i64 14
  store i32 %159, ptr %161, align 4
  %162 = load i32, ptr %20, align 4
  %163 = load ptr, ptr %2, align 8
  %164 = getelementptr inbounds i32, ptr %163, i64 15
  store i32 %162, ptr %164, align 4
  %165 = load i32, ptr %3, align 4
  %166 = load ptr, ptr %2, align 8
  %167 = getelementptr inbounds i32, ptr %166, i64 16
  store i32 %165, ptr %167, align 4
  %168 = load i32, ptr %4, align 4
  %169 = load ptr, ptr %2, align 8
  %170 = getelementptr inbounds i32, ptr %169, i64 17
  store i32 %168, ptr %170, align 4
  %171 = load i32, ptr %29, align 4
  %172 = load ptr, ptr %2, align 8
  %173 = getelementptr inbounds i32, ptr %172, i64 18
  store i32 %171, ptr %173, align 4
  %174 = load i32, ptr %30, align 4
  %175 = load ptr, ptr %2, align 8
  %176 = getelementptr inbounds i32, ptr %175, i64 19
  store i32 %174, ptr %176, align 4
  %177 = load i32, ptr %13, align 4
  %178 = load ptr, ptr %2, align 8
  %179 = getelementptr inbounds i32, ptr %178, i64 20
  store i32 %177, ptr %179, align 4
  %180 = load i32, ptr %14, align 4
  %181 = load ptr, ptr %2, align 8
  %182 = getelementptr inbounds i32, ptr %181, i64 21
  store i32 %180, ptr %182, align 4
  %183 = load i32, ptr %21, align 4
  %184 = load ptr, ptr %2, align 8
  %185 = getelementptr inbounds i32, ptr %184, i64 22
  store i32 %183, ptr %185, align 4
  %186 = load i32, ptr %22, align 4
  %187 = load ptr, ptr %2, align 8
  %188 = getelementptr inbounds i32, ptr %187, i64 23
  store i32 %186, ptr %188, align 4
  %189 = load i32, ptr %5, align 4
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr inbounds i32, ptr %190, i64 24
  store i32 %189, ptr %191, align 4
  %192 = load i32, ptr %6, align 4
  %193 = load ptr, ptr %2, align 8
  %194 = getelementptr inbounds i32, ptr %193, i64 25
  store i32 %192, ptr %194, align 4
  %195 = load i32, ptr %25, align 4
  %196 = load ptr, ptr %2, align 8
  %197 = getelementptr inbounds i32, ptr %196, i64 26
  store i32 %195, ptr %197, align 4
  %198 = load i32, ptr %26, align 4
  %199 = load ptr, ptr %2, align 8
  %200 = getelementptr inbounds i32, ptr %199, i64 27
  store i32 %198, ptr %200, align 4
  %201 = load i32, ptr %9, align 4
  %202 = load ptr, ptr %2, align 8
  %203 = getelementptr inbounds i32, ptr %202, i64 28
  store i32 %201, ptr %203, align 4
  %204 = load i32, ptr %10, align 4
  %205 = load ptr, ptr %2, align 8
  %206 = getelementptr inbounds i32, ptr %205, i64 29
  store i32 %204, ptr %206, align 4
  %207 = load i32, ptr %17, align 4
  %208 = load ptr, ptr %2, align 8
  %209 = getelementptr inbounds i32, ptr %208, i64 30
  store i32 %207, ptr %209, align 4
  %210 = load i32, ptr %18, align 4
  %211 = load ptr, ptr %2, align 8
  %212 = getelementptr inbounds i32, ptr %211, i64 31
  store i32 %210, ptr %212, align 4
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
