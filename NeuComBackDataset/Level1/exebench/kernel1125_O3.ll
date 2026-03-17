; ModuleID = '../benchmarks/fine_grained/exebench/kernel1125.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1125.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@level = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @chick_duck_hold(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @level, align 8, !tbaa !5
  %3 = load i64, ptr %0, align 8, !tbaa !10
  %4 = icmp slt i64 %2, %3
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = and i32 %6, -129
  %8 = select i1 %4, i32 128, i32 0
  %9 = or i32 %7, %8
  store i32 %9, ptr %5, align 8, !tbaa !14
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_7__", !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"TYPE_6__", !12, i64 0}
!12 = !{!"TYPE_5__", !7, i64 0, !13, i64 8}
!13 = !{!"int", !8, i64 0}
!14 = !{!11, !13, i64 8}
