; ModuleID = '../benchmarks/fine_grained/exebench/kernel1185.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ES0 = dso_local global i32 0, align 4
@TR1 = dso_local global i32 0, align 4
@SCON0 = dso_local global i32 0, align 4
@PCON = dso_local global i32 0, align 4
@TMOD = dso_local global i32 0, align 4
@CKCON = dso_local global i32 0, align 4
@TH1 = dso_local global i32 0, align 4
@TL1 = dso_local global i32 0, align 4
@TF1 = dso_local global i64 0, align 8
@RI = dso_local global i64 0, align 8
@receiveTail0 = dso_local global i64 0, align 8
@receiveHead0 = dso_local global i64 0, align 8
@transmitIsBusy0 = dso_local global i64 0, align 8
@TI = dso_local global i64 0, align 8
@EA = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial0_init(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr @ES0, align 4
  store i32 0, ptr @TR1, align 4
  store i32 80, ptr @SCON0, align 4
  %3 = load i32, ptr @PCON, align 4
  %4 = or i32 %3, 128
  store i32 %4, ptr @PCON, align 4
  %5 = load i32, ptr @TMOD, align 4
  %6 = and i32 %5, 15
  %7 = or i32 %6, 32
  store i32 %7, ptr @TMOD, align 4
  %8 = load i32, ptr @CKCON, align 4
  %9 = or i32 %8, 16
  store i32 %9, ptr @CKCON, align 4
  %10 = load i32, ptr %2, align 4
  store i32 %10, ptr @TH1, align 4
  store i32 %10, ptr @TL1, align 4
  store i64 0, ptr @TF1, align 8
  store i32 1, ptr @TR1, align 4
  store i64 0, ptr @RI, align 8
  store i64 0, ptr @receiveTail0, align 8
  store i64 0, ptr @receiveHead0, align 8
  store i64 0, ptr @transmitIsBusy0, align 8
  store i64 0, ptr @TI, align 8
  store i32 1, ptr @EA, align 4
  store i32 1, ptr @ES0, align 4
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
