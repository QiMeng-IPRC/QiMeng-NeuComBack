; ModuleID = '../benchmarks/fine_grained/exebench/kernel880.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel880.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_domain = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rnn_set_connection(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, ptr %9, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4
  %26 = load ptr, ptr %5, align 8
  %27 = load i32, ptr %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.connection_domain, ptr %26, i64 %28
  %30 = getelementptr inbounds %struct.connection_domain, ptr %29, i32 0, i32 0
  store i32 %25, ptr %30, align 4
  %31 = load i32, ptr %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %33

33:                                               ; preds = %24, %21
  br label %45

34:                                               ; preds = %14
  %35 = load i32, ptr %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, ptr %9, align 4
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.connection_domain, ptr %39, i64 %41
  %43 = getelementptr inbounds %struct.connection_domain, ptr %42, i32 0, i32 1
  store i32 %38, ptr %43, align 4
  store i32 1, ptr %8, align 4
  br label %44

44:                                               ; preds = %37, %34
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %9, align 4
  br label %10, !llvm.loop !6

49:                                               ; preds = %10
  %50 = load i32, ptr %8, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, ptr %4, align 4
  %54 = load ptr, ptr %5, align 8
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.connection_domain, ptr %54, i64 %56
  %58 = getelementptr inbounds %struct.connection_domain, ptr %57, i32 0, i32 0
  store i32 %53, ptr %58, align 4
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %7, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = load ptr, ptr %5, align 8
  %63 = load i32, ptr %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.connection_domain, ptr %62, i64 %64
  %66 = getelementptr inbounds %struct.connection_domain, ptr %65, i32 0, i32 1
  store i32 -1, ptr %66, align 4
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
