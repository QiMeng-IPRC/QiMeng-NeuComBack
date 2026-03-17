; ModuleID = '../benchmarks/fine_grained/exebench/kernel1254.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1254.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@audeng_mp3_play = dso_local local_unnamed_addr global i32 0, align 4
@audeng_mp3 = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4
@audeng_mp3_pause = dso_local local_unnamed_addr global i32 0, align 4
@audeng_mp3_resume = dso_local local_unnamed_addr global i32 0, align 4
@audeng_mp3_stop = dso_local local_unnamed_addr global i32 0, align 4
@audeng_mp3_seek = dso_local local_unnamed_addr global i32 0, align 4
@audeng_mp3_getpos = dso_local local_unnamed_addr global i32 0, align 4
@audeng_mp3_getlen = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @audeng_mp3_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @audeng_mp3_play, align 4, !tbaa !5
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @audeng_mp3, i64 0, i32 6), align 4, !tbaa !9
  %2 = load i32, ptr @audeng_mp3_pause, align 4, !tbaa !5
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @audeng_mp3, i64 0, i32 5), align 4, !tbaa !11
  %3 = load i32, ptr @audeng_mp3_resume, align 4, !tbaa !5
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @audeng_mp3, i64 0, i32 4), align 4, !tbaa !12
  %4 = load i32, ptr @audeng_mp3_stop, align 4, !tbaa !5
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @audeng_mp3, i64 0, i32 3), align 4, !tbaa !13
  %5 = load i32, ptr @audeng_mp3_seek, align 4, !tbaa !5
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @audeng_mp3, i64 0, i32 2), align 4, !tbaa !14
  %6 = load i32, ptr @audeng_mp3_getpos, align 4, !tbaa !5
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @audeng_mp3, i64 0, i32 1), align 4, !tbaa !15
  %7 = load i32, ptr @audeng_mp3_getlen, align 4, !tbaa !5
  store i32 %7, ptr @audeng_mp3, align 4, !tbaa !16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 24}
!10 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!11 = !{!10, !6, i64 20}
!12 = !{!10, !6, i64 16}
!13 = !{!10, !6, i64 12}
!14 = !{!10, !6, i64 8}
!15 = !{!10, !6, i64 4}
!16 = !{!10, !6, i64 0}
