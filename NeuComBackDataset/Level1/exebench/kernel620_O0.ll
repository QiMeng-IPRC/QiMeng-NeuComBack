; ModuleID = '../benchmarks/fine_grained/exebench/kernel620.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fx = dso_local global ptr null, align 8
@arpeggio_val = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlat_fx(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 240
  %12 = ashr i32 %11, 4
  store i32 %12, ptr %7, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 15
  store i32 %15, ptr %8, align 4
  %16 = load ptr, ptr @fx, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %5, align 8
  store i32 %21, ptr %22, align 4
  switch i32 %21, label %118 [
    i32 0, label %23
    i32 254, label %42
    i32 253, label %62
    i32 14, label %82
    i32 255, label %115
  ]

23:                                               ; preds = %3
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr @arpeggio_val, align 8
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  store i32 %29, ptr %33, align 4
  br label %41

34:                                               ; preds = %23
  %35 = load ptr, ptr @arpeggio_val, align 8
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %6, align 8
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %34, %27
  br label %118

42:                                               ; preds = %3
  %43 = load ptr, ptr %5, align 8
  store i32 1, ptr %43, align 4
  %44 = load ptr, ptr %6, align 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %45, 48
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %48, align 4
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 15
  %52 = or i32 %51, 224
  %53 = load ptr, ptr %6, align 8
  store i32 %52, ptr %53, align 4
  br label %61

54:                                               ; preds = %42
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %55, align 4
  %57 = ashr i32 %56, 4
  %58 = and i32 %57, 15
  %59 = or i32 %58, 240
  %60 = load ptr, ptr %6, align 8
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %54, %47
  br label %118

62:                                               ; preds = %3
  %63 = load ptr, ptr %5, align 8
  store i32 2, ptr %63, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %64, align 4
  %66 = icmp slt i32 %65, 48
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load ptr, ptr %6, align 8
  %69 = load i32, ptr %68, align 4
  %70 = ashr i32 %69, 2
  %71 = and i32 %70, 15
  %72 = or i32 %71, 224
  %73 = load ptr, ptr %6, align 8
  store i32 %72, ptr %73, align 4
  br label %81

74:                                               ; preds = %62
  %75 = load ptr, ptr %6, align 8
  %76 = load i32, ptr %75, align 4
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 15
  %79 = or i32 %78, 240
  %80 = load ptr, ptr %6, align 8
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %74, %67
  br label %118

82:                                               ; preds = %3
  %83 = load i32, ptr %7, align 4
  switch i32 %83, label %114 [
    i32 1, label %84
    i32 2, label %84
    i32 4, label %84
    i32 6, label %84
    i32 7, label %84
    i32 9, label %84
    i32 14, label %84
    i32 15, label %84
    i32 3, label %87
    i32 5, label %91
    i32 8, label %95
    i32 10, label %99
    i32 11, label %103
    i32 12, label %107
  ]

84:                                               ; preds = %82, %82, %82, %82, %82, %82, %82, %82
  %85 = load ptr, ptr %5, align 8
  store i32 0, ptr %85, align 4
  %86 = load ptr, ptr %6, align 8
  store i32 0, ptr %86, align 4
  br label %114

87:                                               ; preds = %82
  %88 = load i32, ptr %8, align 4
  %89 = or i32 %88, 48
  %90 = load ptr, ptr %6, align 8
  store i32 %89, ptr %90, align 4
  br label %114

91:                                               ; preds = %82
  %92 = load i32, ptr %8, align 4
  %93 = or i32 %92, 64
  %94 = load ptr, ptr %6, align 8
  store i32 %93, ptr %94, align 4
  br label %114

95:                                               ; preds = %82
  %96 = load i32, ptr %8, align 4
  %97 = or i32 %96, 112
  %98 = load ptr, ptr %6, align 8
  store i32 %97, ptr %98, align 4
  br label %114

99:                                               ; preds = %82
  %100 = load i32, ptr %8, align 4
  %101 = or i32 %100, 96
  %102 = load ptr, ptr %6, align 8
  store i32 %101, ptr %102, align 4
  br label %114

103:                                              ; preds = %82
  %104 = load i32, ptr %8, align 4
  %105 = or i32 %104, 224
  %106 = load ptr, ptr %6, align 8
  store i32 %105, ptr %106, align 4
  br label %114

107:                                              ; preds = %82
  %108 = load i32, ptr %8, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load ptr, ptr %6, align 8
  store i32 0, ptr %111, align 4
  %112 = load ptr, ptr %5, align 8
  store i32 0, ptr %112, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %82, %103, %99, %95, %91, %87, %84
  br label %118

115:                                              ; preds = %3
  %116 = load ptr, ptr %6, align 8
  store i32 0, ptr %116, align 4
  %117 = load ptr, ptr %5, align 8
  store i32 0, ptr %117, align 4
  br label %118

118:                                              ; preds = %3, %115, %114, %81, %61, %41
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
