; ModuleID = '../benchmarks/fine_grained/exebench/kernel54.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel54.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { ptr }

@afd_inicio = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @alex_estadoInicio(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @afd_inicio, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 2
  store i32 %2, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !14
  %5 = load ptr, ptr %0, align 8, !tbaa !15
  store i8 0, ptr %5, align 1, !tbaa !16
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !6, i64 16}
!10 = !{!"TYPE_5__", !11, i64 0, !13, i64 8, !6, i64 16}
!11 = !{!"TYPE_4__", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !13, i64 8}
!15 = !{!10, !12, i64 0}
!16 = !{!7, !7, i64 0}
