; ModuleID = '../benchmarks/fine_grained/exebench/kernel316.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel316.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pmd_part_loop_check(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = and i32 %6, %4
  store i32 %7, ptr %5, align 4, !tbaa !11
  %8 = load <2 x i32>, ptr %1, align 4, !tbaa !14
  %9 = load <2 x i32>, ptr %0, align 4, !tbaa !14
  %10 = and <2 x i32> %9, %8
  store <2 x i32> %10, ptr %0, align 4, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 8}
!6 = !{!"pmd_part", !7, i64 0}
!7 = !{!"TYPE_4__", !8, i64 0, !8, i64 4, !8, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 8}
!12 = !{!"driver_pmd", !13, i64 0}
!13 = !{!"TYPE_3__", !8, i64 0, !8, i64 4, !8, i64 8}
!14 = !{!8, !8, i64 0}
