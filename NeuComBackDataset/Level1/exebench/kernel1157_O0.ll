; ModuleID = '../benchmarks/fine_grained/exebench/kernel1157.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR12_REG = dso_local global i32 0, align 4
@script_cmd_args_len = dso_local global i64 0, align 8
@script_ptr = dso_local global i32 0, align 4
@TRUE = dso_local global i32 0, align 4
@script_continue = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_SoundStopTone_b() #0 {
  store i32 0, ptr @NR12_REG, align 4
  %1 = load i64, ptr @script_cmd_args_len, align 8
  %2 = add nsw i64 1, %1
  %3 = load i32, ptr @script_ptr, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %2
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr @script_ptr, align 4
  %7 = load i32, ptr @TRUE, align 4
  store i32 %7, ptr @script_continue, align 4
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
