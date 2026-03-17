; ModuleID = '../benchmarks/fine_grained/exebench/kernel658.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel658.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, ptr, i32, i32 }

@Command = dso_local local_unnamed_addr global i32 0, align 4
@GAP_TerminateLinkRequest = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @get_GAP_TerminateLinkRequest(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @Command, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store i32 %3, ptr %4, align 4, !tbaa !9
  %5 = load i32, ptr @GAP_TerminateLinkRequest, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 %5, ptr %6, align 8, !tbaa !12
  store i32 2, ptr %0, align 8, !tbaa !13
  %7 = trunc i64 %1 to i8
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  store i8 %7, ptr %9, align 1, !tbaa !15
  %10 = lshr i64 %1, 8
  %11 = trunc i64 %10 to i8
  %12 = load ptr, ptr %8, align 8, !tbaa !14
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %11, ptr %13, align 1, !tbaa !15
  ret i32 0
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 20}
!10 = !{!"TYPE_3__", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 20}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !6, i64 16}
!13 = !{!10, !6, i64 0}
!14 = !{!10, !11, i64 8}
!15 = !{!7, !7, i64 0}
