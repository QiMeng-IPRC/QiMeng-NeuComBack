; ModuleID = '../benchmarks/fine_grained/exebench/kernel297.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel297.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InputBuf = dso_local global ptr null, align 8
@Cursor = dso_local global ptr null, align 8
@LastChar = dso_local global ptr null, align 8
@INBUFSIZE = dso_local global i32 0, align 4
@InputLim = dso_local global ptr null, align 8
@Mark = dso_local global ptr null, align 8
@MarkIsSet = dso_local global i64 0, align 8
@MetaNext = dso_local global i64 0, align 8
@CcKeyMap = dso_local global i32 0, align 4
@CurrentKeyMap = dso_local global i32 0, align 4
@AltKeyMap = dso_local global i64 0, align 8
@Hist_num = dso_local global i64 0, align 8
@DoingArg = dso_local global i64 0, align 8
@Argument = dso_local global i32 0, align 4
@F_UNASSIGNED = dso_local global i32 0, align 4
@LastCmd = dso_local global i32 0, align 4
@IncMatchLen = dso_local global i64 0, align 8
@MacroLvl = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetInLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load ptr, ptr @InputBuf, align 8
  store ptr %3, ptr @Cursor, align 8
  %4 = load ptr, ptr @InputBuf, align 8
  store ptr %4, ptr @LastChar, align 8
  %5 = load ptr, ptr @InputBuf, align 8
  %6 = load i32, ptr @INBUFSIZE, align 4
  %7 = sub nsw i32 %6, 2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store ptr %9, ptr @InputLim, align 8
  %10 = load ptr, ptr @InputBuf, align 8
  store ptr %10, ptr @Mark, align 8
  store i64 0, ptr @MarkIsSet, align 8
  store i64 0, ptr @MetaNext, align 8
  %11 = load i32, ptr @CcKeyMap, align 4
  store i32 %11, ptr @CurrentKeyMap, align 4
  store i64 0, ptr @AltKeyMap, align 8
  store i64 0, ptr @Hist_num, align 8
  store i64 0, ptr @DoingArg, align 8
  store i32 1, ptr @Argument, align 4
  %12 = load i32, ptr @F_UNASSIGNED, align 4
  store i32 %12, ptr @LastCmd, align 4
  store i64 0, ptr @IncMatchLen, align 8
  %13 = load i32, ptr %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, ptr @MacroLvl, align 4
  br label %16

16:                                               ; preds = %15, %1
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
