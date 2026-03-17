; ModuleID = '../benchmarks/fine_grained/exebench/kernel769.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel769.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @getcameraposition(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !5
  store i32 %7, ptr %1, align 4, !tbaa !10
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !11
  store i32 %9, ptr %2, align 4, !tbaa !10
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !12
  store i32 %11, ptr %3, align 4, !tbaa !10
  %12 = load i32, ptr %0, align 4, !tbaa !13
  store i32 %12, ptr %4, align 4, !tbaa !10
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
!5 = !{!6, !7, i64 12}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 0}
