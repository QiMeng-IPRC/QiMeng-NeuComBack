; ModuleID = '../benchmarks/fine_grained/exebench/kernel654.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel654.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i64, i32 }

@dummyreadwrite = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @buffer_fromsa(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 5
  store i32 %4, ptr %5, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 4
  store i64 0, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  %8 = load <2 x i32>, ptr %1, align 4, !tbaa !14
  store <2 x i32> %8, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  store i64 0, ptr %9, align 8, !tbaa !15
  %10 = load i32, ptr @dummyreadwrite, align 4, !tbaa !14
  store i32 %10, ptr %0, align 8, !tbaa !16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 8}
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 32}
!11 = !{!"TYPE_6__", !7, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !12, i64 24, !7, i64 32}
!12 = !{!"long", !8, i64 0}
!13 = !{!11, !12, i64 24}
!14 = !{!7, !7, i64 0}
!15 = !{!11, !12, i64 8}
!16 = !{!11, !7, i64 0}
