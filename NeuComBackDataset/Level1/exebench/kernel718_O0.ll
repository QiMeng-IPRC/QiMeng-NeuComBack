; ModuleID = '../benchmarks/fine_grained/exebench/kernel718.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel718.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, i32 }
%struct.TYPE_4__ = type { i32 }

@widthp = dso_local global i32 0, align 4
@eschar = dso_local global i32 0, align 4
@envp = dso_local global ptr null, align 8
@trtab = dso_local global ptr null, align 8
@t = dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @n_width(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = and i64 %7, 2147483648
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %82

11:                                               ; preds = %1
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 65536
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 1073807360
  %20 = icmp eq i64 %19, 1073807360
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, ptr %2, align 4
  br label %82

22:                                               ; preds = %16
  %23 = load i32, ptr %3, align 4
  %24 = and i32 %23, 65535
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 536936448
  %28 = icmp eq i64 %27, 536936448
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, ptr %5, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, ptr %5, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, ptr %5, align 4
  store i32 %33, ptr %2, align 4
  br label %82

34:                                               ; preds = %11
  %35 = load i32, ptr %3, align 4
  %36 = and i32 %35, 131071
  store i32 %36, ptr %4, align 4
  %37 = load i32, ptr %4, align 4
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load i32, ptr %4, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, ptr @widthp, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, ptr %2, align 4
  br label %82

45:                                               ; preds = %39
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, 22
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, ptr @eschar, align 4
  store i32 %49, ptr %4, align 4
  br label %55

50:                                               ; preds = %45
  %51 = load i32, ptr %4, align 4
  %52 = icmp eq i32 %51, 29
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, ptr %2, align 4
  br label %82

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, ptr %4, align 4
  %58 = load ptr, ptr @envp, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, ptr %2, align 4
  br label %82

63:                                               ; preds = %56
  %64 = load ptr, ptr @trtab, align 8
  %65 = load i32, ptr %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %64, i64 %66
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %4, align 4
  %69 = load i32, ptr %4, align 4
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, ptr %2, align 4
  br label %82

72:                                               ; preds = %63
  %73 = load ptr, ptr @t, align 8
  %74 = load i32, ptr %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %73, i64 %75
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @t, i32 0, i32 1), align 8
  %79 = mul nsw i32 %77, %78
  store i32 %79, ptr %5, align 4
  %80 = load i32, ptr %5, align 4
  store i32 %80, ptr @widthp, align 4
  %81 = load i32, ptr %5, align 4
  store i32 %81, ptr %2, align 4
  br label %82

82:                                               ; preds = %72, %71, %62, %53, %42, %32, %21, %10
  %83 = load i32, ptr %2, align 4
  ret i32 %83
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
