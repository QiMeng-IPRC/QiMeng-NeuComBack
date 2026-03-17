; ModuleID = '../benchmarks/fine_grained/exebench/kernel1021.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1021.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@pref_screenwidth = dso_local local_unnamed_addr global i32 0, align 4
@COLS = dso_local local_unnamed_addr global i32 0, align 4
@pref_screenheight = dso_local local_unnamed_addr global i32 0, align 4
@LINES = dso_local local_unnamed_addr global i32 0, align 4
@content_box = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@pref_messageline = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @compute_content_box() local_unnamed_addr #0 {
  %1 = load i32, ptr @pref_screenwidth, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @COLS, align 4
  %4 = select i1 %2, i32 %3, i32 %1
  %5 = load i32, ptr @pref_screenheight, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @LINES, align 4
  %8 = select i1 %6, i32 %7, i32 %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i64 0, i32 2), i8 0, i64 16, i1 false)
  store i32 %4, ptr @content_box, align 8, !tbaa !9
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i64 0, i32 1), align 4, !tbaa !12
  %9 = load i64, ptr @pref_messageline, align 8, !tbaa !13
  %10 = icmp ne i64 %9, 0
  %11 = icmp sgt i32 %8, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = add nsw i32 %8, -1
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i64 0, i32 1), align 4, !tbaa !12
  br label %15

15:                                               ; preds = %13, %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !6, i64 4}
!13 = !{!11, !11, i64 0}
