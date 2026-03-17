; ModuleID = '../benchmarks/fine_grained/exebench/kernel1497.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1497.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_pointer = dso_local global i32 0, align 4
@alignment = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @realign_data_pointer() #0 {
  %1 = load i32, ptr @data_pointer, align 4
  %2 = load i32, ptr @alignment, align 4
  %3 = sub nsw i32 %2, 1
  %4 = and i32 %1, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, ptr @alignment, align 4
  %8 = load i32, ptr @data_pointer, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, ptr @data_pointer, align 4
  %10 = load i32, ptr @alignment, align 4
  %11 = sub nsw i32 0, %10
  %12 = load i32, ptr @data_pointer, align 4
  %13 = and i32 %12, %11
  store i32 %13, ptr @data_pointer, align 4
  br label %14

14:                                               ; preds = %6, %0
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
