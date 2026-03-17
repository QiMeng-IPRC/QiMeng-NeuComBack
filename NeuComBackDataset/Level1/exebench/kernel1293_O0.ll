; ModuleID = '../benchmarks/fine_grained/exebench/kernel1293.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1293.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vissprite_p = dso_local global ptr null, align 8
@vissprites = dso_local global ptr null, align 8
@MAXVISSPRITES = dso_local global i64 0, align 8
@overflowsprite = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @R_NewVisSprite() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @vissprite_p, align 8
  %3 = load ptr, ptr @vissprites, align 8
  %4 = load i64, ptr @MAXVISSPRITES, align 8
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = icmp eq ptr %2, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store ptr @overflowsprite, ptr %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = load ptr, ptr @vissprite_p, align 8
  %10 = getelementptr inbounds i32, ptr %9, i32 1
  store ptr %10, ptr @vissprite_p, align 8
  %11 = load ptr, ptr @vissprite_p, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 -1
  store ptr %12, ptr %1, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load ptr, ptr %1, align 8
  ret ptr %14
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
