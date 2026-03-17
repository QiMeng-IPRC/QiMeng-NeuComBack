; ModuleID = '../benchmarks/fine_grained/exebench/kernel121.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel121.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RQuatAdd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 2
  %7 = load <2 x i64>, ptr %4, align 8, !tbaa !5
  %8 = load <2 x i64>, ptr %5, align 8, !tbaa !5
  %9 = add nsw <2 x i64> %8, %7
  store <2 x i64> %9, ptr %6, align 8, !tbaa !5
  %10 = load <2 x i64>, ptr %1, align 8, !tbaa !5
  %11 = load <2 x i64>, ptr %2, align 8, !tbaa !5
  %12 = add nsw <2 x i64> %11, %10
  store <2 x i64> %12, ptr %0, align 8, !tbaa !5
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
