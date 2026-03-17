; ModuleID = '../benchmarks/fine_grained/exebench/kernel125.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel125.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F = dso_local global i32 0, align 4
@ram = dso_local global ptr null, align 8
@IY = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_tb3iyd(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr @F, align 4
  %4 = and i32 %3, -131
  store i32 %4, ptr @F, align 4
  %5 = load i32, ptr @F, align 4
  %6 = or i32 %5, 16
  store i32 %6, ptr @F, align 4
  %7 = load ptr, ptr @ram, align 8
  %8 = load i32, ptr @IY, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, ptr @F, align 4
  %19 = and i32 %18, -69
  store i32 %19, ptr @F, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, ptr @F, align 4
  %22 = or i32 %21, 68
  store i32 %22, ptr @F, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  ret i32 20
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
