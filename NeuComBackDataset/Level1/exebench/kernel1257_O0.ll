; ModuleID = '../benchmarks/fine_grained/exebench/kernel1257.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1257.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSipLine(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %13 = load ptr, ptr %6, align 8
  store ptr %13, ptr %10, align 8
  %14 = load ptr, ptr %10, align 8
  store ptr %14, ptr %11, align 8
  %15 = load ptr, ptr %9, align 8
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %43, %4
  %17 = load ptr, ptr %11, align 8
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 8
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 13
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %41, label %32

32:                                               ; preds = %26, %21
  %33 = load ptr, ptr %11, align 8
  %34 = load ptr, ptr %10, align 8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br label %41

41:                                               ; preds = %32, %26, %16
  %42 = phi i1 [ false, %26 ], [ false, %16 ], [ %40, %32 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load ptr, ptr %11, align 8
  %45 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %45, ptr %11, align 8
  br label %16, !llvm.loop !6

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %100, %46
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 -1
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 44
  br i1 %52, label %53, label %101

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %66, %53
  %55 = load ptr, ptr %11, align 8
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %11, align 8
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ true, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = load ptr, ptr %11, align 8
  store i8 32, ptr %67, align 1
  %68 = load ptr, ptr %11, align 8
  %69 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %69, ptr %11, align 8
  br label %54, !llvm.loop !8

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %97, %70
  %72 = load ptr, ptr %11, align 8
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 13
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load ptr, ptr %11, align 8
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 10
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load ptr, ptr %11, align 8
  %83 = load i8, ptr %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load ptr, ptr %11, align 8
  %88 = load ptr, ptr %10, align 8
  %89 = ptrtoint ptr %87 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = load i32, ptr %7, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br label %95

95:                                               ; preds = %86, %81, %76, %71
  %96 = phi i1 [ false, %81 ], [ false, %76 ], [ false, %71 ], [ %94, %86 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load ptr, ptr %11, align 8
  %99 = getelementptr inbounds i8, ptr %98, i32 1
  store ptr %99, ptr %11, align 8
  br label %71, !llvm.loop !9

100:                                              ; preds = %95
  br label %47, !llvm.loop !10

101:                                              ; preds = %47
  %102 = load ptr, ptr %11, align 8
  %103 = load ptr, ptr %10, align 8
  %104 = ptrtoint ptr %102 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, ptr %12, align 4
  %108 = load ptr, ptr %11, align 8
  %109 = load i8, ptr %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 13
  br i1 %111, label %112, label %132

112:                                              ; preds = %101
  %113 = load ptr, ptr %11, align 8
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = load i8, ptr %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load ptr, ptr %11, align 8
  store i8 0, ptr %119, align 1
  %120 = load ptr, ptr %11, align 8
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  store i8 0, ptr %121, align 1
  %122 = load i32, ptr %12, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, ptr %12, align 4
  %124 = load i32, ptr %12, align 4
  %125 = load i32, ptr %7, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load ptr, ptr %9, align 8
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %118
  %130 = load i32, ptr %12, align 4
  %131 = load ptr, ptr %8, align 8
  store i32 %130, ptr %131, align 4
  store i32 1, ptr %5, align 4
  br label %133

132:                                              ; preds = %112, %101
  store i32 0, ptr %5, align 4
  br label %133

133:                                              ; preds = %132, %129
  %134 = load i32, ptr %5, align 4
  ret i32 %134
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
