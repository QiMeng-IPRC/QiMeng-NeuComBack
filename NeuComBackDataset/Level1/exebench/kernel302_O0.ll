; ModuleID = '../benchmarks/fine_grained/exebench/kernel302.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel302.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.yas_bma_acceleration }
%struct.yas_bma_acceleration = type { i32, i32, i32, i32, i32, i32 }

@acc_data = dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yas_bma222_data_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load i32, ptr @acc_data, align 4
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 1), align 4
  store i32 %10, ptr %8, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %3
  %14 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2), align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 0
  %17 = load i32, ptr %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2), align 4
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i32, ptr %22, i64 0
  %24 = load i32, ptr %23, align 4
  %25 = sub nsw i32 %21, %24
  br label %33

26:                                               ; preds = %13
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2), align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 0
  %30 = load i32, ptr %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi i32 [ %25, %20 ], [ %32, %26 ]
  %35 = load i32, ptr %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %85, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2, i32 1), align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 1
  %41 = load i32, ptr %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2, i32 1), align 4
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds i32, ptr %46, i64 1
  %48 = load i32, ptr %47, align 4
  %49 = sub nsw i32 %45, %48
  br label %57

50:                                               ; preds = %37
  %51 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2, i32 1), align 4
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds i32, ptr %52, i64 1
  %54 = load i32, ptr %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi i32 [ %49, %44 ], [ %56, %50 ]
  %59 = load i32, ptr %8, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %85, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2, i32 2), align 4
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 2
  %65 = load i32, ptr %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2, i32 2), align 4
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds i32, ptr %70, i64 2
  %72 = load i32, ptr %71, align 4
  %73 = sub nsw i32 %69, %72
  br label %81

74:                                               ; preds = %61
  %75 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2, i32 2), align 4
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds i32, ptr %76, i64 2
  %78 = load i32, ptr %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = sub nsw i32 0, %79
  br label %81

81:                                               ; preds = %74, %68
  %82 = phi i32 [ %73, %68 ], [ %80, %74 ]
  %83 = load i32, ptr %8, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %81, %57, %33
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds i32, ptr %86, i64 0
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %89, i32 0, i32 0
  store i32 %88, ptr %90, align 4
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr inbounds i32, ptr %91, i64 1
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %6, align 8
  %95 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %94, i32 0, i32 1
  store i32 %93, ptr %95, align 4
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds i32, ptr %96, i64 2
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %6, align 8
  %100 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %99, i32 0, i32 2
  store i32 %98, ptr %100, align 4
  %101 = load ptr, ptr %5, align 8
  %102 = getelementptr inbounds i32, ptr %101, i64 0
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %104, i32 0, i32 3
  store i32 %103, ptr %105, align 4
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds i32, ptr %106, i64 1
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %109, i32 0, i32 4
  store i32 %108, ptr %110, align 4
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds i32, ptr %111, i64 2
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %114, i32 0, i32 5
  store i32 %113, ptr %115, align 4
  br label %118

116:                                              ; preds = %81
  %117 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %117, ptr align 4 getelementptr inbounds (%struct.TYPE_2__, ptr @acc_data, i32 0, i32 2), i64 24, i1 false)
  br label %118

118:                                              ; preds = %116, %85
  br label %150

119:                                              ; preds = %3
  %120 = load ptr, ptr %4, align 8
  %121 = getelementptr inbounds i32, ptr %120, i64 0
  %122 = load i32, ptr %121, align 4
  %123 = load ptr, ptr %6, align 8
  %124 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %123, i32 0, i32 0
  store i32 %122, ptr %124, align 4
  %125 = load ptr, ptr %4, align 8
  %126 = getelementptr inbounds i32, ptr %125, i64 1
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %128, i32 0, i32 1
  store i32 %127, ptr %129, align 4
  %130 = load ptr, ptr %4, align 8
  %131 = getelementptr inbounds i32, ptr %130, i64 2
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %6, align 8
  %134 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %133, i32 0, i32 2
  store i32 %132, ptr %134, align 4
  %135 = load ptr, ptr %5, align 8
  %136 = getelementptr inbounds i32, ptr %135, i64 0
  %137 = load i32, ptr %136, align 4
  %138 = load ptr, ptr %6, align 8
  %139 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %138, i32 0, i32 3
  store i32 %137, ptr %139, align 4
  %140 = load ptr, ptr %5, align 8
  %141 = getelementptr inbounds i32, ptr %140, i64 1
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %6, align 8
  %144 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %143, i32 0, i32 4
  store i32 %142, ptr %144, align 4
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr inbounds i32, ptr %145, i64 2
  %147 = load i32, ptr %146, align 4
  %148 = load ptr, ptr %6, align 8
  %149 = getelementptr inbounds %struct.yas_bma_acceleration, ptr %148, i32 0, i32 5
  store i32 %147, ptr %149, align 4
  br label %150

150:                                              ; preds = %119, %118
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
