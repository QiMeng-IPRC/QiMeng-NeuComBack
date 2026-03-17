; ModuleID = '../benchmarks/fine_grained/exebench/kernel1203.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1203.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@history_def_next = dso_local local_unnamed_addr global i64 0, align 8
@he_errlist = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @history_getunique(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = load i64, ptr @history_def_next, align 8, !tbaa !10
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store i32 14, ptr %1, align 4, !tbaa !11
  %7 = load ptr, ptr @he_errlist, align 8, !tbaa !14
  %8 = getelementptr inbounds i32, ptr %7, i64 14
  %9 = load i32, ptr %8, align 4, !tbaa !16
  %10 = getelementptr inbounds %struct.TYPE_8__, ptr %1, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !17
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !18
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = and i32 %15, 1
  store i32 %16, ptr %1, align 4, !tbaa !11
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ -1, %6 ], [ 0, %11 ]
  ret i32 %18
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_7__", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"TYPE_8__", !13, i64 0, !13, i64 4}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!12, !13, i64 4}
!18 = !{!6, !7, i64 8}
!19 = !{!20, !13, i64 0}
!20 = !{!"TYPE_6__", !13, i64 0}
