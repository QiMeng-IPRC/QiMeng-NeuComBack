; ModuleID = '../benchmarks/fine_grained/exebench/kernel36.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@GATT_HANDLE_VALUE_CONF = dso_local local_unnamed_addr global i64 0, align 8
@GATT_CMD_WRITE = dso_local local_unnamed_addr global i64 0, align 8
@GATT_SIGN_CMD_WRITE = dso_local local_unnamed_addr global i64 0, align 8
@GATT_REQ_MTU = dso_local local_unnamed_addr global i64 0, align 8
@GATT_NOT_FOUND = dso_local local_unnamed_addr global i32 0, align 4
@GATT_TRANS_ID_MAX = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @gatt_sr_enqueue_cmd(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i64 %5, 0
  %7 = load i64, ptr @GATT_HANDLE_VALUE_CONF, align 8
  %8 = icmp eq i64 %7, %1
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i64, ptr @GATT_CMD_WRITE, align 8, !tbaa !11
  %12 = icmp eq i64 %11, %1
  %13 = load i64, ptr @GATT_SIGN_CMD_WRITE, align 8
  %14 = icmp eq i64 %13, %1
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load i64, ptr @GATT_REQ_MTU, align 8
  %17 = icmp eq i64 %16, %1
  %18 = select i1 %15, i1 true, i1 %17
  %19 = select i1 %18, i1 true, i1 %8
  %20 = load i64, ptr %0, align 8, !tbaa !12
  %21 = add nsw i64 %20, 1
  store i64 %21, ptr %0, align 8, !tbaa !12
  br i1 %19, label %29, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1, i32 1
  store i64 %21, ptr %23, align 8, !tbaa !14
  store i64 %1, ptr %4, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1, i32 3
  store i32 %2, ptr %24, align 4, !tbaa !15
  %25 = load i32, ptr @GATT_NOT_FOUND, align 4, !tbaa !16
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !17
  %27 = load i64, ptr @GATT_TRANS_ID_MAX, align 8, !tbaa !11
  %28 = srem i64 %21, %27
  store i64 %28, ptr %0, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %10, %3, %22
  %30 = phi i64 [ %21, %22 ], [ 0, %3 ], [ %21, %10 ]
  ret i64 %30
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
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"TYPE_4__", !7, i64 0, !6, i64 8}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !10, i64 20}
!16 = !{!10, !10, i64 0}
!17 = !{!6, !10, i64 16}
