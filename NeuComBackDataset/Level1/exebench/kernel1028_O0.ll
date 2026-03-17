; ModuleID = '../benchmarks/fine_grained/exebench/kernel1028.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1028.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@None_Device = dso_local global i32 0, align 4
@CRT_Device = dso_local global i32 0, align 4
@DVI_Device = dso_local global i32 0, align 4
@LCD_Device = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_get_gamma_support_state(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, ptr @None_Device, align 4
  %9 = load ptr, ptr %4, align 8
  store i32 %8, ptr %9, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i32, ptr @CRT_Device, align 4
  %12 = load i32, ptr @DVI_Device, align 4
  %13 = or i32 %11, %12
  %14 = load i32, ptr @LCD_Device, align 4
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %4, align 8
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %10, %7
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
