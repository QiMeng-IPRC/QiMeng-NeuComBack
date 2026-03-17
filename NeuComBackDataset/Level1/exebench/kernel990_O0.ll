; ModuleID = '../benchmarks/fine_grained/exebench/kernel990.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel990.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@joy_multijoy_no = dso_local global i32 0, align 4
@INPUT_joy_multijoy = dso_local global i64 0, align 8
@Atari800_machine_type = dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = dso_local global i64 0, align 8
@STICK = dso_local global ptr null, align 8
@PIA_PORT_input = dso_local global ptr null, align 8
@TRIG_input = dso_local global ptr null, align 8
@GTIA_TRIG = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INPUT_SelectMultiJoy(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 3
  store i32 %4, ptr %2, align 4
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr @joy_multijoy_no, align 4
  %6 = load i64, ptr @INPUT_joy_multijoy, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i64, ptr @Atari800_machine_type, align 8
  %10 = load i64, ptr @Atari800_MACHINE_5200, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load ptr, ptr @STICK, align 8
  %14 = load i32, ptr %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = or i32 240, %17
  %19 = load ptr, ptr @PIA_PORT_input, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 0
  store i32 %18, ptr %20, align 4
  %21 = load ptr, ptr @TRIG_input, align 8
  %22 = load i32, ptr %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr @GTIA_TRIG, align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 0
  store i32 %25, ptr %27, align 4
  br label %28

28:                                               ; preds = %12, %8, %1
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
