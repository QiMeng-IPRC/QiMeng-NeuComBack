; ModuleID = '../benchmarks/fine_grained/exebench/kernel543.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@MLAN_STATUS_SUCCESS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @wlan_cmd_802_11_rf_antenna(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 2
  store i32 32, ptr %1, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 1
  store i32 12, ptr %6, align 4, !tbaa !12
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  store i32 3, ptr %5, align 4, !tbaa !13
  %9 = load i32, ptr %3, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 2, i32 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !15
  br label %12

11:                                               ; preds = %4
  store i32 12, ptr %5, align 4, !tbaa !13
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, ptr @MLAN_STATUS_SUCCESS, align 4, !tbaa !14
  ret i32 %13
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
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_5__", !11, i64 0}
!11 = !{!"TYPE_7__", !7, i64 0, !7, i64 4}
!12 = !{!6, !7, i64 4}
!13 = !{!11, !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!11, !7, i64 4}
