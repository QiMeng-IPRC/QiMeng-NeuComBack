; ModuleID = '../benchmarks/fine_grained/exebench/kernel1200.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_WHILE = dso_local global i32 0, align 4
@lua_minimumnumstrings = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lua_setminimumstringtablesize(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, ptr @TK_WHILE, align 4
  %7 = sub nsw i32 %6, 257
  %8 = add nsw i32 %7, 1
  %9 = add nsw i32 %8, 9
  store i32 %9, ptr @lua_minimumnumstrings, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr @lua_minimumnumstrings, align 4
  br label %12

12:                                               ; preds = %10, %5
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
