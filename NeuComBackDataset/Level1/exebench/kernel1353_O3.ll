; ModuleID = '../benchmarks/fine_grained/exebench/kernel1353.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1353.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64, i64 }

@yabsys = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @YabauseChangeTiming(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i64 0, i32 5), i8 0, i64 16, i1 false)
  store i32 %0, ptr @yabsys, align 8, !tbaa !5
  switch i32 %0, label %13 [
    i32 0, label %2
    i32 1, label %6
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i64 0, i32 4), align 8, !tbaa !11
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 170, i32 172
  br label %10

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i64 0, i32 4), align 8, !tbaa !11
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 181, i32 183
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ %5, %2 ]
  %12 = phi i32 [ 286, %6 ], [ 268, %2 ]
  store i32 %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i64 0, i32 1), align 4, !tbaa !12
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i64 0, i32 2), align 8, !tbaa !13
  br label %13

13:                                               ; preds = %10, %1
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i64 0, i32 3), align 8, !tbaa !14
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 24}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !10, i64 16}
