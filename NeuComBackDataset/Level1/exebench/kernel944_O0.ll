; ModuleID = '../benchmarks/fine_grained/exebench/kernel944.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel944.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32 }

@Chip8 = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op_9xxx() #0 {
  %1 = load ptr, ptr @Chip8, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %3 = and i32 %2, 3840
  %4 = ashr i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i64, ptr %1, i64 %5
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr @Chip8, align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %10 = and i32 %9, 240
  %11 = ashr i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %8, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = icmp ne i64 %7, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
  br label %22

19:                                               ; preds = %0
  %20 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
  %21 = add nsw i32 %20, 2
  store i32 %21, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
  br label %22

22:                                               ; preds = %19, %16
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
