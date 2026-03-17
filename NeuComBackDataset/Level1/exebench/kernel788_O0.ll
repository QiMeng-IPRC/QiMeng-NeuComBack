; ModuleID = '../benchmarks/fine_grained/exebench/kernel788.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel788.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@angles = dso_local global ptr null, align 8
@kvals = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cordic(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 65536, ptr %10, align 4
  %13 = load ptr, ptr @angles, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 0
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %11, align 4
  %16 = load ptr, ptr %5, align 8
  store i32 65536, ptr %16, align 4
  %17 = load ptr, ptr %6, align 8
  store i32 0, ptr %17, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %18, -102943
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, ptr %4, align 4
  %22 = icmp sgt i32 %21, 102943
  br i1 %22, label %23, label %43

23:                                               ; preds = %20, %3
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %4, align 4
  %28 = add nsw i32 %27, 205887
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %6, align 8
  call void @cordic(i32 noundef %28, ptr noundef %29, ptr noundef %30)
  br label %36

31:                                               ; preds = %23
  %32 = load i32, ptr %4, align 4
  %33 = sub nsw i32 %32, 205887
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %6, align 8
  call void @cordic(i32 noundef %33, ptr noundef %34, ptr noundef %35)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %37, align 4
  %39 = mul nsw i32 %38, -1
  store i32 %39, ptr %37, align 4
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %40, align 4
  %42 = mul nsw i32 %41, -1
  store i32 %42, ptr %40, align 4
  br label %109

43:                                               ; preds = %20
  store i32 0, ptr %12, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, ptr %12, align 4
  %46 = icmp slt i32 %45, 5
  br i1 %46, label %47, label %90

47:                                               ; preds = %44
  %48 = load ptr, ptr @angles, align 8
  %49 = load i32, ptr %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %11, align 4
  %53 = load i32, ptr %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 -1, ptr %7, align 4
  br label %57

56:                                               ; preds = %47
  store i32 1, ptr %7, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load ptr, ptr %5, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %7, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %12, align 4
  %64 = ashr i32 %62, %63
  %65 = mul nsw i32 %60, %64
  %66 = sub nsw i32 %59, %65
  store i32 %66, ptr %8, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %7, align 4
  %70 = load ptr, ptr %5, align 8
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %12, align 4
  %73 = ashr i32 %71, %72
  %74 = mul nsw i32 %69, %73
  %75 = add nsw i32 %68, %74
  store i32 %75, ptr %9, align 4
  %76 = load i32, ptr %8, align 4
  %77 = load ptr, ptr %5, align 8
  store i32 %76, ptr %77, align 4
  %78 = load i32, ptr %9, align 4
  %79 = load ptr, ptr %6, align 8
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %4, align 4
  %81 = load i32, ptr %7, align 4
  %82 = load i32, ptr %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sub nsw i32 %80, %83
  store i32 %84, ptr %4, align 4
  %85 = load i32, ptr %10, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, ptr %10, align 4
  br label %87

87:                                               ; preds = %57
  %88 = load i32, ptr %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %12, align 4
  br label %44, !llvm.loop !6

90:                                               ; preds = %44
  %91 = load ptr, ptr %5, align 8
  %92 = load i32, ptr %91, align 4
  %93 = ashr i32 %92, 8
  %94 = load ptr, ptr @kvals, align 8
  %95 = getelementptr inbounds i32, ptr %94, i64 4
  %96 = load i32, ptr %95, align 4
  %97 = ashr i32 %96, 8
  %98 = mul nsw i32 %93, %97
  %99 = load ptr, ptr %5, align 8
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %6, align 8
  %101 = load i32, ptr %100, align 4
  %102 = ashr i32 %101, 8
  %103 = load ptr, ptr @kvals, align 8
  %104 = getelementptr inbounds i32, ptr %103, i64 4
  %105 = load i32, ptr %104, align 4
  %106 = ashr i32 %105, 8
  %107 = mul nsw i32 %102, %106
  %108 = load ptr, ptr %6, align 8
  store i32 %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %90, %36
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
