; ModuleID = '../benchmarks/fine_grained/exebench/kernel1064.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1064.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charpos = dso_local global i32 0, align 4
@proglen = dso_local global i32 0, align 4
@prog = dso_local global ptr null, align 8
@ch = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Getchar() #0 {
  %1 = load i32, ptr @charpos, align 4
  %2 = load i32, ptr @proglen, align 4
  %3 = sub nsw i32 %2, 1
  %4 = icmp slt i32 %1, %3
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, ptr @charpos, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @charpos, align 4
  %8 = load ptr, ptr @prog, align 8
  %9 = load i32, ptr @charpos, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %8, i64 %10
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr @ch, align 4
  br label %15

13:                                               ; preds = %0
  %14 = call i32 @error(i32 noundef 1)
  br label %15

15:                                               ; preds = %13, %5
  ret void
}

declare i32 @error(i32 noundef) #1

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
