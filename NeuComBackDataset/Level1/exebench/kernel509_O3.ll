; ModuleID = '../benchmarks/fine_grained/exebench/kernel509.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@LINES = dso_local local_unnamed_addr global i32 0, align 4
@COLS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @init_win_params(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 3, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  store i32 10, ptr %2, align 4, !tbaa !11
  %3 = load i32, ptr @LINES, align 4, !tbaa !12
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 2
  %5 = load i32, ptr @COLS, align 4, !tbaa !12
  %6 = insertelement <2 x i32> poison, i32 %3, i64 0
  %7 = insertelement <2 x i32> %6, i32 %5, i64 1
  %8 = add nsw <2 x i32> %7, <i32 -3, i32 -10>
  %9 = sdiv <2 x i32> %8, <i32 2, i32 2>
  store <2 x i32> %9, ptr %4, align 4, !tbaa !12
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4
  store <4 x i8> <i8 124, i8 124, i8 45, i8 45>, ptr %10, align 4, !tbaa !13
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 4
  store i32 724249387, ptr %11, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_4__", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!11 = !{!6, !7, i64 4}
!12 = !{!7, !7, i64 0}
!13 = !{!8, !8, i64 0}
