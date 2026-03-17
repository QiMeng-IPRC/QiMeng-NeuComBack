; ModuleID = '../benchmarks/fine_grained/exebench/kernel317.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel317.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@g_config = dso_local local_unnamed_addr global %struct.TYPE_28__ zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @xxx2varxxx_video(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_28__, ptr @g_config, i64 0, i32 0, i32 14), align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_27__, ptr %0, i64 0, i32 14
  store i32 %2, ptr %3, align 4, !tbaa !26
  %4 = getelementptr inbounds %struct.TYPE_27__, ptr %0, i64 0, i32 12
  %5 = load <2 x i32>, ptr getelementptr inbounds (%struct.TYPE_28__, ptr @g_config, i64 0, i32 0, i32 12), align 16, !tbaa !28
  store <2 x i32> %5, ptr %4, align 4, !tbaa !28
  %6 = getelementptr inbounds %struct.TYPE_27__, ptr %0, i64 0, i32 8
  %7 = load <4 x i32>, ptr getelementptr inbounds (%struct.TYPE_28__, ptr @g_config, i64 0, i32 0, i32 8), align 16, !tbaa !28
  store <4 x i32> %7, ptr %6, align 4, !tbaa !28
  %8 = getelementptr inbounds %struct.TYPE_27__, ptr %0, i64 0, i32 4
  %9 = load <4 x i32>, ptr getelementptr inbounds (%struct.TYPE_28__, ptr @g_config, i64 0, i32 0, i32 4), align 16, !tbaa !28
  store <4 x i32> %9, ptr %8, align 4, !tbaa !28
  %10 = load <4 x i32>, ptr @g_config, align 16, !tbaa !28
  store <4 x i32> %10, ptr %0, align 4, !tbaa !28
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !9, i64 56}
!6 = !{!"TYPE_28__", !7, i64 0}
!7 = !{!"TYPE_26__", !8, i64 0, !12, i64 4, !13, i64 8, !14, i64 12, !15, i64 16, !16, i64 20, !17, i64 24, !18, i64 28, !19, i64 32, !20, i64 36, !21, i64 40, !22, i64 44, !23, i64 48, !24, i64 52, !25, i64 56}
!8 = !{!"TYPE_25__", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"TYPE_24__", !9, i64 0}
!13 = !{!"TYPE_23__", !9, i64 0}
!14 = !{!"TYPE_22__", !9, i64 0}
!15 = !{!"TYPE_21__", !9, i64 0}
!16 = !{!"TYPE_20__", !9, i64 0}
!17 = !{!"TYPE_37__", !9, i64 0}
!18 = !{!"TYPE_36__", !9, i64 0}
!19 = !{!"TYPE_35__", !9, i64 0}
!20 = !{!"TYPE_34__", !9, i64 0}
!21 = !{!"TYPE_33__", !9, i64 0}
!22 = !{!"TYPE_32__", !9, i64 0}
!23 = !{!"TYPE_31__", !9, i64 0}
!24 = !{!"TYPE_30__", !9, i64 0}
!25 = !{!"TYPE_29__", !9, i64 0}
!26 = !{!27, !9, i64 56}
!27 = !{!"TYPE_27__", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56}
!28 = !{!9, !9, i64 0}
