; ModuleID = '../benchmarks/fine_grained/exebench/kernel224.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel224.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stackCnt = dso_local global i64 0, align 8
@dirStack = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwpCwdPop() #0 {
  %1 = alloca i32, align 4
  store i32 -1, ptr %1, align 4
  %2 = load i64, ptr @stackCnt, align 8
  %3 = icmp ult i64 0, %2
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = load ptr, ptr @dirStack, align 8
  %6 = load i64, ptr @stackCnt, align 8
  %7 = add i64 %6, -1
  store i64 %7, ptr @stackCnt, align 8
  %8 = getelementptr inbounds i64, ptr %5, i64 %7
  %9 = load i64, ptr %8, align 8
  %10 = icmp ne i64 0, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = load ptr, ptr @dirStack, align 8
  %13 = load i64, ptr @stackCnt, align 8
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = call i32 @chdir(i64 noundef %15)
  store i32 %16, ptr %1, align 4
  %17 = load ptr, ptr @dirStack, align 8
  %18 = load i64, ptr @stackCnt, align 8
  %19 = getelementptr inbounds i64, ptr %17, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = call i32 @free(i64 noundef %20)
  %22 = load ptr, ptr @dirStack, align 8
  %23 = load i64, ptr @stackCnt, align 8
  %24 = getelementptr inbounds i64, ptr %22, i64 %23
  store i64 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %11, %4, %0
  %26 = load i32, ptr %1, align 4
  ret i32 %26
}

declare i32 @chdir(i64 noundef) #1

declare i32 @free(i64 noundef) #1

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
