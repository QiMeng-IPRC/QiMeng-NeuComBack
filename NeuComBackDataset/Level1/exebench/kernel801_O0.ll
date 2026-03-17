; ModuleID = '../benchmarks/fine_grained/exebench/kernel801.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel801.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unsafe_encode_char(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  br label %99

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 0
  store i64 %14, ptr %16, align 8
  store i32 1, ptr %3, align 4
  br label %99

17:                                               ; preds = %9
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %18, 2048
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32, ptr %4, align 4
  %22 = ashr i32 %21, 6
  %23 = add nsw i32 192, %22
  %24 = sext i32 %23 to i64
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  store i64 %24, ptr %26, align 8
  %27 = load i32, ptr %4, align 4
  %28 = and i32 %27, 63
  %29 = add nsw i32 128, %28
  %30 = sext i32 %29 to i64
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds i64, ptr %31, i64 1
  store i64 %30, ptr %32, align 8
  store i32 2, ptr %3, align 4
  br label %99

33:                                               ; preds = %17
  %34 = load i32, ptr %4, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds i64, ptr %37, i64 0
  store i64 255, ptr %38, align 8
  store i32 1, ptr %3, align 4
  br label %99

39:                                               ; preds = %33
  %40 = load i32, ptr %4, align 4
  %41 = icmp eq i32 %40, 65534
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds i64, ptr %43, i64 0
  store i64 254, ptr %44, align 8
  store i32 1, ptr %3, align 4
  br label %99

45:                                               ; preds = %39
  %46 = load i32, ptr %4, align 4
  %47 = icmp slt i32 %46, 65536
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, ptr %4, align 4
  %50 = ashr i32 %49, 12
  %51 = add nsw i32 224, %50
  %52 = sext i32 %51 to i64
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 0
  store i64 %52, ptr %54, align 8
  %55 = load i32, ptr %4, align 4
  %56 = ashr i32 %55, 6
  %57 = and i32 %56, 63
  %58 = add nsw i32 128, %57
  %59 = sext i32 %58 to i64
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds i64, ptr %60, i64 1
  store i64 %59, ptr %61, align 8
  %62 = load i32, ptr %4, align 4
  %63 = and i32 %62, 63
  %64 = add nsw i32 128, %63
  %65 = sext i32 %64 to i64
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds i64, ptr %66, i64 2
  store i64 %65, ptr %67, align 8
  store i32 3, ptr %3, align 4
  br label %99

68:                                               ; preds = %45
  %69 = load i32, ptr %4, align 4
  %70 = icmp slt i32 %69, 1114112
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 4
  %73 = ashr i32 %72, 18
  %74 = add nsw i32 240, %73
  %75 = sext i32 %74 to i64
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr inbounds i64, ptr %76, i64 0
  store i64 %75, ptr %77, align 8
  %78 = load i32, ptr %4, align 4
  %79 = ashr i32 %78, 12
  %80 = and i32 %79, 63
  %81 = add nsw i32 128, %80
  %82 = sext i32 %81 to i64
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds i64, ptr %83, i64 1
  store i64 %82, ptr %84, align 8
  %85 = load i32, ptr %4, align 4
  %86 = ashr i32 %85, 6
  %87 = and i32 %86, 63
  %88 = add nsw i32 128, %87
  %89 = sext i32 %88 to i64
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds i64, ptr %90, i64 2
  store i64 %89, ptr %91, align 8
  %92 = load i32, ptr %4, align 4
  %93 = and i32 %92, 63
  %94 = add nsw i32 128, %93
  %95 = sext i32 %94 to i64
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds i64, ptr %96, i64 3
  store i64 %95, ptr %97, align 8
  store i32 4, ptr %3, align 4
  br label %99

98:                                               ; preds = %68
  store i32 0, ptr %3, align 4
  br label %99

99:                                               ; preds = %98, %71, %48, %42, %36, %20, %12, %8
  %100 = load i32, ptr %3, align 4
  ret i32 %100
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
