; ModuleID = '../benchmarks/fine_grained/exebench/kernel1480.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1480.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUDIO_PCM_OSS = dso_local local_unnamed_addr global i32 0, align 4
@mode = dso_local local_unnamed_addr global i32 0, align 4
@AUDIO_PCM_ESD = dso_local local_unnamed_addr global i32 0, align 4
@AUDIO_PCM_ALSA = dso_local local_unnamed_addr global i32 0, align 4
@AUDIO_PCM_DMY = dso_local local_unnamed_addr global i32 0, align 4
@AUDIO_PCM_ANY = dso_local local_unnamed_addr global i32 0, align 4
@mode_onlyone = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @audio_set_output_device(i8 noundef signext %0) local_unnamed_addr #0 {
  %2 = sext i8 %0 to i32
  switch i32 %2, label %6 [
    i32 111, label %7
    i32 101, label %3
    i32 115, label %4
    i32 48, label %5
  ]

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %1, %6, %5, %4, %3
  %8 = phi ptr [ @AUDIO_PCM_ANY, %6 ], [ @AUDIO_PCM_DMY, %5 ], [ @AUDIO_PCM_ALSA, %4 ], [ @AUDIO_PCM_ESD, %3 ], [ @AUDIO_PCM_OSS, %1 ]
  %9 = load i32, ptr %8, align 4, !tbaa !5
  store i32 %9, ptr @mode, align 4, !tbaa !5
  store i32 1, ptr @mode_onlyone, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
