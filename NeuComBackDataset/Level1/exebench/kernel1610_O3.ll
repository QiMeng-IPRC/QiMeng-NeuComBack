; ModuleID = '../benchmarks/fine_grained/exebench/kernel1610.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1610.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@THETA = dso_local local_unnamed_addr global i32 0, align 4
@generic_RC = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @updateBparams(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 4, !tbaa !5
  %3 = load i32, ptr @THETA, align 4, !tbaa !10
  %4 = sdiv i32 %1, %3
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %7 = load <2 x i32>, ptr %6, align 4, !tbaa !10
  %8 = add nsw <2 x i32> %7, <i32 1, i32 -1>
  store <2 x i32> %8, ptr %6, align 4, !tbaa !10
  %9 = load ptr, ptr @generic_RC, align 8, !tbaa !12
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 4, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"TYPE_5__", !7, i64 0}
