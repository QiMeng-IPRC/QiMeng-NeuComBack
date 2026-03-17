; ModuleID = '../benchmarks/fine_grained/exebench/kernel779.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel779.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_sd_clk = dso_local global ptr null, align 8
@dev_sd_cmd = dso_local global ptr null, align 8
@response_buffer = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SD_read_response(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 6, ptr %10, align 4
  br label %12

12:                                               ; preds = %1, %27
  %13 = load ptr, ptr @dev_sd_clk, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 0
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr @dev_sd_clk, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 0
  store i32 1, ptr %16, align 4
  %17 = load ptr, ptr @dev_sd_cmd, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 0
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %12
  %23 = load i32, ptr %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %9, align 4
  %25 = icmp sgt i32 %23, 100
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 2, ptr %2, align 4
  br label %132

27:                                               ; preds = %22
  br label %12

28:                                               ; preds = %21
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 17, ptr %10, align 4
  br label %32

32:                                               ; preds = %31, %28
  store i32 0, ptr %11, align 4
  br label %33

33:                                               ; preds = %113, %32
  %34 = load i32, ptr %11, align 4
  %35 = load i32, ptr %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %116

37:                                               ; preds = %33
  store i32 0, ptr %6, align 4
  %38 = load i32, ptr %11, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load ptr, ptr @response_buffer, align 8
  %42 = load i32, ptr %11, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %41, i64 %44
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %5, align 4
  br label %47

47:                                               ; preds = %40, %37
  store i32 0, ptr %9, align 4
  br label %48

48:                                               ; preds = %92, %47
  %49 = load i32, ptr %9, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %95

51:                                               ; preds = %48
  %52 = load ptr, ptr @dev_sd_clk, align 8
  %53 = getelementptr inbounds i32, ptr %52, i64 0
  store i32 0, ptr %53, align 4
  %54 = load i32, ptr %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, ptr %6, align 4
  %58 = shl i32 %57, 1
  store i32 %58, ptr %6, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32, ptr %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %9, align 4
  store i32 1, ptr %4, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load ptr, ptr @dev_sd_clk, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 0
  store i32 1, ptr %64, align 4
  %65 = load ptr, ptr @dev_sd_cmd, align 8
  %66 = getelementptr inbounds i64, ptr %65, i64 0
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, ptr %6, align 4
  %71 = or i32 %70, 1
  store i32 %71, ptr %6, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, ptr %11, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, ptr %8, align 4
  %77 = shl i32 %76, 1
  store i32 %77, ptr %8, align 4
  %78 = load i32, ptr %8, align 4
  %79 = load i32, ptr %5, align 4
  %80 = xor i32 %78, %79
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, ptr %8, align 4
  %85 = xor i32 %84, 9
  store i32 %85, ptr %8, align 4
  br label %86

86:                                               ; preds = %83, %75
  %87 = load i32, ptr %5, align 4
  %88 = shl i32 %87, 1
  store i32 %88, ptr %5, align 4
  %89 = load i32, ptr %8, align 4
  %90 = and i32 %89, 127
  store i32 %90, ptr %8, align 4
  br label %91

91:                                               ; preds = %86, %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %9, align 4
  br label %48, !llvm.loop !6

95:                                               ; preds = %48
  %96 = load i32, ptr %3, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, ptr %11, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, ptr %6, align 4
  %103 = and i32 %102, 128
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, ptr %7, align 4
  br label %106

106:                                              ; preds = %105, %101, %98
  br label %107

107:                                              ; preds = %106, %95
  %108 = load i32, ptr %6, align 4
  %109 = load ptr, ptr @response_buffer, align 8
  %110 = load i32, ptr %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %109, i64 %111
  store i32 %108, ptr %112, align 4
  br label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %11, align 4
  br label %33, !llvm.loop !8

116:                                              ; preds = %33
  %117 = load i32, ptr %3, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %3, align 4
  %121 = icmp eq i32 %120, 6
  br i1 %121, label %122, label %130

122:                                              ; preds = %119, %116
  %123 = load i32, ptr %6, align 4
  %124 = load i32, ptr %8, align 4
  %125 = shl i32 %124, 1
  %126 = or i32 %125, 1
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 2, ptr %7, align 4
  br label %129

129:                                              ; preds = %128, %122
  br label %130

130:                                              ; preds = %129, %119
  %131 = load i32, ptr %7, align 4
  store i32 %131, ptr %2, align 4
  br label %132

132:                                              ; preds = %130, %26
  %133 = load i32, ptr %2, align 4
  ret i32 %133
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
!8 = distinct !{!8, !7}
