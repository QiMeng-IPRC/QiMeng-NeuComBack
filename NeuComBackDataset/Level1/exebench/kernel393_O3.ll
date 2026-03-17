; ModuleID = '../benchmarks/fine_grained/exebench/kernel393.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel393.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, ptr }
%struct.TYPE_4__ = type { i32, i32 }

@basicvars = dso_local local_unnamed_addr global %struct.TYPE_6__ zeroinitializer, align 8
@STACK_INT = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @do_intone() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @basicvars, i64 0, i32 1), align 8, !tbaa !5
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @basicvars, i64 0, i32 1), align 8, !tbaa !5
  %3 = load i32, ptr @basicvars, align 8, !tbaa !12
  %4 = add i32 %3, -8
  store i32 %4, ptr @basicvars, align 8, !tbaa !12
  %5 = load i32, ptr @STACK_INT, align 4, !tbaa !13
  %6 = load ptr, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @basicvars, i64 0, i32 0, i32 1), align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i64 0, i32 1
  store i32 %5, ptr %7, align 4, !tbaa !15
  store i32 1, ptr %6, align 4, !tbaa !17
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 16}
!6 = !{!"TYPE_6__", !7, i64 0, !8, i64 16}
!7 = !{!"TYPE_5__", !8, i64 0, !11, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!6, !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!6, !11, i64 8}
!15 = !{!16, !8, i64 4}
!16 = !{!"TYPE_4__", !8, i64 0, !8, i64 4}
!17 = !{!16, !8, i64 0}
