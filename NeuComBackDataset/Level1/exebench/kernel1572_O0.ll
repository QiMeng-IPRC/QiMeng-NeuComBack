; ModuleID = '../benchmarks/fine_grained/exebench/kernel1572.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1572.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P2_Flags = dso_local global ptr null, align 8
@P2_Counters = dso_local global ptr null, align 8
@P2_Top = dso_local global ptr null, align 8
@P2_Bottom = dso_local global ptr null, align 8
@P2_Enable = dso_local global ptr null, align 8
@P2_Music_Top = dso_local global ptr null, align 8
@P2_Music_Bottom = dso_local global ptr null, align 8
@P2_Music_Count = dso_local global ptr null, align 8
@Pitfall2 = dso_local global i64 0, align 8
@P2_Rbyte = dso_local global i64 0, align 8
@P2_AUDV = dso_local global i64 0, align 8
@P2_sreg = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init_P2() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %38, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %41

5:                                                ; preds = %2
  %6 = load ptr, ptr @P2_Flags, align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %6, i64 %8
  store i64 0, ptr %9, align 8
  %10 = load ptr, ptr @P2_Counters, align 8
  %11 = load i32, ptr %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %10, i64 %12
  store i64 0, ptr %13, align 8
  %14 = load ptr, ptr @P2_Top, align 8
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %14, i64 %16
  store i64 0, ptr %17, align 8
  %18 = load ptr, ptr @P2_Bottom, align 8
  %19 = load i32, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %18, i64 %20
  store i64 0, ptr %21, align 8
  %22 = load ptr, ptr @P2_Enable, align 8
  %23 = load i32, ptr %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, ptr %22, i64 %24
  store i64 0, ptr %25, align 8
  %26 = load ptr, ptr @P2_Music_Top, align 8
  %27 = load i32, ptr %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, ptr %26, i64 %28
  store i64 0, ptr %29, align 8
  %30 = load ptr, ptr @P2_Music_Bottom, align 8
  %31 = load i32, ptr %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %30, i64 %32
  store i64 0, ptr %33, align 8
  %34 = load ptr, ptr @P2_Music_Count, align 8
  %35 = load i32, ptr %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %34, i64 %36
  store i64 0, ptr %37, align 8
  br label %38

38:                                               ; preds = %5
  %39 = load i32, ptr %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4
  br label %2, !llvm.loop !6

41:                                               ; preds = %2
  store i64 0, ptr @Pitfall2, align 8
  store i64 0, ptr @P2_Rbyte, align 8
  store i64 0, ptr @P2_AUDV, align 8
  store i32 1, ptr @P2_sreg, align 4
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
