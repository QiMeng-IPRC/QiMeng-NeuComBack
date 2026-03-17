; ModuleID = '../benchmarks/fine_grained/exebench/kernel955.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel955.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@g_window = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 4
@g_screeninfo_var = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_window_dimension() local_unnamed_addr #0 {
  store i32 640, ptr @g_window, align 4, !tbaa !5
  store i32 480, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i64 0, i32 1), align 4, !tbaa !10
  %1 = load <2 x i32>, ptr @g_screeninfo_var, align 8, !tbaa !11
  %2 = sdiv <2 x i32> %1, <i32 2, i32 2>
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = add nsw <4 x i32> %3, <i32 -320, i32 -240, i32 320, i32 240>
  store <4 x i32> %4, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i64 0, i32 2), align 4, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!7, !7, i64 0}
