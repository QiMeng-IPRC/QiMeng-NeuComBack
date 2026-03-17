; ModuleID = '../benchmarks/fine_grained/exebench/kernel1312.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1312.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { ptr, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { ptr }

@cl = dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ClampPitch() #0 {
  %1 = alloca float, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @cl, i32 0, i32 1), align 8
  %3 = getelementptr inbounds double, ptr %2, i64 0
  %4 = load double, ptr %3, align 8
  %5 = fmul double %4, 0x3F76800000000000
  %6 = fptrunc double %5 to float
  store float %6, ptr %1, align 4
  %7 = load float, ptr %1, align 4
  %8 = fcmp ogt float %7, 1.800000e+02
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load float, ptr %1, align 4
  %11 = fsub float %10, 3.600000e+02
  store float %11, ptr %1, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = load ptr, ptr @cl, align 8
  %14 = getelementptr inbounds float, ptr %13, i64 0
  %15 = load float, ptr %14, align 4
  %16 = load float, ptr %1, align 4
  %17 = fadd float %15, %16
  %18 = fcmp olt float %17, -3.600000e+02
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load ptr, ptr @cl, align 8
  %21 = getelementptr inbounds float, ptr %20, i64 0
  %22 = load float, ptr %21, align 4
  %23 = fadd float %22, 3.600000e+02
  store float %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load ptr, ptr @cl, align 8
  %26 = getelementptr inbounds float, ptr %25, i64 0
  %27 = load float, ptr %26, align 4
  %28 = load float, ptr %1, align 4
  %29 = fadd float %27, %28
  %30 = fcmp ogt float %29, 3.600000e+02
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load ptr, ptr @cl, align 8
  %33 = getelementptr inbounds float, ptr %32, i64 0
  %34 = load float, ptr %33, align 4
  %35 = fsub float %34, 3.600000e+02
  store float %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load ptr, ptr @cl, align 8
  %38 = getelementptr inbounds float, ptr %37, i64 0
  %39 = load float, ptr %38, align 4
  %40 = load float, ptr %1, align 4
  %41 = fadd float %39, %40
  %42 = fcmp ogt float %41, 8.900000e+01
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load float, ptr %1, align 4
  %45 = fsub float 8.900000e+01, %44
  %46 = load ptr, ptr @cl, align 8
  %47 = getelementptr inbounds float, ptr %46, i64 0
  store float %45, ptr %47, align 4
  br label %48

48:                                               ; preds = %43, %36
  %49 = load ptr, ptr @cl, align 8
  %50 = getelementptr inbounds float, ptr %49, i64 0
  %51 = load float, ptr %50, align 4
  %52 = load float, ptr %1, align 4
  %53 = fadd float %51, %52
  %54 = fcmp olt float %53, -8.900000e+01
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load float, ptr %1, align 4
  %57 = fsub float -8.900000e+01, %56
  %58 = load ptr, ptr @cl, align 8
  %59 = getelementptr inbounds float, ptr %58, i64 0
  store float %57, ptr %59, align 4
  br label %60

60:                                               ; preds = %55, %48
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
