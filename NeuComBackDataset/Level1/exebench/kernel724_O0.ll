; ModuleID = '../benchmarks/fine_grained/exebench/kernel724.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel724.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z26_state = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @H_VSYNC(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.z26_state, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.z26_state, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %45

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.z26_state, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.z26_state, ptr %18, i32 0, i32 2
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.z26_state, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.z26_state, ptr %24, i32 0, i32 3
  store i32 %23, ptr %25, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.z26_state, ptr %26, i32 0, i32 4
  store i32 1, ptr %27, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.z26_state, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %14
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.z26_state, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %32, %14
  br label %38

38:                                               ; preds = %37, %1
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.z26_state, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.z26_state, ptr %43, i32 0, i32 1
  store i32 %42, ptr %44, align 4
  br label %45

45:                                               ; preds = %38, %13
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
