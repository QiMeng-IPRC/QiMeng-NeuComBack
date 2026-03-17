; ModuleID = '../benchmarks/fine_grained/exebench/kernel1536.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1536.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@SD_DMA_TXBuffer = dso_local local_unnamed_addr global i32 0, align 4
@DMA2CNT = dso_local local_unnamed_addr global i64 0, align 8
@DMA2STA = dso_local local_unnamed_addr global i32 0, align 4
@DMA2CONbits = dso_local local_unnamed_addr global %struct.TYPE_12__ zeroinitializer, align 4
@DMA3CONbits = dso_local local_unnamed_addr global %struct.TYPE_10__ zeroinitializer, align 4
@DMA3CNT = dso_local local_unnamed_addr global i64 0, align 8
@DMA3STA = dso_local local_unnamed_addr global i64 0, align 8
@DMA2REQbits = dso_local local_unnamed_addr global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @SD_DMA_ReceiveBlock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  store i32 255, ptr @SD_DMA_TXBuffer, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_8__, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !9
  %5 = add nsw i64 %4, -1
  store i64 %5, ptr @DMA2CNT, align 8, !tbaa !12
  %6 = load i32, ptr %0, align 4, !tbaa !13
  store i32 %6, ptr @DMA2STA, align 4, !tbaa !5
  store i32 1, ptr @DMA2CONbits, align 4, !tbaa !15
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_12__, ptr @DMA2CONbits, i64 0, i32 1), align 4, !tbaa !17
  store i32 0, ptr @DMA3CONbits, align 4, !tbaa !18
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @DMA3CONbits, i64 0, i32 1), align 4, !tbaa !20
  store i64 %5, ptr @DMA3CNT, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.TYPE_8__, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !21
  %9 = load i64, ptr %1, align 8, !tbaa !22
  %10 = add nsw i64 %9, %8
  store i64 %10, ptr @DMA3STA, align 8, !tbaa !12
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_12__, ptr @DMA2CONbits, i64 0, i32 2), align 4, !tbaa !23
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @DMA3CONbits, i64 0, i32 2), align 4, !tbaa !24
  store i32 1, ptr @DMA2REQbits, align 4, !tbaa !25
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !11, i64 16}
!10 = !{!"TYPE_8__", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"TYPE_9__", !6, i64 0}
!15 = !{!16, !6, i64 0}
!16 = !{!"TYPE_12__", !6, i64 0, !6, i64 4, !6, i64 8}
!17 = !{!16, !6, i64 4}
!18 = !{!19, !6, i64 0}
!19 = !{!"TYPE_10__", !6, i64 0, !6, i64 4, !6, i64 8}
!20 = !{!19, !6, i64 4}
!21 = !{!10, !11, i64 8}
!22 = !{!10, !11, i64 0}
!23 = !{!16, !6, i64 8}
!24 = !{!19, !6, i64 8}
!25 = !{!26, !6, i64 0}
!26 = !{!"TYPE_11__", !6, i64 0}
