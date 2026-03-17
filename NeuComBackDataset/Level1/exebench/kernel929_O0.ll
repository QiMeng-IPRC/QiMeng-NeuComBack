; ModuleID = '../benchmarks/fine_grained/exebench/kernel929.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel929.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @int_to_str(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %8 = load ptr, ptr @str, align 8
  store ptr %8, ptr %6, align 8
  store i32 5, ptr %7, align 4
  br label %9

9:                                                ; preds = %12, %1
  %10 = load i32, ptr %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %14, ptr %6, align 8
  store i8 0, ptr %13, align 1
  %15 = load i32, ptr %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr %7, align 4
  br label %9, !llvm.loop !6

17:                                               ; preds = %9
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr @str, align 8
  %22 = load i32, ptr %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  store i8 48, ptr %24, align 1
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %29, %25
  %27 = load i32, ptr %2, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, ptr %2, align 4
  %31 = srem i32 %30, 10
  %32 = add nsw i32 48, %31
  %33 = trunc i32 %32 to i8
  %34 = load ptr, ptr @str, align 8
  %35 = load i32, ptr %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %4, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  store i8 %33, ptr %38, align 1
  %39 = load i32, ptr %2, align 4
  %40 = sdiv i32 %39, 10
  store i32 %40, ptr %2, align 4
  br label %26, !llvm.loop !8

41:                                               ; preds = %26
  store i32 0, ptr %5, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, ptr %5, align 4
  %44 = load i32, ptr %4, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load ptr, ptr @str, align 8
  %49 = load i32, ptr %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %48, i64 %50
  %52 = load i8, ptr %51, align 1
  store i8 %52, ptr %3, align 1
  %53 = load ptr, ptr @str, align 8
  %54 = load i32, ptr %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, ptr %5, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %53, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = load ptr, ptr @str, align 8
  %62 = load i32, ptr %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  store i8 %60, ptr %64, align 1
  %65 = load i8, ptr %3, align 1
  %66 = load ptr, ptr @str, align 8
  %67 = load i32, ptr %4, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, ptr %5, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  store i8 %65, ptr %72, align 1
  br label %73

73:                                               ; preds = %47
  %74 = load i32, ptr %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %5, align 4
  br label %42, !llvm.loop !9

76:                                               ; preds = %42
  %77 = load ptr, ptr @str, align 8
  ret ptr %77
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
