; ModuleID = '../benchmarks/fine_grained/exebench/kernel400.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sqEncodeUTF8CodePoint(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, ptr %6, align 8
  %20 = icmp uge i64 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = trunc i32 %22 to i8
  %24 = load ptr, ptr %5, align 8
  store i8 %23, ptr %24, align 1
  br label %25

25:                                               ; preds = %21, %18
  store i64 1, ptr %4, align 8
  br label %90

26:                                               ; preds = %3
  store i64 1, ptr %8, align 8
  store i32 6, ptr %9, align 4
  %27 = load i32, ptr %7, align 4
  store i32 %27, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %28

28:                                               ; preds = %33, %26
  %29 = load i32, ptr %10, align 4
  %30 = load i32, ptr %9, align 4
  %31 = shl i32 1, %30
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, ptr %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %9, align 4
  %36 = load i64, ptr %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, ptr %8, align 8
  %38 = load i32, ptr %10, align 4
  %39 = ashr i32 %38, 6
  store i32 %39, ptr %10, align 4
  %40 = load i32, ptr %11, align 4
  %41 = add nsw i32 %40, 6
  store i32 %41, ptr %11, align 4
  br label %28, !llvm.loop !6

42:                                               ; preds = %28
  %43 = load i64, ptr %6, align 8
  %44 = load i64, ptr %8, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  %47 = load i32, ptr %11, align 4
  store i32 %47, ptr %12, align 4
  %48 = load i32, ptr %9, align 4
  %49 = shl i32 1, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, ptr %13, align 4
  %51 = load i32, ptr %7, align 4
  %52 = load i32, ptr %12, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, ptr %13, align 4
  %55 = and i32 %53, %54
  store i32 %55, ptr %14, align 4
  %56 = load i32, ptr %13, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, ptr %13, align 4
  %59 = add i32 %58, 1
  %60 = xor i32 %57, %59
  %61 = load i32, ptr %14, align 4
  %62 = or i32 %60, %61
  %63 = trunc i32 %62 to i8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %65, ptr %5, align 8
  store i8 %63, ptr %64, align 1
  store i32 63, ptr %13, align 4
  store i32 1, ptr %15, align 4
  br label %66

66:                                               ; preds = %84, %46
  %67 = load i32, ptr %15, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, ptr %8, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load i32, ptr %12, align 4
  %73 = sub i32 %72, 6
  store i32 %73, ptr %12, align 4
  %74 = load i32, ptr %7, align 4
  %75 = load i32, ptr %12, align 4
  %76 = ashr i32 %74, %75
  %77 = load i32, ptr %13, align 4
  %78 = and i32 %76, %77
  store i32 %78, ptr %14, align 4
  %79 = load i32, ptr %14, align 4
  %80 = or i32 128, %79
  %81 = trunc i32 %80 to i8
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %83, ptr %5, align 8
  store i8 %81, ptr %82, align 1
  br label %84

84:                                               ; preds = %71
  %85 = load i32, ptr %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %15, align 4
  br label %66, !llvm.loop !8

87:                                               ; preds = %66
  br label %88

88:                                               ; preds = %87, %42
  %89 = load i64, ptr %8, align 8
  store i64 %89, ptr %4, align 8
  br label %90

90:                                               ; preds = %88, %25
  %91 = load i64, ptr %4, align 8
  ret i64 %91
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
