; ModuleID = '../benchmarks/fine_grained/exebench/kernel519.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_matrix_invert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 0
  %11 = load double, ptr %10, align 8
  %12 = fcmp oeq double %11, 0.000000e+00
  br i1 %12, label %13, label %60

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %14, i32 0, i32 1
  %16 = load double, ptr %15, align 8
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %60

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 2
  %21 = load double, ptr %20, align 8
  %22 = fcmp oeq double %21, 0.000000e+00
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, ptr %24, i32 0, i32 3
  %26 = load double, ptr %25, align 8
  %27 = fcmp oeq double %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 -23, ptr %3, align 4
  br label %145

29:                                               ; preds = %23
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, ptr %30, i32 0, i32 2
  %32 = load double, ptr %31, align 8
  %33 = fdiv double 1.000000e+00, %32
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, ptr %34, i32 0, i32 2
  store double %33, ptr %35, align 8
  %36 = fneg double %33
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, ptr %37, i32 0, i32 4
  %39 = load double, ptr %38, align 8
  %40 = fmul double %36, %39
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, ptr %41, i32 0, i32 4
  store double %40, ptr %42, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, ptr %43, i32 0, i32 0
  store double 0.000000e+00, ptr %44, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, ptr %45, i32 0, i32 1
  store double 0.000000e+00, ptr %46, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, ptr %47, i32 0, i32 3
  %49 = load double, ptr %48, align 8
  %50 = fdiv double 1.000000e+00, %49
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, ptr %51, i32 0, i32 3
  store double %50, ptr %52, align 8
  %53 = fneg double %50
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, ptr %54, i32 0, i32 5
  %56 = load double, ptr %55, align 8
  %57 = fmul double %53, %56
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, ptr %58, i32 0, i32 5
  store double %57, ptr %59, align 8
  br label %144

60:                                               ; preds = %13, %2
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, ptr %61, i32 0, i32 2
  %63 = load double, ptr %62, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, ptr %64, i32 0, i32 3
  %66 = load double, ptr %65, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, ptr %67, i32 0, i32 0
  %69 = load double, ptr %68, align 8
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, ptr %70, i32 0, i32 1
  %72 = load double, ptr %71, align 8
  %73 = fmul double %69, %72
  %74 = fneg double %73
  %75 = call double @llvm.fmuladd.f64(double %63, double %66, double %74)
  store double %75, ptr %6, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, ptr %76, i32 0, i32 2
  %78 = load double, ptr %77, align 8
  store double %78, ptr %7, align 8
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, ptr %79, i32 0, i32 4
  %81 = load double, ptr %80, align 8
  store double %81, ptr %8, align 8
  %82 = load double, ptr %6, align 8
  %83 = fcmp oeq double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %60
  store i32 -23, ptr %3, align 4
  br label %145

85:                                               ; preds = %60
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, ptr %86, i32 0, i32 3
  %88 = load double, ptr %87, align 8
  %89 = load double, ptr %6, align 8
  %90 = fdiv double %88, %89
  %91 = load ptr, ptr %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, ptr %91, i32 0, i32 2
  store double %90, ptr %92, align 8
  %93 = load ptr, ptr %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, ptr %93, i32 0, i32 0
  %95 = load double, ptr %94, align 8
  %96 = fneg double %95
  %97 = load double, ptr %6, align 8
  %98 = fdiv double %96, %97
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, ptr %99, i32 0, i32 0
  store double %98, ptr %100, align 8
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, ptr %101, i32 0, i32 1
  %103 = load double, ptr %102, align 8
  %104 = fneg double %103
  %105 = load double, ptr %6, align 8
  %106 = fdiv double %104, %105
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, ptr %107, i32 0, i32 1
  store double %106, ptr %108, align 8
  %109 = load double, ptr %7, align 8
  %110 = load double, ptr %6, align 8
  %111 = fdiv double %109, %110
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, ptr %112, i32 0, i32 3
  store double %111, ptr %113, align 8
  %114 = load double, ptr %8, align 8
  %115 = load ptr, ptr %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, ptr %115, i32 0, i32 2
  %117 = load double, ptr %116, align 8
  %118 = load ptr, ptr %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, ptr %118, i32 0, i32 5
  %120 = load double, ptr %119, align 8
  %121 = load ptr, ptr %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, ptr %121, i32 0, i32 1
  %123 = load double, ptr %122, align 8
  %124 = fmul double %120, %123
  %125 = call double @llvm.fmuladd.f64(double %114, double %117, double %124)
  %126 = fneg double %125
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, ptr %127, i32 0, i32 4
  store double %126, ptr %128, align 8
  %129 = load double, ptr %8, align 8
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, ptr %130, i32 0, i32 0
  %132 = load double, ptr %131, align 8
  %133 = load ptr, ptr %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, ptr %133, i32 0, i32 5
  %135 = load double, ptr %134, align 8
  %136 = load ptr, ptr %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, ptr %136, i32 0, i32 3
  %138 = load double, ptr %137, align 8
  %139 = fmul double %135, %138
  %140 = call double @llvm.fmuladd.f64(double %129, double %132, double %139)
  %141 = fneg double %140
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, ptr %142, i32 0, i32 5
  store double %141, ptr %143, align 8
  br label %144

144:                                              ; preds = %85, %29
  store i32 0, ptr %3, align 4
  br label %145

145:                                              ; preds = %144, %84, %28
  %146 = load i32, ptr %3, align 4
  ret i32 %146
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
