; ModuleID = '../benchmarks/fine_grained/exebench/kernel818.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Op06X = dso_local global double 0.000000e+00, align 8
@Op02FX = dso_local global double 0.000000e+00, align 8
@ObjPX = dso_local global double 0.000000e+00, align 8
@Op06Y = dso_local global double 0.000000e+00, align 8
@Op02FY = dso_local global double 0.000000e+00, align 8
@ObjPY = dso_local global double 0.000000e+00, align 8
@Op06Z = dso_local global double 0.000000e+00, align 8
@Op02FZ = dso_local global double 0.000000e+00, align 8
@ObjPZ = dso_local global double 0.000000e+00, align 8
@Op02AAS = dso_local global i32 0, align 4
@tanval2 = dso_local global i64 0, align 8
@CosTable2 = dso_local global ptr null, align 8
@SinTable2 = dso_local global ptr null, align 8
@ObjPX1 = dso_local global i32 0, align 4
@ObjPY1 = dso_local global double 0.000000e+00, align 8
@ObjPZ1 = dso_local global double 0.000000e+00, align 8
@Op02AZS = dso_local global i32 0, align 4
@ObjPX2 = dso_local global i32 0, align 4
@ObjPY2 = dso_local global i32 0, align 4
@ObjPZ2 = dso_local global i32 0, align 4
@Op02LFE = dso_local global i32 0, align 4
@Op02LES = dso_local global i32 0, align 4
@Op06H = dso_local global i16 0, align 2
@Op06V = dso_local global i32 0, align 4
@Op06S = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DSPOp06() #0 {
  %1 = load double, ptr @Op06X, align 8
  %2 = load double, ptr @Op02FX, align 8
  %3 = fsub double %1, %2
  store double %3, ptr @ObjPX, align 8
  %4 = load double, ptr @Op06Y, align 8
  %5 = load double, ptr @Op02FY, align 8
  %6 = fsub double %4, %5
  store double %6, ptr @ObjPY, align 8
  %7 = load double, ptr @Op06Z, align 8
  %8 = load double, ptr @Op02FZ, align 8
  %9 = fsub double %7, %8
  store double %9, ptr @ObjPZ, align 8
  %10 = load i32, ptr @Op02AAS, align 4
  %11 = sub nsw i32 0, %10
  %12 = add nsw i32 %11, 32768
  %13 = sdiv i32 %12, 32
  %14 = and i32 %13, 2047
  %15 = sext i32 %14 to i64
  store i64 %15, ptr @tanval2, align 8
  %16 = load double, ptr @ObjPX, align 8
  %17 = load ptr, ptr @CosTable2, align 8
  %18 = load i64, ptr @tanval2, align 8
  %19 = getelementptr inbounds i64, ptr %17, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = load double, ptr @ObjPY, align 8
  %23 = load ptr, ptr @SinTable2, align 8
  %24 = load i64, ptr @tanval2, align 8
  %25 = getelementptr inbounds i64, ptr %23, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = fneg double %27
  %29 = fmul double %22, %28
  %30 = call double @llvm.fmuladd.f64(double %16, double %21, double %29)
  %31 = fptosi double %30 to i32
  store i32 %31, ptr @ObjPX1, align 4
  %32 = load double, ptr @ObjPX, align 8
  %33 = load ptr, ptr @SinTable2, align 8
  %34 = load i64, ptr @tanval2, align 8
  %35 = getelementptr inbounds i64, ptr %33, i64 %34
  %36 = load i64, ptr %35, align 8
  %37 = sitofp i64 %36 to double
  %38 = load double, ptr @ObjPY, align 8
  %39 = load ptr, ptr @CosTable2, align 8
  %40 = load i64, ptr @tanval2, align 8
  %41 = getelementptr inbounds i64, ptr %39, i64 %40
  %42 = load i64, ptr %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = fmul double %38, %43
  %45 = call double @llvm.fmuladd.f64(double %32, double %37, double %44)
  store double %45, ptr @ObjPY1, align 8
  %46 = load double, ptr @ObjPZ, align 8
  store double %46, ptr @ObjPZ1, align 8
  %47 = load i32, ptr @Op02AZS, align 4
  %48 = sub nsw i32 0, %47
  %49 = sdiv i32 %48, 32
  %50 = and i32 %49, 2047
  %51 = sext i32 %50 to i64
  store i64 %51, ptr @tanval2, align 8
  %52 = load i32, ptr @ObjPX1, align 4
  store i32 %52, ptr @ObjPX2, align 4
  %53 = load double, ptr @ObjPY1, align 8
  %54 = load ptr, ptr @CosTable2, align 8
  %55 = load i64, ptr @tanval2, align 8
  %56 = getelementptr inbounds i64, ptr %54, i64 %55
  %57 = load i64, ptr %56, align 8
  %58 = sitofp i64 %57 to double
  %59 = load double, ptr @ObjPZ1, align 8
  %60 = load ptr, ptr @SinTable2, align 8
  %61 = load i64, ptr @tanval2, align 8
  %62 = getelementptr inbounds i64, ptr %60, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = fneg double %64
  %66 = fmul double %59, %65
  %67 = call double @llvm.fmuladd.f64(double %53, double %58, double %66)
  %68 = fptosi double %67 to i32
  store i32 %68, ptr @ObjPY2, align 4
  %69 = load double, ptr @ObjPY1, align 8
  %70 = load ptr, ptr @SinTable2, align 8
  %71 = load i64, ptr @tanval2, align 8
  %72 = getelementptr inbounds i64, ptr %70, i64 %71
  %73 = load i64, ptr %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = load double, ptr @ObjPZ1, align 8
  %76 = load ptr, ptr @CosTable2, align 8
  %77 = load i64, ptr @tanval2, align 8
  %78 = getelementptr inbounds i64, ptr %76, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = sitofp i64 %79 to double
  %81 = fmul double %75, %80
  %82 = call double @llvm.fmuladd.f64(double %69, double %74, double %81)
  %83 = fptosi double %82 to i32
  store i32 %83, ptr @ObjPZ2, align 4
  %84 = load i32, ptr @ObjPZ2, align 4
  %85 = load i32, ptr @Op02LFE, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, ptr @ObjPZ2, align 4
  %87 = load i32, ptr @ObjPZ2, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %0
  %90 = load i32, ptr @ObjPX2, align 4
  %91 = sub nsw i32 0, %90
  %92 = load i32, ptr @Op02LES, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, ptr @ObjPZ2, align 4
  %95 = sub nsw i32 0, %94
  %96 = sdiv i32 %93, %95
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr @Op06H, align 2
  %98 = load i32, ptr @ObjPY2, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32, ptr @Op02LES, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, ptr @ObjPZ2, align 4
  %103 = sub nsw i32 0, %102
  %104 = sdiv i32 %101, %103
  %105 = trunc i32 %104 to i16
  %106 = sext i16 %105 to i32
  store i32 %106, ptr @Op06V, align 4
  %107 = load i32, ptr @Op02LES, align 4
  %108 = sitofp i32 %107 to double
  %109 = fmul double 2.560000e+02, %108
  %110 = load i32, ptr @ObjPZ2, align 4
  %111 = sub nsw i32 0, %110
  %112 = sitofp i32 %111 to double
  %113 = fdiv double %109, %112
  %114 = fptoui double %113 to i16
  %115 = zext i16 %114 to i32
  store i32 %115, ptr @Op06S, align 4
  br label %117

116:                                              ; preds = %0
  store i16 0, ptr @Op06H, align 2
  store i32 224, ptr @Op06V, align 4
  store i32 65535, ptr @Op06S, align 4
  br label %117

117:                                              ; preds = %116, %89
  ret void
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
