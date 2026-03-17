; ModuleID = '../benchmarks/fine_grained/exebench/kernel910.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel910.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@ARCH_LOG2_SIZEOF_LONG = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @gx_get_largest_clipping_box(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @ARCH_LOG2_SIZEOF_LONG, align 4, !tbaa !5
  %4 = shl i32 8, %3
  %5 = add nsw i32 %4, -1
  %6 = zext i32 %5 to i64
  %7 = shl nsw i64 -1, %6
  %8 = getelementptr inbounds %struct.TYPE_7__, ptr %1, i64 0, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.TYPE_7__, ptr %1, i64 0, i32 1, i32 1
  store i64 %7, ptr %9, align 8, !tbaa !14
  %10 = xor i64 %7, -1
  store i64 %10, ptr %1, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !16
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 16}
!10 = !{!"TYPE_7__", !11, i64 0, !13, i64 16}
!11 = !{!"TYPE_5__", !12, i64 0, !12, i64 8}
!12 = !{!"long", !7, i64 0}
!13 = !{!"TYPE_6__", !12, i64 0, !12, i64 8}
!14 = !{!10, !12, i64 24}
!15 = !{!10, !12, i64 0}
!16 = !{!10, !12, i64 8}
