; ModuleID = '../benchmarks/fine_grained/exebench/kernel899.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel899.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = dso_local global i32 0, align 4
@num = dso_local global ptr null, align 8
@rowdia = dso_local global ptr null, align 8
@maindia = dso_local global ptr null, align 8
@vicedia = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @funiction(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr @n, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @n, align 4
  br label %129

8:                                                ; preds = %1
  %9 = load ptr, ptr @num, align 8
  %10 = load i32, ptr %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %9, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %122, %8
  %14 = load ptr, ptr @num, align 8
  %15 = load i32, ptr %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %129

20:                                               ; preds = %13
  %21 = load ptr, ptr @rowdia, align 8
  %22 = load ptr, ptr @num, align 8
  %23 = load i32, ptr %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %21, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %121, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr @maindia, align 8
  %33 = load i32, ptr %2, align 4
  %34 = load ptr, ptr @num, align 8
  %35 = load i32, ptr %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %34, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %33, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %32, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %120, label %44

44:                                               ; preds = %31
  %45 = load ptr, ptr @vicedia, align 8
  %46 = load i32, ptr %2, align 4
  %47 = sub nsw i32 7, %46
  %48 = load ptr, ptr @num, align 8
  %49 = load i32, ptr %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %47, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %45, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %119, label %58

58:                                               ; preds = %44
  %59 = load ptr, ptr @vicedia, align 8
  %60 = load i32, ptr %2, align 4
  %61 = sub nsw i32 7, %60
  %62 = load ptr, ptr @num, align 8
  %63 = load i32, ptr %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %62, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = add nsw i32 %61, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %59, i64 %68
  store i32 1, ptr %69, align 4
  %70 = load ptr, ptr @maindia, align 8
  %71 = load i32, ptr %2, align 4
  %72 = load ptr, ptr @num, align 8
  %73 = load i32, ptr %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = add nsw i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %70, i64 %78
  store i32 1, ptr %79, align 4
  %80 = load ptr, ptr @rowdia, align 8
  %81 = load ptr, ptr @num, align 8
  %82 = load i32, ptr %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %81, i64 %83
  %85 = load i32, ptr %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %80, i64 %86
  store i32 1, ptr %87, align 4
  %88 = load i32, ptr %2, align 4
  %89 = add nsw i32 %88, 1
  call void @funiction(i32 noundef %89)
  %90 = load ptr, ptr @vicedia, align 8
  %91 = load i32, ptr %2, align 4
  %92 = sub nsw i32 7, %91
  %93 = load ptr, ptr @num, align 8
  %94 = load i32, ptr %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %93, i64 %95
  %97 = load i32, ptr %96, align 4
  %98 = add nsw i32 %92, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %90, i64 %99
  store i32 0, ptr %100, align 4
  %101 = load ptr, ptr @maindia, align 8
  %102 = load i32, ptr %2, align 4
  %103 = load ptr, ptr @num, align 8
  %104 = load i32, ptr %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %103, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = add nsw i32 %102, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %101, i64 %109
  store i32 0, ptr %110, align 4
  %111 = load ptr, ptr @rowdia, align 8
  %112 = load ptr, ptr @num, align 8
  %113 = load i32, ptr %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %112, i64 %114
  %116 = load i32, ptr %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %111, i64 %117
  store i32 0, ptr %118, align 4
  br label %119

119:                                              ; preds = %58, %44
  br label %120

120:                                              ; preds = %119, %31
  br label %121

121:                                              ; preds = %120, %20
  br label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr @num, align 8
  %124 = load i32, ptr %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %123, i64 %125
  %127 = load i32, ptr %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %126, align 4
  br label %13, !llvm.loop !6

129:                                              ; preds = %5, %13
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
