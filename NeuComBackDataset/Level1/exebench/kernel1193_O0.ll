; ModuleID = '../benchmarks/fine_grained/exebench/kernel1193.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1193.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_reg = type { i64, i64, [3 x i32] }

@USB20 = dso_local global i32 0, align 4
@CCD_SENSOR = dso_local global i32 0, align 4
@USB11 = dso_local global i32 0, align 4
@CIS_SENSOR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hp3970_refvoltages(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [4 x %struct.st_reg], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %14 = getelementptr inbounds [4 x %struct.st_reg], ptr %11, i64 0, i64 0
  %15 = getelementptr inbounds %struct.st_reg, ptr %14, i32 0, i32 0
  %16 = load i32, ptr @USB20, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %15, align 16
  %18 = getelementptr inbounds %struct.st_reg, ptr %14, i32 0, i32 1
  %19 = load i32, ptr @CCD_SENSOR, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.st_reg, ptr %14, i32 0, i32 2
  %22 = getelementptr inbounds [3 x i32], ptr %21, i64 0, i64 0
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds i32, ptr %22, i64 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.st_reg, ptr %14, i64 1
  %26 = getelementptr inbounds %struct.st_reg, ptr %25, i32 0, i32 0
  %27 = load i32, ptr @USB11, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, ptr %26, align 16
  %29 = getelementptr inbounds %struct.st_reg, ptr %25, i32 0, i32 1
  %30 = load i32, ptr @CCD_SENSOR, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.st_reg, ptr %25, i32 0, i32 2
  %33 = getelementptr inbounds [3 x i32], ptr %32, i64 0, i64 0
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.st_reg, ptr %25, i64 1
  %37 = getelementptr inbounds %struct.st_reg, ptr %36, i32 0, i32 0
  %38 = load i32, ptr @USB20, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, ptr %37, align 16
  %40 = getelementptr inbounds %struct.st_reg, ptr %36, i32 0, i32 1
  %41 = load i32, ptr @CIS_SENSOR, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.st_reg, ptr %36, i32 0, i32 2
  %44 = getelementptr inbounds [3 x i32], ptr %43, i64 0, i64 0
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds i32, ptr %44, i64 1
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.st_reg, ptr %36, i64 1
  %48 = getelementptr inbounds %struct.st_reg, ptr %47, i32 0, i32 0
  %49 = load i32, ptr @USB11, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, ptr %48, align 16
  %51 = getelementptr inbounds %struct.st_reg, ptr %47, i32 0, i32 1
  %52 = load i32, ptr @CIS_SENSOR, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, ptr %51, align 8
  %54 = getelementptr inbounds %struct.st_reg, ptr %47, i32 0, i32 2
  %55 = getelementptr inbounds [3 x i32], ptr %54, i64 0, i64 0
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds i32, ptr %55, i64 1
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds i32, ptr %56, i64 1
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %8, align 8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %112

60:                                               ; preds = %5
  %61 = load ptr, ptr %9, align 8
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %112

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 8
  %65 = icmp ne ptr %64, null
  br i1 %65, label %66, label %112

66:                                               ; preds = %63
  store i64 4, ptr %13, align 8
  %67 = load ptr, ptr %10, align 8
  store i32 0, ptr %67, align 4
  %68 = load ptr, ptr %9, align 8
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr %8, align 8
  store i32 0, ptr %69, align 4
  store i64 0, ptr %12, align 8
  br label %70

70:                                               ; preds = %108, %66
  %71 = load i64, ptr %12, align 8
  %72 = load i64, ptr %13, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = load i64, ptr %12, align 8
  %76 = getelementptr inbounds [4 x %struct.st_reg], ptr %11, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.st_reg, ptr %76, i32 0, i32 0
  %78 = load i64, ptr %77, align 16
  %79 = load i64, ptr %6, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %74
  %82 = load i64, ptr %12, align 8
  %83 = getelementptr inbounds [4 x %struct.st_reg], ptr %11, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.st_reg, ptr %83, i32 0, i32 1
  %85 = load i64, ptr %84, align 8
  %86 = load i64, ptr %7, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load i64, ptr %12, align 8
  %90 = getelementptr inbounds [4 x %struct.st_reg], ptr %11, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.st_reg, ptr %90, i32 0, i32 2
  %92 = getelementptr inbounds [3 x i32], ptr %91, i64 0, i64 0
  %93 = load i32, ptr %92, align 16
  %94 = load ptr, ptr %8, align 8
  store i32 %93, ptr %94, align 4
  %95 = load i64, ptr %12, align 8
  %96 = getelementptr inbounds [4 x %struct.st_reg], ptr %11, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.st_reg, ptr %96, i32 0, i32 2
  %98 = getelementptr inbounds [3 x i32], ptr %97, i64 0, i64 1
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %9, align 8
  store i32 %99, ptr %100, align 4
  %101 = load i64, ptr %12, align 8
  %102 = getelementptr inbounds [4 x %struct.st_reg], ptr %11, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.st_reg, ptr %102, i32 0, i32 2
  %104 = getelementptr inbounds [3 x i32], ptr %103, i64 0, i64 2
  %105 = load i32, ptr %104, align 8
  %106 = load ptr, ptr %10, align 8
  store i32 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %88, %81, %74
  br label %108

108:                                              ; preds = %107
  %109 = load i64, ptr %12, align 8
  %110 = add i64 %109, 1
  store i64 %110, ptr %12, align 8
  br label %70, !llvm.loop !6

111:                                              ; preds = %70
  br label %112

112:                                              ; preds = %111, %63, %60, %5
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
