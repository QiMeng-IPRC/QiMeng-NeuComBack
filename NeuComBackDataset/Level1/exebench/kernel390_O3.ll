; ModuleID = '../benchmarks/fine_grained/exebench/kernel390.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@gam = dso_local local_unnamed_addr global i32 0, align 4
@csa = dso_local local_unnamed_addr global i32 0, align 4
@csw = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @setICparams(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_2__, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !5
  store i32 %3, ptr @gam, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.TYPE_2__, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !12
  store i32 %5, ptr @csa, align 4, !tbaa !11
  %6 = load i32, ptr %0, align 4, !tbaa !13
  store i32 %6, ptr @csw, align 4, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 8}
!6 = !{!"domain", !7, i64 0}
!7 = !{!"TYPE_2__", !8, i64 0, !8, i64 4, !8, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!8, !8, i64 0}
!12 = !{!6, !8, i64 4}
!13 = !{!6, !8, i64 0}
