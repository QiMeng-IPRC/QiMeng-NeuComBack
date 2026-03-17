; ModuleID = '../benchmarks/fine_grained/exebench/kernel128.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@thread_table = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_to_ready_queue(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @thread_table, align 8, !tbaa !5
  %3 = load i64, ptr %2, align 8, !tbaa !9
  store i64 %0, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.TYPE_2__, ptr %2, i64 %0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %2, i64 %0
  store i64 %3, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.TYPE_2__, ptr %2, i64 %3, i32 1
  store i64 %0, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.TYPE_2__, ptr %2, i64 %0, i32 2
  store i32 1, ptr %7, align 8, !tbaa !14
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 8, !12, i64 16}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !12, i64 16}
