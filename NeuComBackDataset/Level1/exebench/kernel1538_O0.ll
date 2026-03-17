; ModuleID = '../benchmarks/fine_grained/exebench/kernel1538.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1538.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ET1 = dso_local global i64 0, align 8
@TMOD = dso_local global i32 0, align 4
@PCON = dso_local global i32 0, align 4
@TH1 = dso_local global i32 0, align 4
@TR1 = dso_local global i32 0, align 4
@SCON = dso_local global i32 0, align 4
@ES0 = dso_local global i64 0, align 8
@RI = dso_local global i64 0, align 8
@TI = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitSerial() #0 {
  store i64 0, ptr @ET1, align 8
  store i32 32, ptr @TMOD, align 4
  %1 = load i32, ptr @PCON, align 4
  %2 = or i32 %1, 128
  store i32 %2, ptr @PCON, align 4
  store i32 252, ptr @TH1, align 4
  store i32 1, ptr @TR1, align 4
  store i32 82, ptr @SCON, align 4
  store i64 0, ptr @ES0, align 8
  store i64 0, ptr @RI, align 8
  store i64 0, ptr @TI, align 8
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
