; ModuleID = '../benchmarks/fine_grained/exebench/kernel878.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel878.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@csp = dso_local global i32 0, align 4
@clip_x1 = dso_local global i64 0, align 8
@cstack_x1 = dso_local global ptr null, align 8
@clip_y1 = dso_local global i64 0, align 8
@cstack_y1 = dso_local global ptr null, align 8
@clip_x2 = dso_local global i64 0, align 8
@cstack_x2 = dso_local global ptr null, align 8
@clip_y2 = dso_local global i64 0, align 8
@cstack_y2 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clip_push(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = load i32, ptr @csp, align 4
  %10 = icmp sge i32 %9, 63
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %67

12:                                               ; preds = %4
  %13 = load i32, ptr @csp, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @csp, align 4
  %15 = load i64, ptr @clip_x1, align 8
  %16 = load i64, ptr %5, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, ptr @clip_x1, align 8
  br label %22

20:                                               ; preds = %12
  %21 = load i64, ptr %5, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %24 = load ptr, ptr @cstack_x1, align 8
  %25 = load i32, ptr @csp, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, ptr %24, i64 %26
  store i64 %23, ptr %27, align 8
  store i64 %23, ptr @clip_x1, align 8
  %28 = load i64, ptr @clip_y1, align 8
  %29 = load i64, ptr %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, ptr @clip_y1, align 8
  br label %35

33:                                               ; preds = %22
  %34 = load i64, ptr %6, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = load ptr, ptr @cstack_y1, align 8
  %38 = load i32, ptr @csp, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, ptr %37, i64 %39
  store i64 %36, ptr %40, align 8
  store i64 %36, ptr @clip_y1, align 8
  %41 = load i64, ptr @clip_x2, align 8
  %42 = load i64, ptr %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, ptr @clip_x2, align 8
  br label %48

46:                                               ; preds = %35
  %47 = load i64, ptr %7, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  %50 = load ptr, ptr @cstack_x2, align 8
  %51 = load i32, ptr @csp, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %50, i64 %52
  store i64 %49, ptr %53, align 8
  store i64 %49, ptr @clip_x2, align 8
  %54 = load i64, ptr @clip_y2, align 8
  %55 = load i64, ptr %8, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i64, ptr @clip_y2, align 8
  br label %61

59:                                               ; preds = %48
  %60 = load i64, ptr %8, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  %63 = load ptr, ptr @cstack_y2, align 8
  %64 = load i32, ptr @csp, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, ptr %63, i64 %65
  store i64 %62, ptr %66, align 8
  store i64 %62, ptr @clip_y2, align 8
  br label %67

67:                                               ; preds = %61, %11
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
