; ModuleID = '../benchmarks/fine_grained/exebench/kernel623.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel623.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_EMPTY_LABEL = dso_local global i32 0, align 4
@LDNS_STATUS_DDD_OVERFLOW = dso_local global i32 0, align 4
@LDNS_STATUS_OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_octet(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  store i64 0, ptr %9, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %10, ptr %7, align 8
  store ptr %10, ptr %6, align 8
  br label %11

11:                                               ; preds = %141, %2
  %12 = load ptr, ptr %6, align 8
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %146

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 8
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %133 [
    i32 46, label %20
    i32 92, label %35
    i32 34, label %117
  ]

20:                                               ; preds = %16
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, ptr @LDNS_STATUS_EMPTY_LABEL, align 4
  store i32 %27, ptr %3, align 4
  br label %149

28:                                               ; preds = %20
  %29 = load ptr, ptr %6, align 8
  %30 = load i8, ptr %29, align 1
  %31 = load ptr, ptr %7, align 8
  store i8 %30, ptr %31, align 1
  %32 = load ptr, ptr %5, align 8
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8
  br label %140

35:                                               ; preds = %16
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 48, %39
  br i1 %40, label %41, label %108

41:                                               ; preds = %35
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 57
  br i1 %46, label %47, label %108

47:                                               ; preds = %41
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds i8, ptr %48, i64 2
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sle i32 48, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %47
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds i8, ptr %54, i64 2
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br i1 %58, label %59, label %108

59:                                               ; preds = %53
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 3
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 48, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %59
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds i8, ptr %66, i64 3
  %68 = load i8, ptr %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sle i32 %69, 57
  br i1 %70, label %71, label %108

71:                                               ; preds = %65
  %72 = load ptr, ptr %6, align 8
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = load i8, ptr %73, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  %77 = mul nsw i32 %76, 100
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds i8, ptr %78, i64 2
  %80 = load i8, ptr %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 48
  %83 = mul nsw i32 %82, 10
  %84 = add nsw i32 %77, %83
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr inbounds i8, ptr %85, i64 3
  %87 = load i8, ptr %86, align 1
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 48
  %90 = add nsw i32 %84, %89
  store i32 %90, ptr %8, align 4
  %91 = load i32, ptr %8, align 4
  %92 = icmp sle i32 0, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %71
  %94 = load i32, ptr %8, align 4
  %95 = icmp sle i32 %94, 255
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load ptr, ptr %6, align 8
  %98 = getelementptr inbounds i8, ptr %97, i64 3
  store ptr %98, ptr %6, align 8
  %99 = load i32, ptr %8, align 4
  %100 = trunc i32 %99 to i8
  %101 = load ptr, ptr %7, align 8
  store i8 %100, ptr %101, align 1
  %102 = load ptr, ptr %5, align 8
  %103 = load i64, ptr %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, ptr %102, align 8
  br label %107

105:                                              ; preds = %93, %71
  %106 = load i32, ptr @LDNS_STATUS_DDD_OVERFLOW, align 4
  store i32 %106, ptr %3, align 4
  br label %149

107:                                              ; preds = %96
  br label %116

108:                                              ; preds = %65, %59, %53, %47, %41, %35
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %110, ptr %6, align 8
  %111 = load i8, ptr %110, align 1
  %112 = load ptr, ptr %7, align 8
  store i8 %111, ptr %112, align 1
  %113 = load ptr, ptr %5, align 8
  %114 = load i64, ptr %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, ptr %113, align 8
  br label %116

116:                                              ; preds = %108, %107
  br label %140

117:                                              ; preds = %16
  %118 = load ptr, ptr %6, align 8
  %119 = getelementptr inbounds i8, ptr %118, i32 1
  store ptr %119, ptr %6, align 8
  %120 = load i8, ptr %119, align 1
  %121 = load ptr, ptr %7, align 8
  store i8 %120, ptr %121, align 1
  %122 = load ptr, ptr %5, align 8
  %123 = load i64, ptr %122, align 8
  %124 = add i64 %123, 1
  store i64 %124, ptr %122, align 8
  %125 = load ptr, ptr %6, align 8
  %126 = load i8, ptr %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load ptr, ptr %7, align 8
  store i8 0, ptr %130, align 1
  %131 = load i32, ptr @LDNS_STATUS_OK, align 4
  store i32 %131, ptr %3, align 4
  br label %149

132:                                              ; preds = %117
  br label %140

133:                                              ; preds = %16
  %134 = load ptr, ptr %6, align 8
  %135 = load i8, ptr %134, align 1
  %136 = load ptr, ptr %7, align 8
  store i8 %135, ptr %136, align 1
  %137 = load ptr, ptr %5, align 8
  %138 = load i64, ptr %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %133, %132, %116, %28
  br label %141

141:                                              ; preds = %140
  %142 = load ptr, ptr %6, align 8
  %143 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %143, ptr %6, align 8
  %144 = load ptr, ptr %7, align 8
  %145 = getelementptr inbounds i8, ptr %144, i32 1
  store ptr %145, ptr %7, align 8
  br label %11, !llvm.loop !6

146:                                              ; preds = %11
  %147 = load ptr, ptr %7, align 8
  store i8 0, ptr %147, align 1
  %148 = load i32, ptr @LDNS_STATUS_OK, align 4
  store i32 %148, ptr %3, align 4
  br label %149

149:                                              ; preds = %146, %129, %105, %26
  %150 = load i32, ptr %3, align 4
  ret i32 %150
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
