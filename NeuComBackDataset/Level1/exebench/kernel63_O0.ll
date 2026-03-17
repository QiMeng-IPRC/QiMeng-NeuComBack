; ModuleID = '../benchmarks/fine_grained/exebench/kernel63.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel63.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32 }

@Chip8 = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op_7xxx() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %2 = and i32 %1, 255
  %3 = load ptr, ptr @Chip8, align 8
  %4 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 1), align 8
  %5 = and i32 %4, 3840
  %6 = ashr i32 %5, 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, %2
  store i32 %10, ptr %8, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
  %12 = add nsw i32 %11, 2
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @Chip8, i32 0, i32 2), align 4
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
