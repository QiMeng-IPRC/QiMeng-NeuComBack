; ModuleID = '../benchmarks/fine_grained/exebench/kernel1327.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1327.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@t_null = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_match(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @t_null, align 4, !tbaa !5
  %3 = shl i32 %2, 8
  %4 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3
  store i32 %3, ptr %4, align 4, !tbaa !9
  %5 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 2
  store i32 %3, ptr %5, align 4, !tbaa !15
  %6 = load i32, ptr %0, align 4, !tbaa !16
  %7 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !17
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 12}
!10 = !{!"TYPE_11__", !6, i64 0, !6, i64 4, !11, i64 8, !13, i64 12}
!11 = !{!"TYPE_10__", !12, i64 0}
!12 = !{!"TYPE_9__", !6, i64 0}
!13 = !{!"TYPE_8__", !14, i64 0}
!14 = !{!"TYPE_7__", !6, i64 0}
!15 = !{!10, !6, i64 8}
!16 = !{!10, !6, i64 0}
!17 = !{!10, !6, i64 4}
