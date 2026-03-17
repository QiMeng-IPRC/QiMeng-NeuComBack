; ModuleID = '../benchmarks/fine_grained/exebench/kernel921.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel921.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@self = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@servercommandframe = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Player_PostUpdate() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 7), align 8, !tbaa !5
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 8), align 4, !tbaa !11
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 5), align 8, !tbaa !12
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 6), align 4, !tbaa !13
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 3), align 8, !tbaa !14
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 4), align 4, !tbaa !15
  %4 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 1), align 8, !tbaa !16
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @self, i64 0, i32 2), align 4, !tbaa !17
  %5 = load i64, ptr @servercommandframe, align 8, !tbaa !18
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr @self, align 8, !tbaa !19
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
!5 = !{!6, !10, i64 32}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 36}
!12 = !{!6, !10, i64 24}
!13 = !{!6, !10, i64 28}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !10, i64 20}
!16 = !{!6, !10, i64 8}
!17 = !{!6, !10, i64 12}
!18 = !{!7, !7, i64 0}
!19 = !{!6, !7, i64 0}
