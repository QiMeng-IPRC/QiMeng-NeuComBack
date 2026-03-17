; ModuleID = '../benchmarks/fine_grained/exebench/kernel875.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel875.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P7L = dso_local global i32 0, align 4
@PM7L = dso_local global i32 0, align 4
@PMC7L = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PORT_ChangeP71Output(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr @P7L, align 4
  %7 = or i32 %6, 2
  store i32 %7, ptr @P7L, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load i32, ptr @P7L, align 4
  %10 = and i32 %9, -3
  store i32 %10, ptr @P7L, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32, ptr @PM7L, align 4
  %13 = and i32 %12, -3
  store i32 %13, ptr @PM7L, align 4
  %14 = load i32, ptr @PMC7L, align 4
  %15 = and i32 %14, -3
  store i32 %15, ptr @PMC7L, align 4
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
