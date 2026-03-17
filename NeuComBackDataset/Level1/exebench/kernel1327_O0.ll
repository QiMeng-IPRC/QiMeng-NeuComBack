; ModuleID = '../benchmarks/fine_grained/exebench/kernel1327.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1327.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@t_null = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_match(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @t_null, align 4
  %4 = shl i32 %3, 8
  %5 = add nsw i32 %4, 0
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_8__, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, ptr %8, i32 0, i32 0
  store i32 %5, ptr %9, align 4
  %10 = load i32, ptr @t_null, align 4
  %11 = shl i32 %10, 8
  %12 = add nsw i32 %11, 0
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_10__, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, ptr %15, i32 0, i32 0
  store i32 %12, ptr %16, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, ptr %20, i32 0, i32 1
  store i32 %19, ptr %21, align 4
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
