; ModuleID = '../benchmarks/fine_grained/exebench/kernel1266.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1266.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@ck_keenObj = dso_local global ptr null, align 8
@IN_motion_Right = dso_local global i32 0, align 4
@IN_motion_Left = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CK4_ArachnutSearch(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr @ck_keenObj, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, ptr @IN_motion_Right, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, ptr @IN_motion_Left, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, ptr %16, i32 0, i32 1
  store i32 %15, ptr %17, align 8
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
