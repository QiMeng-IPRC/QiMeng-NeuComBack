; ModuleID = '../benchmarks/fine_grained/exebench/kernel477.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel477.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Nmoltype = dso_local global i32 0, align 4
@MolType = dso_local global ptr null, align 8
@MolName = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckExistence(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 1, ptr %10, align 4
  store i32 0, ptr %4, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr @Nmoltype, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  store i32 0, ptr %9, align 4
  store i32 0, ptr %5, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, ptr %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load ptr, ptr @MolType, align 8
  %21 = load i32, ptr %4, align 4
  %22 = mul nsw i32 4, %21
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %20, i64 %25
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %7, align 4
  %28 = load i32, ptr %7, align 4
  %29 = load ptr, ptr @MolName, align 8
  %30 = load i32, ptr %3, align 4
  %31 = mul nsw i32 4, %30
  %32 = load i32, ptr %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %29, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %28, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store i32 1, ptr %9, align 4
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %5, align 4
  br label %16, !llvm.loop !6

43:                                               ; preds = %16
  %44 = load i32, ptr %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 4
  store i32 %47, ptr %2, align 4
  br label %83

48:                                               ; preds = %43
  %49 = load i32, ptr %9, align 4
  %50 = load i32, ptr %10, align 4
  %51 = mul nsw i32 %50, %49
  store i32 %51, ptr %10, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %4, align 4
  br label %11, !llvm.loop !8

55:                                               ; preds = %11
  store i32 0, ptr %4, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, ptr %4, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load ptr, ptr @MolName, align 8
  %61 = load i32, ptr %3, align 4
  %62 = mul nsw i32 4, %61
  %63 = load i32, ptr %4, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %60, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr @MolType, align 8
  %69 = load i32, ptr @Nmoltype, align 4
  %70 = mul nsw i32 4, %69
  %71 = load i32, ptr %4, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %68, i64 %73
  store i32 %67, ptr %74, align 4
  br label %75

75:                                               ; preds = %59
  %76 = load i32, ptr %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %4, align 4
  br label %56, !llvm.loop !9

78:                                               ; preds = %56
  %79 = load i32, ptr @Nmoltype, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr @Nmoltype, align 4
  %81 = load i32, ptr @Nmoltype, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, ptr %2, align 4
  br label %83

83:                                               ; preds = %78, %46
  %84 = load i32, ptr %2, align 4
  ret i32 %84
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
