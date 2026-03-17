; ModuleID = '../benchmarks/fine_grained/exebench/kernel441.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel441.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@revols = dso_local global i64 0, align 8
@rpms_max = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detectar_rpms_max() #0 {
  %1 = load i64, ptr @revols, align 8
  %2 = load i64, ptr @rpms_max, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, ptr @revols, align 8
  store i64 %5, ptr @rpms_max, align 8
  br label %6

6:                                                ; preds = %4, %0
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
