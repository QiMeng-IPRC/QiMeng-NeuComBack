; ModuleID = '../benchmarks/fine_grained/exebench/kernel1297.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1297.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32 }

@Chip8 = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op_xxx5() #0 {
  %1 = load ptr, ptr @Chip8, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %3 = and i32 %2, 3840
  %4 = ashr i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr @Chip8, align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %10 = and i32 %9, 240
  %11 = ashr i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %8, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %7, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load ptr, ptr @Chip8, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 15
  store i32 1, ptr %18, align 4
  br label %22

19:                                               ; preds = %0
  %20 = load ptr, ptr @Chip8, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 15
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr @Chip8, align 8
  %24 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %25 = and i32 %24, 3840
  %26 = ashr i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %23, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr @Chip8, align 8
  %31 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %30, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sub nsw i32 %29, %36
  %38 = load ptr, ptr @Chip8, align 8
  %39 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %40 = and i32 %39, 3840
  %41 = ashr i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  store i32 %37, ptr %43, align 4
  %44 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
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
