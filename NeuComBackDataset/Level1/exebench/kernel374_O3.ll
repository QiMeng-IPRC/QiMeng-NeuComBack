; ModuleID = '../benchmarks/fine_grained/exebench/kernel374.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel374.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8 }
%struct.TYPE_6__ = type { i8 }

@CCLAP_ERR_NULLVALUE = dso_local local_unnamed_addr global i32 0, align 4
@cclap_errno = dso_local local_unnamed_addr global i32 0, align 4
@CCLAP_SUCCESS = dso_local local_unnamed_addr global i32 0, align 4
@SOPTION = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local signext i8 @cclap_option_sname(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8, !tbaa !5
  %5 = load i64, ptr @SOPTION, align 8, !tbaa !13
  %6 = icmp eq i64 %4, %5
  %7 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = load i8, ptr %9, align 1, !tbaa !14
  br label %11

11:                                               ; preds = %1, %3
  %12 = phi ptr [ @CCLAP_SUCCESS, %3 ], [ @CCLAP_ERR_NULLVALUE, %1 ]
  %13 = phi i8 [ %10, %3 ], [ 0, %1 ]
  %14 = load i32, ptr %12, align 4, !tbaa !15
  store i32 %14, ptr @cclap_errno, align 4
  ret i8 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_9__", !7, i64 0, !10, i64 8, !12, i64 9}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_8__", !11, i64 0}
!11 = !{!"TYPE_7__", !8, i64 0}
!12 = !{!"TYPE_6__", !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !8, i64 0}
