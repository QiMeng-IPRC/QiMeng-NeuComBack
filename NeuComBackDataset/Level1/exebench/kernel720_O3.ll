; ModuleID = '../benchmarks/fine_grained/exebench/kernel720.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel720.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { ptr, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@setup_aio_buffer.input = internal global [1 x i8] zeroinitializer, align 1
@kbcbuf = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8
@SIGEV_SIGNAL = dso_local local_unnamed_addr global i32 0, align 4
@SIGIO = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @setup_aio_buffer() local_unnamed_addr #0 {
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @kbcbuf, i64 0, i32 4), align 8, !tbaa !5
  store ptr @setup_aio_buffer.input, ptr @kbcbuf, align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @kbcbuf, i64 0, i32 1), align 8, !tbaa !14
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @kbcbuf, i64 0, i32 3), align 8, !tbaa !15
  %1 = load i32, ptr @SIGEV_SIGNAL, align 4, !tbaa !16
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @kbcbuf, i64 0, i32 2, i32 1), align 8, !tbaa !17
  %2 = load i32, ptr @SIGIO, align 4, !tbaa !16
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @kbcbuf, i64 0, i32 2), align 4, !tbaa !18
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
!5 = !{!6, !12, i64 32}
!6 = !{!"TYPE_4__", !7, i64 0, !10, i64 8, !11, i64 12, !12, i64 24, !12, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"TYPE_3__", !10, i64 0, !10, i64 4}
!12 = !{!"long", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !10, i64 8}
!15 = !{!6, !12, i64 24}
!16 = !{!10, !10, i64 0}
!17 = !{!6, !10, i64 16}
!18 = !{!6, !10, i64 12}
