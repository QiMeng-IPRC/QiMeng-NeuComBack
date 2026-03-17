; ModuleID = '../benchmarks/fine_grained/exebench/kernel422.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i64, ptr }

@sfConfig = dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@Num_enabled_extensions = dso_local global i64 0, align 8
@sflow_extensions = dso_local global ptr null, align 8
@extension_descriptor = dso_local global ptr null, align 8
@IP_extension_mask = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init_sflow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @sfConfig, i32 0, i32 1), align 8
  store i64 0, ptr @sfConfig, align 8
  store i32 0, ptr %1, align 4
  store i64 0, ptr @Num_enabled_extensions, align 8
  br label %3

3:                                                ; preds = %21, %0
  %4 = load ptr, ptr @sflow_extensions, align 8
  %5 = load i32, ptr %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %4, i64 %6
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load ptr, ptr @extension_descriptor, align 8
  %12 = load i32, ptr %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i64, ptr @Num_enabled_extensions, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr @Num_enabled_extensions, align 8
  br label %21

21:                                               ; preds = %18, %10
  %22 = load i32, ptr %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %1, align 4
  br label %3, !llvm.loop !6

24:                                               ; preds = %3
  store i32 0, ptr @IP_extension_mask, align 4
  store i32 0, ptr %1, align 4
  br label %25

25:                                               ; preds = %82, %24
  %26 = load ptr, ptr @extension_descriptor, align 8
  %27 = load i32, ptr %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, ptr %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %85

33:                                               ; preds = %25
  %34 = load ptr, ptr @extension_descriptor, align 8
  %35 = load i32, ptr %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, ptr %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8
  switch i32 %39, label %82 [
    i32 9, label %40
    i32 11, label %54
    i32 23, label %68
  ]

40:                                               ; preds = %33
  %41 = load ptr, ptr @extension_descriptor, align 8
  %42 = load i32, ptr %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, ptr %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, ptr %44, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, ptr @IP_extension_mask, align 4
  %50 = or i32 %49, 1
  store i32 %50, ptr @IP_extension_mask, align 4
  %51 = load i64, ptr @Num_enabled_extensions, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, ptr @Num_enabled_extensions, align 8
  br label %53

53:                                               ; preds = %48, %40
  br label %82

54:                                               ; preds = %33
  %55 = load ptr, ptr @extension_descriptor, align 8
  %56 = load i32, ptr %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, ptr %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, ptr %58, i32 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32, ptr @IP_extension_mask, align 4
  %64 = or i32 %63, 2
  store i32 %64, ptr @IP_extension_mask, align 4
  %65 = load i64, ptr @Num_enabled_extensions, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, ptr @Num_enabled_extensions, align 8
  br label %67

67:                                               ; preds = %62, %54
  br label %82

68:                                               ; preds = %33
  %69 = load ptr, ptr @extension_descriptor, align 8
  %70 = load i32, ptr %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, ptr %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, ptr %72, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, ptr @IP_extension_mask, align 4
  %78 = or i32 %77, 4
  store i32 %78, ptr @IP_extension_mask, align 4
  %79 = load i64, ptr @Num_enabled_extensions, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, ptr @Num_enabled_extensions, align 8
  br label %81

81:                                               ; preds = %76, %68
  br label %82

82:                                               ; preds = %33, %81, %67, %53
  %83 = load i32, ptr %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %1, align 4
  br label %25, !llvm.loop !8

85:                                               ; preds = %25
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
!8 = distinct !{!8, !7}
