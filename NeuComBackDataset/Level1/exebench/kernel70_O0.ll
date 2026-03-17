; ModuleID = '../benchmarks/fine_grained/exebench/kernel70.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel70.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @art_drect_intersect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %7, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %10, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %15, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %19, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i64 [ %17, %14 ], [ %21, %18 ]
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %24, i32 0, i32 0
  store i64 %23, ptr %25, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, ptr %26, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, ptr %34, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  br label %41

37:                                               ; preds = %22
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, ptr %38, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i64 [ %36, %33 ], [ %40, %37 ]
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %43, i32 0, i32 1
  store i64 %42, ptr %44, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, ptr %45, i32 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, ptr %48, i32 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, ptr %53, i32 0, i32 2
  %55 = load i64, ptr %54, align 8
  br label %60

56:                                               ; preds = %41
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, ptr %57, i32 0, i32 2
  %59 = load i64, ptr %58, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, ptr %62, i32 0, i32 2
  store i64 %61, ptr %63, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, ptr %64, i32 0, i32 3
  %66 = load i64, ptr %65, align 8
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, ptr %67, i32 0, i32 3
  %69 = load i64, ptr %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, ptr %72, i32 0, i32 3
  %74 = load i64, ptr %73, align 8
  br label %79

75:                                               ; preds = %60
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, ptr %76, i32 0, i32 3
  %78 = load i64, ptr %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i64 [ %74, %71 ], [ %78, %75 ]
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, ptr %81, i32 0, i32 3
  store i64 %80, ptr %82, align 8
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
