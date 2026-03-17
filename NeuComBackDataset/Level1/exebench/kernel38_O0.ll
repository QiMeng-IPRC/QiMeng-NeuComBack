; ModuleID = '../benchmarks/fine_grained/exebench/kernel38.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel38.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@g_bola = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_ball() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @g_bola, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr @g_bola, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %6, %9
  store i32 %10, ptr %1, align 4
  %11 = load ptr, ptr @g_bola, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr @g_bola, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, ptr %2, align 4
  %18 = load ptr, ptr @g_bola, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr @g_bola, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %20, %23
  store i32 %24, ptr %3, align 4
  %25 = load i32, ptr %1, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %0
  %28 = load i32, ptr %1, align 4
  %29 = load ptr, ptr @g_bola, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, ptr %1, align 4
  %35 = load ptr, ptr @g_bola, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, ptr %35, i32 0, i32 0
  store i32 %34, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %27, %0
  %38 = load i32, ptr %2, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, ptr %2, align 4
  %42 = load ptr, ptr @g_bola, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, ptr %42, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, ptr %2, align 4
  %48 = load ptr, ptr @g_bola, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, ptr %48, i32 0, i32 2
  store i32 %47, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %40, %37
  %51 = load i32, ptr %3, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4
  %55 = load ptr, ptr @g_bola, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, ptr %55, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, ptr %3, align 4
  %61 = load ptr, ptr @g_bola, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, ptr %61, i32 0, i32 4
  store i32 %60, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %53, %50
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
