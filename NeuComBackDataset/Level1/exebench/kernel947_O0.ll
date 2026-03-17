; ModuleID = '../benchmarks/fine_grained/exebench/kernel947.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel947.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tx = dso_local global i32 0, align 4
@Testx = dso_local global i32 0, align 4
@T3 = dso_local global i32 0, align 4
@T2 = dso_local global i32 0, align 4
@Bitx = dso_local global i32 0, align 4
@Rune2 = dso_local global i32 0, align 4
@Rune1 = dso_local global i64 0, align 8
@T4 = dso_local global i32 0, align 4
@Rune3 = dso_local global i32 0, align 4
@T5 = dso_local global i32 0, align 4
@Rune4 = dso_local global i32 0, align 4
@Bad = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chartorune(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %6, align 4
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr @Tx, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, ptr %6, align 4
  %19 = load ptr, ptr %4, align 8
  store i32 %18, ptr %19, align 4
  store i32 1, ptr %3, align 4
  br label %142

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, ptr @Tx, align 4
  %26 = xor i32 %24, %25
  store i32 %26, ptr %7, align 4
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr @Testx, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %139

32:                                               ; preds = %20
  %33 = load i32, ptr %6, align 4
  %34 = load i32, ptr @T3, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i32, ptr %6, align 4
  %38 = load i32, ptr @T2, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %139

41:                                               ; preds = %36
  %42 = load i32, ptr %6, align 4
  %43 = load i32, ptr @Bitx, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, ptr %7, align 4
  %46 = or i32 %44, %45
  %47 = load i32, ptr @Rune2, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  store i64 %49, ptr %10, align 8
  %50 = load i64, ptr %10, align 8
  %51 = load i64, ptr @Rune1, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %139

54:                                               ; preds = %41
  %55 = load i64, ptr %10, align 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8
  store i32 %56, ptr %57, align 4
  store i32 2, ptr %3, align 4
  br label %142

58:                                               ; preds = %32
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, ptr @Tx, align 4
  %64 = xor i32 %62, %63
  store i32 %64, ptr %8, align 4
  %65 = load i32, ptr %8, align 4
  %66 = load i32, ptr @Testx, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %139

70:                                               ; preds = %58
  %71 = load i32, ptr %6, align 4
  %72 = load i32, ptr @T4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i32, ptr %6, align 4
  %76 = load i32, ptr @Bitx, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, ptr %7, align 4
  %79 = or i32 %77, %78
  %80 = load i32, ptr @Bitx, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, ptr %8, align 4
  %83 = or i32 %81, %82
  %84 = load i32, ptr @Rune3, align 4
  %85 = and i32 %83, %84
  %86 = sext i32 %85 to i64
  store i64 %86, ptr %10, align 8
  %87 = load i64, ptr %10, align 8
  %88 = load i32, ptr @Rune2, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp sle i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %139

92:                                               ; preds = %74
  %93 = load i64, ptr %10, align 8
  %94 = trunc i64 %93 to i32
  %95 = load ptr, ptr %4, align 8
  store i32 %94, ptr %95, align 4
  store i32 3, ptr %3, align 4
  br label %142

96:                                               ; preds = %70
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds i8, ptr %97, i64 3
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, ptr @Tx, align 4
  %102 = xor i32 %100, %101
  store i32 %102, ptr %9, align 4
  %103 = load i32, ptr %9, align 4
  %104 = load i32, ptr @Testx, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %139

108:                                              ; preds = %96
  %109 = load i32, ptr %6, align 4
  %110 = load i32, ptr @T5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i32, ptr %6, align 4
  %114 = load i32, ptr @Bitx, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, ptr %7, align 4
  %117 = or i32 %115, %116
  %118 = load i32, ptr @Bitx, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, ptr %8, align 4
  %121 = or i32 %119, %120
  %122 = load i32, ptr @Bitx, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, ptr %9, align 4
  %125 = or i32 %123, %124
  %126 = load i32, ptr @Rune4, align 4
  %127 = and i32 %125, %126
  %128 = sext i32 %127 to i64
  store i64 %128, ptr %10, align 8
  %129 = load i64, ptr %10, align 8
  %130 = load i32, ptr @Rune3, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp sle i64 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %112
  br label %139

134:                                              ; preds = %112
  %135 = load i64, ptr %10, align 8
  %136 = trunc i64 %135 to i32
  %137 = load ptr, ptr %4, align 8
  store i32 %136, ptr %137, align 4
  store i32 4, ptr %3, align 4
  br label %142

138:                                              ; preds = %108
  br label %139

139:                                              ; preds = %138, %133, %107, %91, %69, %53, %40, %31
  %140 = load i32, ptr @Bad, align 4
  %141 = load ptr, ptr %4, align 8
  store i32 %140, ptr %141, align 4
  store i32 1, ptr %3, align 4
  br label %142

142:                                              ; preds = %139, %134, %92, %54, %17
  %143 = load i32, ptr %3, align 4
  ret i32 %143
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
