; ModuleID = '../benchmarks/fine_grained/exebench/kernel434.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel434.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getnum(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  store i64 0, ptr %9, align 8
  br label %10

10:                                               ; preds = %20, %4
  %11 = load i64, ptr %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 32
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %22, ptr %5, align 8
  %23 = load i64, ptr %6, align 8
  %24 = add i64 %23, -1
  store i64 %24, ptr %6, align 8
  br label %10, !llvm.loop !6

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i64, ptr %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  %39 = load i32, ptr %7, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %34, %29, %26
  %42 = phi i1 [ false, %29 ], [ false, %26 ], [ %40, %34 ]
  br i1 %42, label %43, label %56

43:                                               ; preds = %41
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, ptr %9, align 8
  %47 = mul i64 %45, %46
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %49, ptr %5, align 8
  %50 = load i8, ptr %48, align 1
  %51 = sext i8 %50 to i64
  %52 = add i64 %47, %51
  %53 = sub i64 %52, 48
  store i64 %53, ptr %9, align 8
  %54 = load i64, ptr %6, align 8
  %55 = add i64 %54, -1
  store i64 %55, ptr %6, align 8
  br label %26, !llvm.loop !8

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %67, %56
  %58 = load i64, ptr %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load ptr, ptr %5, align 8
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds i8, ptr %68, i32 1
  store ptr %69, ptr %5, align 8
  %70 = load i64, ptr %6, align 8
  %71 = add i64 %70, -1
  store i64 %71, ptr %6, align 8
  br label %57, !llvm.loop !9

72:                                               ; preds = %65
  %73 = load i64, ptr %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, ptr %6, align 8
  %77 = trunc i64 %76 to i32
  %78 = load ptr, ptr %8, align 8
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i64, ptr %9, align 8
  ret i64 %80
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
