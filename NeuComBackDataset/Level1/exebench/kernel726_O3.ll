; ModuleID = '../benchmarks/fine_grained/exebench/kernel726.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel726.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @get_fcolor_24(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  store float 1.000000e+00, ptr %0, align 4, !tbaa !5
  %3 = load float, ptr %1, align 4, !tbaa !10
  %4 = fdiv float %3, 2.550000e+02
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store float %4, ptr %5, align 4, !tbaa !11
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !10
  %8 = fdiv float %7, 2.550000e+02
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !12
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !10
  %12 = fdiv float %11, 2.550000e+02
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store float %12, ptr %13, align 4, !tbaa !13
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !7, i64 12}
