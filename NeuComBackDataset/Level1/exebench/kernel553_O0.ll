; ModuleID = '../benchmarks/fine_grained/exebench/kernel553.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fptab = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fp(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %13 = load i64, ptr %5, align 8
  %14 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 0
  store i64 %13, ptr %14, align 16
  %15 = load i64, ptr %4, align 8
  %16 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %15, ptr %16, align 8
  %17 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 1
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 0
  store i64 0, ptr %18, align 16
  store i32 0, ptr %10, align 4
  br label %19

19:                                               ; preds = %64, %3
  %20 = load i32, ptr %10, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %67

22:                                               ; preds = %19
  %23 = load i32, ptr %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %8, align 8
  %27 = load i32, ptr %10, align 4
  store i32 %27, ptr %12, align 4
  store i32 0, ptr %11, align 4
  br label %28

28:                                               ; preds = %60, %22
  %29 = load i32, ptr %11, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load ptr, ptr @fptab, align 8
  %33 = load i64, ptr %8, align 8
  %34 = and i64 %33, 15
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %12, align 4
  %38 = ashr i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 1
  %41 = load i64, ptr %40, align 8
  %42 = or i64 %41, %39
  store i64 %42, ptr %40, align 8
  %43 = load i64, ptr %8, align 8
  %44 = lshr i64 %43, 4
  store i64 %44, ptr %8, align 8
  %45 = load ptr, ptr @fptab, align 8
  %46 = load i64, ptr %8, align 8
  %47 = and i64 %46, 15
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %12, align 4
  %51 = ashr i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 0
  %54 = load i64, ptr %53, align 16
  %55 = or i64 %54, %52
  store i64 %55, ptr %53, align 16
  %56 = load i64, ptr %8, align 8
  %57 = lshr i64 %56, 4
  store i64 %57, ptr %8, align 8
  %58 = load i32, ptr %12, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, ptr %12, align 4
  br label %60

60:                                               ; preds = %31
  %61 = load i32, ptr %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %11, align 4
  br label %28, !llvm.loop !6

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %10, align 4
  br label %19, !llvm.loop !8

67:                                               ; preds = %19
  store i32 0, ptr %10, align 4
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, ptr %10, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  store i32 0, ptr %11, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32, ptr %11, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, ptr %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i8
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %82, ptr %6, align 8
  store i8 %80, ptr %81, align 1
  %83 = load i32, ptr %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i64], ptr %9, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8
  %87 = lshr i64 %86, 8
  store i64 %87, ptr %85, align 8
  br label %88

88:                                               ; preds = %75
  %89 = load i32, ptr %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %11, align 4
  br label %72, !llvm.loop !9

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %10, align 4
  br label %68, !llvm.loop !10

95:                                               ; preds = %68
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
