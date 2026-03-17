; ModuleID = '../benchmarks/fine_grained/exebench/kernel383.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel383.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@SA1Registers = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 4
@SA1 = dso_local local_unnamed_addr global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Op4AM1() local_unnamed_addr #0 {
  %1 = load i32, ptr @SA1Registers, align 4, !tbaa !5
  %2 = and i32 %1, 1
  store i32 %2, ptr @SA1, align 4, !tbaa !12
  %3 = ashr i32 %1, 1
  store i32 %3, ptr @SA1Registers, align 4, !tbaa !5
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @SA1, i64 0, i32 1), align 4, !tbaa !14
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @SA1, i64 0, i32 2), align 4, !tbaa !15
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !9, i64 0}
!6 = !{!"TYPE_7__", !7, i64 0}
!7 = !{!"TYPE_6__", !8, i64 0}
!8 = !{!"TYPE_5__", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"TYPE_8__", !9, i64 0, !9, i64 4, !9, i64 8}
!14 = !{!13, !9, i64 4}
!15 = !{!13, !9, i64 8}
