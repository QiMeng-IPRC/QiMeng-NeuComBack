; ModuleID = '../benchmarks/fine_grained/exebench/kernel1483.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1483.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_channel = type { i32, %struct.int_ch_state }
%struct.int_ch_state = type { i64, i64, i64 }

@DIM_ERR_UNDERFLOW = dso_local local_unnamed_addr global i32 0, align 4
@DIM_NO_ERROR = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @channel_service(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dim_channel, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.dim_channel, ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !10
  %6 = icmp eq i64 %3, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = add nsw i64 %3, 1
  store i64 %8, ptr %2, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.dim_channel, ptr %0, i64 0, i32 1, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !11
  %14 = load i32, ptr %0, align 8, !tbaa !12
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %0, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %1, %12, %7
  %17 = phi ptr [ @DIM_ERR_UNDERFLOW, %7 ], [ @DIM_NO_ERROR, %12 ], [ @DIM_NO_ERROR, %1 ]
  %18 = load i32, ptr %17, align 4, !tbaa !15
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
!6 = !{!"int_ch_state", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!13, !14, i64 0}
!13 = !{!"dim_channel", !14, i64 0, !6, i64 8}
!14 = !{!"int", !8, i64 0}
!15 = !{!14, !14, i64 0}
