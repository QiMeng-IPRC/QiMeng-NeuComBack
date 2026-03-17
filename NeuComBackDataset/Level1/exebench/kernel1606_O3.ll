; ModuleID = '../benchmarks/fine_grained/exebench/kernel1606.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1606.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, ptr }

@basicvars = dso_local local_unnamed_addr global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local i32 @pop_int() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @basicvars, i64 0, i32 0, i32 1), align 8, !tbaa !5
  %2 = load i32, ptr @basicvars, align 8, !tbaa !12
  %3 = add i32 %2, 8
  store i32 %3, ptr @basicvars, align 8, !tbaa !12
  %4 = load i32, ptr %1, align 4, !tbaa !13
  ret i32 %4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !11, i64 8}
!6 = !{!"TYPE_6__", !7, i64 0}
!7 = !{!"TYPE_4__", !8, i64 0, !11, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!6, !8, i64 0}
!13 = !{!14, !8, i64 0}
!14 = !{!"TYPE_5__", !8, i64 0}
