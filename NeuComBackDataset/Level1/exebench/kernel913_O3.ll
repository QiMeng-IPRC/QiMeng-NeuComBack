; ModuleID = '../benchmarks/fine_grained/exebench/kernel913.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel913.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_6__ = type { i8 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i16 @newport_vc2_get(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 1, i32 1
  store i8 %1, ptr %4, align 2, !tbaa !5
  store i32 8654874, ptr %0, align 4, !tbaa !15
  %5 = load i16, ptr %3, align 4, !tbaa !16
  ret i16 %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !9, i64 6}
!6 = !{!"newport_regs", !7, i64 0}
!7 = !{!"TYPE_7__", !8, i64 0, !11, i64 4}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"TYPE_8__", !12, i64 0, !14, i64 2}
!12 = !{!"TYPE_5__", !13, i64 0}
!13 = !{!"short", !9, i64 0}
!14 = !{!"TYPE_6__", !9, i64 0}
!15 = !{!6, !8, i64 0}
!16 = !{!6, !13, i64 4}
