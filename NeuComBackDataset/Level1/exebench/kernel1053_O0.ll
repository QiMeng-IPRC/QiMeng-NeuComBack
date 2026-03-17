; ModuleID = '../benchmarks/fine_grained/exebench/kernel1053.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1053.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }

@Scr = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ComputeWindowTitleOffsets(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %8 = load ptr, ptr @Scr, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, ptr %16, i32 0, i32 0
  store i32 %15, ptr %17, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, ptr %18, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load ptr, ptr @Scr, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22, %3
  %29 = load ptr, ptr @Scr, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8
  %35 = add nsw i32 %34, %31
  store i32 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr @Scr, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = sub nsw i32 %37, %41
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, ptr %43, i32 0, i32 2
  store i32 %42, ptr %44, align 8
  %45 = load i64, ptr %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %97

47:                                               ; preds = %36
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, ptr %48, i32 0, i32 4
  %50 = load i64, ptr %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %47
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, ptr %56, i32 0, i32 3
  %58 = load i64, ptr %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load ptr, ptr @Scr, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = mul nsw i32 %64, 2
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32 [ %65, %60 ], [ 0, %66 ]
  %69 = add nsw i32 %55, %68
  %70 = load ptr, ptr @Scr, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, ptr %71, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load ptr, ptr @Scr, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, ptr %76, i32 0, i32 0
  %78 = load i32, ptr %77, align 8
  br label %80

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  %82 = add nsw i32 %69, %81
  %83 = load ptr, ptr @Scr, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add nsw i32 %82, %85
  store i32 %86, ptr %7, align 4
  %87 = load i32, ptr %7, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load i32, ptr %7, align 4
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, ptr %94, i32 0, i32 2
  store i32 %93, ptr %95, align 8
  br label %96

96:                                               ; preds = %92, %80
  br label %97

97:                                               ; preds = %96, %47, %36
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
