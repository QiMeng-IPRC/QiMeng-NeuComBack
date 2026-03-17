; ModuleID = '../benchmarks/fine_grained/exebench/kernel259.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel259.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @u16_mbtouc_aux(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i16, ptr %9, align 2
  store i16 %10, ptr %8, align 2
  %11 = load i16, ptr %8, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %12, 56320
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load i64, ptr %7, align 8
  %16 = icmp uge i64 %15, 2
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sge i32 %21, 56320
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp slt i32 %27, 57344
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i16, ptr %8, align 2
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %31, 55296
  %33 = shl i32 %32, 10
  %34 = add nsw i32 65536, %33
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds i16, ptr %35, i64 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = sub nsw i32 %38, 56320
  %40 = add nsw i32 %34, %39
  %41 = load ptr, ptr %5, align 8
  store i32 %40, ptr %41, align 4
  store i32 2, ptr %4, align 4
  br label %50

42:                                               ; preds = %23, %17
  br label %47

43:                                               ; preds = %14
  %44 = load ptr, ptr %5, align 8
  store i32 65533, ptr %44, align 4
  %45 = load i64, ptr %7, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %4, align 4
  br label %50

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %3
  %49 = load ptr, ptr %5, align 8
  store i32 65533, ptr %49, align 4
  store i32 1, ptr %4, align 4
  br label %50

50:                                               ; preds = %48, %43, %29
  %51 = load i32, ptr %4, align 4
  ret i32 %51
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
