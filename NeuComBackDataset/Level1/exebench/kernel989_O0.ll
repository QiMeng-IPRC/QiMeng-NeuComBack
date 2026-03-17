; ModuleID = '../benchmarks/fine_grained/exebench/kernel989.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel989.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RejectArmController_run(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_10__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, ptr %5, i32 0, i32 0
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %59 [
    i32 129, label %15
    i32 130, label %28
    i32 128, label %46
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, ptr %23, i32 0, i32 1
  store i32 130, ptr %24, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, ptr %25, i32 0, i32 0
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %22, %15
  br label %59

28:                                               ; preds = %11
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, ptr %36, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, ptr %41, i32 0, i32 1
  store i32 128, ptr %42, align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, ptr %43, i32 0, i32 0
  store i32 1, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %35, %28
  br label %59

46:                                               ; preds = %11
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, ptr %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, ptr %54, i32 0, i32 1
  store i32 130, ptr %55, align 4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, ptr %56, i32 0, i32 0
  store i32 1, ptr %57, align 4
  br label %58

58:                                               ; preds = %53, %46
  br label %59

59:                                               ; preds = %11, %58, %45, %27
  br label %60

60:                                               ; preds = %59, %1
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  switch i32 %68, label %76 [
    i32 129, label %69
    i32 130, label %70
    i32 128, label %71
  ]

69:                                               ; preds = %65
  br label %76

70:                                               ; preds = %65
  br label %76

71:                                               ; preds = %65
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, ptr %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, ptr %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, ptr %74, i32 0, i32 0
  store i32 1, ptr %75, align 4
  br label %76

76:                                               ; preds = %65, %71, %70, %69
  br label %77

77:                                               ; preds = %76, %60
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, ptr %78, i32 0, i32 0
  store i32 0, ptr %79, align 4
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
