; ModuleID = '../benchmarks/fine_grained/exebench/kernel328.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dcnst0_.zero = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcnst0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr inbounds i64, ptr %12, i32 -1
  store ptr %13, ptr %8, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds i64, ptr %14, i32 -1
  store ptr %15, ptr %7, align 8
  %16 = load ptr, ptr %9, align 8
  store i64 0, ptr %16, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %10, align 8
  store i64 1, ptr %11, align 8
  br label %19

19:                                               ; preds = %95, %4
  %20 = load i64, ptr %11, align 8
  %21 = load i64, ptr %10, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = load i64, ptr %11, align 8
  %26 = getelementptr inbounds i64, ptr %24, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8
  %31 = load i64, ptr %11, align 8
  %32 = getelementptr inbounds i64, ptr %30, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = load i64, ptr @dcnst0_.zero, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, ptr %11, align 8
  %38 = load ptr, ptr %9, align 8
  store i64 %37, ptr %38, align 8
  store i32 0, ptr %5, align 4
  br label %99

39:                                               ; preds = %29
  br label %94

40:                                               ; preds = %23
  %41 = load ptr, ptr %8, align 8
  %42 = load i64, ptr %11, align 8
  %43 = getelementptr inbounds i64, ptr %41, i64 %42
  %44 = load i64, ptr %43, align 8
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load ptr, ptr %7, align 8
  %48 = load i64, ptr %11, align 8
  %49 = getelementptr inbounds i64, ptr %47, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr @dcnst0_.zero, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i64, ptr %11, align 8
  %55 = load ptr, ptr %9, align 8
  store i64 %54, ptr %55, align 8
  store i32 0, ptr %5, align 4
  br label %99

56:                                               ; preds = %46
  br label %93

57:                                               ; preds = %40
  %58 = load ptr, ptr %8, align 8
  %59 = load i64, ptr %11, align 8
  %60 = getelementptr inbounds i64, ptr %58, i64 %59
  %61 = load i64, ptr %60, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load ptr, ptr %7, align 8
  %65 = load i64, ptr %11, align 8
  %66 = getelementptr inbounds i64, ptr %64, i64 %65
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr @dcnst0_.zero, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, ptr %11, align 8
  %72 = load ptr, ptr %9, align 8
  store i64 %71, ptr %72, align 8
  store i32 0, ptr %5, align 4
  br label %99

73:                                               ; preds = %63
  br label %92

74:                                               ; preds = %57
  %75 = load ptr, ptr %8, align 8
  %76 = load i64, ptr %11, align 8
  %77 = getelementptr inbounds i64, ptr %75, i64 %76
  %78 = load i64, ptr %77, align 8
  %79 = icmp eq i64 %78, -2
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load ptr, ptr %7, align 8
  %82 = load i64, ptr %11, align 8
  %83 = getelementptr inbounds i64, ptr %81, i64 %82
  %84 = load i64, ptr %83, align 8
  %85 = load i64, ptr @dcnst0_.zero, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i64, ptr %11, align 8
  %89 = load ptr, ptr %9, align 8
  store i64 %88, ptr %89, align 8
  store i32 0, ptr %5, align 4
  br label %99

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %56
  br label %94

94:                                               ; preds = %93, %39
  br label %95

95:                                               ; preds = %94
  %96 = load i64, ptr %11, align 8
  %97 = add i64 %96, 1
  store i64 %97, ptr %11, align 8
  br label %19, !llvm.loop !6

98:                                               ; preds = %19
  store i32 0, ptr %5, align 4
  br label %99

99:                                               ; preds = %98, %87, %70, %53, %36
  %100 = load i32, ptr %5, align 4
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
