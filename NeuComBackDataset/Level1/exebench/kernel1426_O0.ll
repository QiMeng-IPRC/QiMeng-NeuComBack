; ModuleID = '../benchmarks/fine_grained/exebench/kernel1426.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1426.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yytext = dso_local global ptr null, align 8
@column = dso_local global i32 0, align 4
@line = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @count_no_log() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %40, %0
  %3 = load ptr, ptr @yytext, align 8
  %4 = load i32, ptr %1, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load ptr, ptr @yytext, align 8
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  store i32 0, ptr @column, align 4
  %19 = load i32, ptr @line, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @line, align 4
  br label %39

21:                                               ; preds = %10
  %22 = load ptr, ptr @yytext, align 8
  %23 = load i32, ptr %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, ptr @column, align 4
  %31 = srem i32 %30, 8
  %32 = sub nsw i32 8, %31
  %33 = load i32, ptr @column, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, ptr @column, align 4
  br label %38

35:                                               ; preds = %21
  %36 = load i32, ptr @column, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @column, align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %1, align 4
  br label %2, !llvm.loop !6

43:                                               ; preds = %2
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
