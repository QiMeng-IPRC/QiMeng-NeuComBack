; ModuleID = '../benchmarks/fine_grained/exebench/kernel928.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel928.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnt = dso_local global ptr null, align 8
@xright = dso_local global i32 0, align 4
@xfact = dso_local global i32 0, align 4
@xleft = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_hidden_line_removal() #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @pnt, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %38

4:                                                ; preds = %0
  store i32 0, ptr %1, align 4
  br label %5

5:                                                ; preds = %34, %4
  %6 = load i32, ptr %1, align 4
  %7 = load i32, ptr @xright, align 4
  %8 = load i32, ptr @xfact, align 4
  %9 = sdiv i32 %7, %8
  %10 = load i32, ptr @xleft, align 4
  %11 = load i32, ptr @xfact, align 4
  %12 = sdiv i32 %10, %11
  %13 = sub nsw i32 %9, %12
  %14 = icmp sle i32 %6, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %5
  %16 = load ptr, ptr @pnt, align 8
  %17 = load i32, ptr %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, ptr %16, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load ptr, ptr @pnt, align 8
  %24 = load i32, ptr %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, ptr %23, i64 %25
  %27 = load i64, ptr %26, align 8
  %28 = call i32 @free(i64 noundef %27)
  %29 = load ptr, ptr @pnt, align 8
  %30 = load i32, ptr %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, ptr %29, i64 %31
  store i64 0, ptr %32, align 8
  br label %33

33:                                               ; preds = %22, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  br label %5, !llvm.loop !6

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %37, %0
  ret void
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
