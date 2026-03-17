; ModuleID = '../benchmarks/fine_grained/exebench/kernel1097.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1097.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pidListAlloc = dso_local global i32 0, align 4
@pidList = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ensurePidList(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr @pidListAlloc, align 4
  %4 = load i32, ptr %2, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %15

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @pidListAlloc, align 4
  %9 = load i32, ptr @pidList, align 4
  %10 = load i32, ptr @pidListAlloc, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32 @realloc(i32 noundef %9, i32 noundef %13)
  store i32 %14, ptr @pidList, align 4
  br label %15

15:                                               ; preds = %7, %6
  ret void
}

declare i32 @realloc(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
