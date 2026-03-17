; ModuleID = '../benchmarks/fine_grained/exebench/kernel157.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @vmathP3SubV3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TYPE_7__, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %2, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %8 = sub nsw i64 %5, %7
  %9 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 2
  store i64 %8, ptr %9, align 8, !tbaa !5
  %10 = load <2 x i64>, ptr %1, align 8, !tbaa !12
  %11 = load <2 x i64>, ptr %2, align 8, !tbaa !12
  %12 = sub nsw <2 x i64> %10, %11
  store <2 x i64> %12, ptr %0, align 8, !tbaa !12
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
!5 = !{!6, !7, i64 16}
!6 = !{!"TYPE_7__", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 16}
!11 = !{!"TYPE_6__", !7, i64 0, !7, i64 8, !7, i64 16}
!12 = !{!7, !7, i64 0}
