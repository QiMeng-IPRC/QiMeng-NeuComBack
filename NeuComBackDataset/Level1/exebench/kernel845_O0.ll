; ModuleID = '../benchmarks/fine_grained/exebench/kernel845.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel845.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plcvm_sp = dso_local global i64 0, align 8
@plcvm_sfp = dso_local global i64 0, align 8
@plcvm_ram = dso_local global ptr null, align 8
@PLC_ANSWER_ERROR_OFR_SP = dso_local global i32 0, align 4
@plcvm_stat = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb_not() #0 {
  %1 = load i64, ptr @plcvm_sp, align 8
  %2 = load i64, ptr @plcvm_sfp, align 8
  %3 = icmp ult i64 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load ptr, ptr @plcvm_ram, align 8
  %6 = load i64, ptr @plcvm_sp, align 8
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = load ptr, ptr @plcvm_ram, align 8
  %11 = load i64, ptr @plcvm_sp, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  store i32 %9, ptr %12, align 4
  br label %15

13:                                               ; preds = %0
  %14 = load i32, ptr @PLC_ANSWER_ERROR_OFR_SP, align 4
  store i32 %14, ptr @plcvm_stat, align 4
  br label %15

15:                                               ; preds = %13, %4
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
