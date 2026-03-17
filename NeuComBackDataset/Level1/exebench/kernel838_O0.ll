; ModuleID = '../benchmarks/fine_grained/exebench/kernel838.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel838.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PLAYER = type { i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readjoy(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, ptr %8, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, ptr %6, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, ptr %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, ptr %7, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, ptr %9, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, ptr %3, align 4
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, ptr %10, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, ptr %9, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.PLAYER, ptr %42, i32 0, i32 0
  store i32 %41, ptr %43, align 8
  %44 = load i32, ptr %10, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.PLAYER, ptr %45, i32 0, i32 1
  store i32 %44, ptr %46, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.PLAYER, ptr %47, i32 0, i32 6
  %49 = load i64, ptr %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %40
  %52 = load i32, ptr %5, align 4
  %53 = load i32, ptr %6, align 4
  %54 = or i32 %52, %53
  %55 = load i32, ptr %7, align 4
  %56 = or i32 %54, %55
  %57 = load i32, ptr %8, align 4
  %58 = or i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %51, %40
  %61 = load i32, ptr %5, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.PLAYER, ptr %62, i32 0, i32 2
  store i32 %61, ptr %63, align 8
  %64 = load i32, ptr %6, align 4
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.PLAYER, ptr %65, i32 0, i32 3
  store i32 %64, ptr %66, align 4
  %67 = load i32, ptr %7, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.PLAYER, ptr %68, i32 0, i32 4
  store i32 %67, ptr %69, align 8
  %70 = load i32, ptr %8, align 4
  %71 = load ptr, ptr %4, align 8
  %72 = getelementptr inbounds %struct.PLAYER, ptr %71, i32 0, i32 5
  store i32 %70, ptr %72, align 4
  br label %73

73:                                               ; preds = %60, %51
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
