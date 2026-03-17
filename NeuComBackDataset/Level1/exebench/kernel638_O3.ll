; ModuleID = '../benchmarks/fine_grained/exebench/kernel638.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel638.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@source_format = dso_local local_unnamed_addr global i32 0, align 4
@video_width = dso_local local_unnamed_addr global i32 0, align 4
@video_height = dso_local local_unnamed_addr global i32 0, align 4
@scaler_src = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8
@scaler_dst = dso_local local_unnamed_addr global %struct.TYPE_5__ zeroinitializer, align 8
@overlay = dso_local local_unnamed_addr global %struct.TYPE_6__ zeroinitializer, align 4
@sequence_type = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @tcc_set_video_output(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  store i32 %7, ptr @source_format, align 4, !tbaa !5
  store i32 %0, ptr @video_width, align 4, !tbaa !5
  store i32 %1, ptr @video_height, align 4, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i64 0, i32 6), i8 0, i64 16, i1 false)
  store i32 %0, ptr @scaler_src, align 8, !tbaa !9
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i64 0, i32 1), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i64 0, i32 4), i8 0, i64 16, i1 false)
  store i32 %0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i64 0, i32 2), align 8, !tbaa !13
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i64 0, i32 3), align 4, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_5__, ptr @scaler_dst, i64 0, i32 2), i8 0, i64 16, i1 false)
  store i32 %5, ptr @scaler_dst, align 8, !tbaa !15
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @scaler_dst, i64 0, i32 1), align 4, !tbaa !17
  store i32 %3, ptr @overlay, align 4, !tbaa !18
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @overlay, i64 0, i32 1), align 4, !tbaa !20
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @overlay, i64 0, i32 2), align 4, !tbaa !21
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @overlay, i64 0, i32 3), align 4, !tbaa !22
  store i64 0, ptr @sequence_type, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_4__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !6, i64 4}
!13 = !{!10, !6, i64 8}
!14 = !{!10, !6, i64 12}
!15 = !{!16, !6, i64 0}
!16 = !{!"TYPE_5__", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16}
!17 = !{!16, !6, i64 4}
!18 = !{!19, !6, i64 0}
!19 = !{!"TYPE_6__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!20 = !{!19, !6, i64 4}
!21 = !{!19, !6, i64 8}
!22 = !{!19, !6, i64 12}
!23 = !{!11, !11, i64 0}
