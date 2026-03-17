; ModuleID = '../benchmarks/fine_grained/exebench/kernel457.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel457.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opeb50() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 5, ptr %1, align 4
  %6 = load i32, ptr @inst, align 4
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  store i64 %8, ptr %3, align 8
  %9 = load ptr, ptr @reg, align 8
  %10 = load i64, ptr %3, align 8
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 63
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr @status, align 4
  %17 = and i32 %16, -3
  store i32 %17, ptr @status, align 4
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %0
  %21 = load i32, ptr @status, align 4
  %22 = and i32 %21, 16
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, ptr @status, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr @status, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, ptr @status, align 4
  %29 = and i32 %28, -2
  store i32 %29, ptr @status, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %69

31:                                               ; preds = %0
  %32 = load i32, ptr %1, align 4
  %33 = srem i32 %32, 17
  store i32 %33, ptr %1, align 4
  %34 = load i32, ptr %2, align 4
  %35 = sext i32 %34 to i64
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %4, align 4
  %37 = load i32, ptr @status, align 4
  %38 = and i32 %37, 16
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = shl i32 %42, 16
  %44 = load i32, ptr %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, ptr %4, align 4
  %46 = load i32, ptr %4, align 4
  store i32 %46, ptr %5, align 4
  %47 = load i32, ptr %1, align 4
  %48 = sub nsw i32 17, %47
  %49 = load i32, ptr %5, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, ptr %5, align 4
  %51 = load i32, ptr %1, align 4
  %52 = load i32, ptr %4, align 4
  %53 = shl i32 %52, %51
  store i32 %53, ptr %4, align 4
  %54 = load i32, ptr %5, align 4
  %55 = load i32, ptr %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, ptr %4, align 4
  %57 = load i32, ptr %4, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %31
  %62 = load i32, ptr @status, align 4
  %63 = or i32 %62, 17
  store i32 %63, ptr @status, align 4
  br label %67

64:                                               ; preds = %31
  %65 = load i32, ptr @status, align 4
  %66 = and i32 %65, -18
  store i32 %66, ptr @status, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, ptr %4, align 4
  store i32 %68, ptr %2, align 4
  br label %69

69:                                               ; preds = %67, %30
  %70 = load i32, ptr %2, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, ptr @status, align 4
  %74 = and i32 %73, -13
  store i32 %74, ptr @status, align 4
  %75 = load i32, ptr %2, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, ptr @status, align 4
  %79 = or i32 %78, 8
  store i32 %79, ptr @status, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %86

81:                                               ; preds = %69
  %82 = load i32, ptr @status, align 4
  %83 = or i32 %82, 4
  store i32 %83, ptr @status, align 4
  %84 = load i32, ptr @status, align 4
  %85 = and i32 %84, -9
  store i32 %85, ptr @status, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32, ptr %2, align 4
  %88 = load ptr, ptr @reg, align 8
  %89 = load i64, ptr %3, align 8
  %90 = getelementptr inbounds i64, ptr %88, i64 %89
  store i32 %87, ptr %90, align 4
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
