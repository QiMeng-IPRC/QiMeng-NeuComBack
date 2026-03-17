; ModuleID = '../benchmarks/fine_grained/exebench/kernel291.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel291.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @baz() #0 {
  %1 = load i32, ptr @v, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @v, align 4
  %3 = load i32, ptr @v, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @v, align 4
  %5 = load i32, ptr @v, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @v, align 4
  %7 = load i32, ptr @v, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @v, align 4
  %9 = load i32, ptr @v, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @v, align 4
  %11 = load i32, ptr @v, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @v, align 4
  %13 = load i32, ptr @v, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @v, align 4
  %15 = load i32, ptr @v, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @v, align 4
  %17 = load i32, ptr @v, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @v, align 4
  %19 = load i32, ptr @v, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @v, align 4
  %21 = load i32, ptr @v, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr @v, align 4
  %23 = load i32, ptr @v, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @v, align 4
  %25 = load i32, ptr @v, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @v, align 4
  %27 = load i32, ptr @v, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr @v, align 4
  %29 = load i32, ptr @v, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr @v, align 4
  %31 = load i32, ptr @v, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @v, align 4
  %33 = load i32, ptr @v, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @v, align 4
  %35 = load i32, ptr @v, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @v, align 4
  %37 = load i32, ptr @v, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @v, align 4
  %39 = load i32, ptr @v, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @v, align 4
  %41 = load i32, ptr @v, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr @v, align 4
  %43 = load i32, ptr @v, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr @v, align 4
  %45 = load i32, ptr @v, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @v, align 4
  %47 = load i32, ptr @v, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @v, align 4
  %49 = load i32, ptr @v, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr @v, align 4
  %51 = load i32, ptr @v, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr @v, align 4
  %53 = load i32, ptr @v, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr @v, align 4
  %55 = load i32, ptr @v, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr @v, align 4
  %57 = load i32, ptr @v, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr @v, align 4
  %59 = load i32, ptr @v, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr @v, align 4
  %61 = load i32, ptr @v, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr @v, align 4
  %63 = load i32, ptr @v, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr @v, align 4
  %65 = load i32, ptr @v, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @v, align 4
  %67 = load i32, ptr @v, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr @v, align 4
  %69 = load i32, ptr @v, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr @v, align 4
  %71 = load i32, ptr @v, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr @v, align 4
  %73 = load i32, ptr @v, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr @v, align 4
  %75 = load i32, ptr @v, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr @v, align 4
  %77 = load i32, ptr @v, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr @v, align 4
  %79 = load i32, ptr @v, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr @v, align 4
  %81 = load i32, ptr @v, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr @v, align 4
  %83 = load i32, ptr @v, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr @v, align 4
  %85 = load i32, ptr @v, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr @v, align 4
  %87 = load i32, ptr @v, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr @v, align 4
  %89 = load i32, ptr @v, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr @v, align 4
  %91 = load i32, ptr @v, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr @v, align 4
  %93 = load i32, ptr @v, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr @v, align 4
  %95 = load i32, ptr @v, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr @v, align 4
  %97 = load i32, ptr @v, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr @v, align 4
  %99 = load i32, ptr @v, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr @v, align 4
  %101 = load i32, ptr @v, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr @v, align 4
  %103 = load i32, ptr @v, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr @v, align 4
  %105 = load i32, ptr @v, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr @v, align 4
  %107 = load i32, ptr @v, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr @v, align 4
  %109 = load i32, ptr @v, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr @v, align 4
  %111 = load i32, ptr @v, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr @v, align 4
  %113 = load i32, ptr @v, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr @v, align 4
  %115 = load i32, ptr @v, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr @v, align 4
  %117 = load i32, ptr @v, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @v, align 4
  %119 = load i32, ptr @v, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @v, align 4
  %121 = load i32, ptr @v, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr @v, align 4
  %123 = load i32, ptr @v, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr @v, align 4
  %125 = load i32, ptr @v, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr @v, align 4
  %127 = load i32, ptr @v, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr @v, align 4
  %129 = load i32, ptr @v, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr @v, align 4
  %131 = load i32, ptr @v, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr @v, align 4
  %133 = load i32, ptr @v, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr @v, align 4
  %135 = load i32, ptr @v, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr @v, align 4
  %137 = load i32, ptr @v, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr @v, align 4
  %139 = load i32, ptr @v, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr @v, align 4
  %141 = load i32, ptr @v, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr @v, align 4
  %143 = load i32, ptr @v, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr @v, align 4
  %145 = load i32, ptr @v, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr @v, align 4
  %147 = load i32, ptr @v, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr @v, align 4
  %149 = load i32, ptr @v, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr @v, align 4
  %151 = load i32, ptr @v, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr @v, align 4
  %153 = load i32, ptr @v, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr @v, align 4
  %155 = load i32, ptr @v, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr @v, align 4
  %157 = load i32, ptr @v, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr @v, align 4
  %159 = load i32, ptr @v, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr @v, align 4
  %161 = load i32, ptr @v, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr @v, align 4
  %163 = load i32, ptr @v, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr @v, align 4
  %165 = load i32, ptr @v, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr @v, align 4
  %167 = load i32, ptr @v, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr @v, align 4
  %169 = load i32, ptr @v, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr @v, align 4
  %171 = load i32, ptr @v, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr @v, align 4
  %173 = load i32, ptr @v, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr @v, align 4
  %175 = load i32, ptr @v, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr @v, align 4
  %177 = load i32, ptr @v, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr @v, align 4
  %179 = load i32, ptr @v, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr @v, align 4
  %181 = load i32, ptr @v, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr @v, align 4
  %183 = load i32, ptr @v, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr @v, align 4
  %185 = load i32, ptr @v, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr @v, align 4
  %187 = load i32, ptr @v, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr @v, align 4
  %189 = load i32, ptr @v, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr @v, align 4
  %191 = load i32, ptr @v, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr @v, align 4
  %193 = load i32, ptr @v, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr @v, align 4
  %195 = load i32, ptr @v, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr @v, align 4
  %197 = load i32, ptr @v, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr @v, align 4
  %199 = load i32, ptr @v, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @v, align 4
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
