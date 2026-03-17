; ModuleID = '../benchmarks/fine_grained/exebench/kernel1480.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1480.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUDIO_PCM_OSS = dso_local global i32 0, align 4
@mode = dso_local global i32 0, align 4
@AUDIO_PCM_ESD = dso_local global i32 0, align 4
@AUDIO_PCM_ALSA = dso_local global i32 0, align 4
@AUDIO_PCM_DMY = dso_local global i32 0, align 4
@AUDIO_PCM_ANY = dso_local global i32 0, align 4
@mode_onlyone = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_set_output_device(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = sext i8 %3 to i32
  switch i32 %4, label %13 [
    i32 111, label %5
    i32 101, label %7
    i32 115, label %9
    i32 48, label %11
  ]

5:                                                ; preds = %1
  %6 = load i32, ptr @AUDIO_PCM_OSS, align 4
  store i32 %6, ptr @mode, align 4
  br label %15

7:                                                ; preds = %1
  %8 = load i32, ptr @AUDIO_PCM_ESD, align 4
  store i32 %8, ptr @mode, align 4
  br label %15

9:                                                ; preds = %1
  %10 = load i32, ptr @AUDIO_PCM_ALSA, align 4
  store i32 %10, ptr @mode, align 4
  br label %15

11:                                               ; preds = %1
  %12 = load i32, ptr @AUDIO_PCM_DMY, align 4
  store i32 %12, ptr @mode, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, ptr @AUDIO_PCM_ANY, align 4
  store i32 %14, ptr @mode, align 4
  br label %15

15:                                               ; preds = %13, %11, %9, %7, %5
  store i32 1, ptr @mode_onlyone, align 4
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
