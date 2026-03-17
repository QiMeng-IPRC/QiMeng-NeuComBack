; ModuleID = '../benchmarks/fine_grained/exebench/kernel1289.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1289.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ThreeAxis = type { i32, i32, i32 }

@HardIron = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @adj_mag(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @HardIron, i64 0, i32 2), align 16, !tbaa !5
  %3 = getelementptr inbounds %struct.ThreeAxis, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !10
  %5 = trunc i64 %2 to i32
  %6 = sub i32 %4, %5
  store i32 %6, ptr %3, align 4, !tbaa !10
  %7 = load <2 x i64>, ptr @HardIron, align 16, !tbaa !13
  %8 = load <2 x i32>, ptr %0, align 4, !tbaa !14
  %9 = trunc <2 x i64> %7 to <2 x i32>
  %10 = sub <2 x i32> %8, %9
  store <2 x i32> %10, ptr %0, align 4, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 16}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"ThreeAxis", !12, i64 0, !12, i64 4, !12, i64 8}
!12 = !{!"int", !8, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!12, !12, i64 0}
