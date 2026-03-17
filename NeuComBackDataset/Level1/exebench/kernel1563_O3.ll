; ModuleID = '../benchmarks/fine_grained/exebench/kernel1563.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1563.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { ptr }

@I = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8
@AL = dso_local local_unnamed_addr global i64 0, align 8
@AH = dso_local local_unnamed_addr global i64 0, align 8
@nec_ICount = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @i_cbw() local_unnamed_addr #0 {
  %1 = load ptr, ptr @I, align 8, !tbaa !5
  %2 = load i64, ptr @AL, align 8, !tbaa !11
  %3 = getelementptr inbounds i32, ptr %1, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !13
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 255
  %8 = load i64, ptr @AH, align 8, !tbaa !11
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  store i32 %7, ptr %9, align 4, !tbaa !13
  %10 = load i32, ptr @nec_ICount, align 4, !tbaa !13
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @nec_ICount, align 4, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0}
!7 = !{!"TYPE_3__", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
