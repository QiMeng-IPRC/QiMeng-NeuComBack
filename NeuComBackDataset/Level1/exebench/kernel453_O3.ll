; ModuleID = '../benchmarks/fine_grained/exebench/kernel453.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel453.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, ptr }

@cpu_state = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local double @x87_pop() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cpu_state, align 8, !tbaa !5
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i64 0, i32 1), align 8, !tbaa !11
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds double, ptr %1, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !12
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i64 0, i32 2), align 8, !tbaa !14
  %8 = getelementptr inbounds i64, ptr %7, i64 %4
  store i64 0, ptr %8, align 8, !tbaa !15
  %9 = add nsw i32 %2, 1
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i64 0, i32 1), align 8, !tbaa !11
  ret double %6
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
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!6, !7, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
