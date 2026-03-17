; ModuleID = '../benchmarks/fine_grained/exebench/kernel1045.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i64, ptr, i64 }

@GSU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fx_beq() local_unnamed_addr #0 {
  %1 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 8, !tbaa !5
  %2 = load ptr, ptr @GSU, align 8, !tbaa !11
  %3 = getelementptr inbounds i64, ptr %2, i64 15
  %4 = load i64, ptr %3, align 8, !tbaa !12
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !12
  %6 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !13
  %7 = getelementptr inbounds i64, ptr %6, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !12
  store i64 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 8, !tbaa !5
  %9 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !14
  %10 = icmp eq i64 %9, 0
  %11 = add nsw i64 %4, 2
  %12 = add nsw i64 %5, %1
  %13 = select i1 %10, i64 %12, i64 %11
  store i64 %13, ptr %3, align 8, !tbaa !12
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
!5 = !{!6, !10, i64 24}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !10, i64 8}
