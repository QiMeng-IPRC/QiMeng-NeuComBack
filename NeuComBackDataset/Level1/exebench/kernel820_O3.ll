; ModuleID = '../benchmarks/fine_grained/exebench/kernel820.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MLAN_STATUS_SUCCESS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @wlan_uap_cmd_txdatapause(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TYPE_8__, ptr %1, i64 0, i32 2
  store i32 259, ptr %1, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_8__, ptr %1, i64 0, i32 1
  store i32 28, ptr %6, align 4, !tbaa !11
  store i32 %2, ptr %5, align 8, !tbaa !12
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TYPE_8__, ptr %1, i64 1, i32 1
  %10 = load <2 x i64>, ptr %3, align 8, !tbaa !15
  %11 = inttoptr <2 x i64> %10 to <2 x ptr>
  store <2 x ptr> %11, ptr %9, align 8, !tbaa !17
  br label %12

12:                                               ; preds = %4, %8
  %13 = load i32, ptr @MLAN_STATUS_SUCCESS, align 4, !tbaa !18
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
!6 = !{!"TYPE_8__", !7, i64 0, !7, i64 4, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_6__", !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!13, !7, i64 0}
!13 = !{!"TYPE_9__", !7, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!7, !7, i64 0}
