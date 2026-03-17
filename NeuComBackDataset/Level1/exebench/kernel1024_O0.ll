; ModuleID = '../benchmarks/fine_grained/exebench/kernel1024.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1024.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__user_cap_header_struct = type { i32, i64 }
%struct.__user_cap_data_struct = type { i64, i64, i64 }

@raise_cap.head = internal global %struct.__user_cap_header_struct zeroinitializer, align 8
@raise_cap.data = internal global %struct.__user_cap_data_struct zeroinitializer, align 8
@raise_cap.n = internal global %struct.__user_cap_data_struct zeroinitializer, align 8
@clear1 = dso_local global ptr null, align 8
@clear2 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raise_cap(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr @clear1, align 8
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr @clear2, align 8
  store i64 0, ptr %5, align 8
  store i32 429392688, ptr @raise_cap.head, align 8
  store i64 0, ptr getelementptr inbounds (%struct.__user_cap_header_struct, ptr @raise_cap.head, i32 0, i32 1), align 8
  %6 = call i32 @capget(ptr noundef @raise_cap.head, ptr noundef @raise_cap.data)
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i32, ptr %3, align 4
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds i64, ptr %11, i64 0
  %13 = load i64, ptr %12, align 8
  %14 = load i64, ptr @raise_cap.data, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr getelementptr inbounds (%struct.__user_cap_data_struct, ptr @raise_cap.data, i32 0, i32 1), align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 2
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr getelementptr inbounds (%struct.__user_cap_data_struct, ptr @raise_cap.data, i32 0, i32 2), align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 0
  store i64 305402420, ptr %30, align 8
  %31 = call i32 @capget(ptr noundef @raise_cap.head, ptr noundef @raise_cap.n)
  %32 = load i64, ptr @raise_cap.n, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds i64, ptr %33, i64 0
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 2
  store i64 4294967295, ptr %39, align 8
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 1
  store i64 4294967295, ptr %41, align 8
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 4294967295, ptr %43, align 8
  br label %55

44:                                               ; preds = %28
  %45 = load i64, ptr @raise_cap.data, align 8
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds i64, ptr %46, i64 0
  store i64 %45, ptr %47, align 8
  br label %48

48:                                               ; preds = %44, %22, %16, %10
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %3, align 4
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds i64, ptr %52, i32 1
  store ptr %53, ptr %2, align 8
  br label %7, !llvm.loop !6

54:                                               ; preds = %7
  br label %55

55:                                               ; preds = %54, %37
  ret void
}

declare i32 @capget(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
