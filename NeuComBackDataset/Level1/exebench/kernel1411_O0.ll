; ModuleID = '../benchmarks/fine_grained/exebench/kernel1411.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1411.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d0_val = dso_local global i64 0, align 8
@d0_val_t = dso_local global i64 0, align 8
@d0_ev = dso_local global i64 0, align 8
@d0_req_up = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_d0() #0 {
  %1 = load i64, ptr @d0_val, align 8
  %2 = trunc i64 %1 to i32
  %3 = load i64, ptr @d0_val_t, align 8
  %4 = trunc i64 %3 to i32
  %5 = icmp ne i32 %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, ptr @d0_val_t, align 8
  store i64 %7, ptr @d0_val, align 8
  store i64 0, ptr @d0_ev, align 8
  br label %9

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %8, %6
  store i64 0, ptr @d0_req_up, align 8
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
