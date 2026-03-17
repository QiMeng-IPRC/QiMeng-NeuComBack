; ModuleID = '../benchmarks/fine_grained/exebench/kernel1368.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1368.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @d4_read_array(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load double, ptr %1, align 8, !tbaa !5
  store double %3, ptr %0, align 8, !tbaa !9
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store double %5, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store double %8, ptr %9, align 8, !tbaa !12
  %10 = getelementptr inbounds double, ptr %1, i64 3
  %11 = load double, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  store double %11, ptr %12, align 8, !tbaa !13
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
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!11 = !{!10, !6, i64 8}
!12 = !{!10, !6, i64 16}
!13 = !{!10, !6, i64 24}
