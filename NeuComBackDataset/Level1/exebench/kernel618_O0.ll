; ModuleID = '../benchmarks/fine_grained/exebench/kernel618.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createRectBox(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_7__, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %3, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr %3, align 4
  store i32 %15, ptr %5, align 4
  %16 = load i32, ptr %4, align 4
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %3, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %3, align 4
  br label %41

28:                                               ; preds = %1
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, ptr %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %5, align 4
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, ptr %3, align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, ptr %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, ptr %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %3, align 4
  br label %66

53:                                               ; preds = %41
  %54 = load i32, ptr %5, align 4
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, ptr %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, ptr %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %5, align 4
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, ptr %4, align 4
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %4, align 4
  br label %91

78:                                               ; preds = %66
  %79 = load i32, ptr %6, align 4
  %80 = load ptr, ptr %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, ptr %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load ptr, ptr %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, ptr %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %6, align 4
  br label %90

90:                                               ; preds = %85, %78
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, ptr %4, align 4
  %93 = load ptr, ptr %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  store i32 %102, ptr %4, align 4
  br label %116

103:                                              ; preds = %91
  %104 = load i32, ptr %6, align 4
  %105 = load ptr, ptr %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, ptr %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load ptr, ptr %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, ptr %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  store i32 %114, ptr %6, align 4
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %98
  %117 = load i32, ptr %3, align 4
  %118 = load ptr, ptr %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, ptr %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, ptr %119, i32 0, i32 0
  store i32 %117, ptr %120, align 4
  %121 = load i32, ptr %4, align 4
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, ptr %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, ptr %123, i32 0, i32 1
  store i32 %121, ptr %124, align 4
  %125 = load i32, ptr %5, align 4
  %126 = load ptr, ptr %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, ptr %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, ptr %127, i32 0, i32 2
  store i32 %125, ptr %128, align 4
  %129 = load i32, ptr %6, align 4
  %130 = load ptr, ptr %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, ptr %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, ptr %131, i32 0, i32 3
  store i32 %129, ptr %132, align 4
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
