; ModuleID = '../benchmarks/fine_grained/exebench/kernel382.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel382.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { ptr, ptr, ptr, ptr }

@gsGlobalInfo = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @InitGpMode() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @gsGlobalInfo, i64 0, i32 0, i32 3), align 8, !tbaa !5
  %2 = load ptr, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @gsGlobalInfo, i64 0, i32 0, i32 2), align 8, !tbaa !11
  %3 = load ptr, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @gsGlobalInfo, i64 0, i32 0, i32 1), align 8, !tbaa !12
  %4 = load ptr, ptr @gsGlobalInfo, align 8, !tbaa !13
  store i32 0, ptr %1, align 4, !tbaa !14
  store i32 0, ptr %2, align 4, !tbaa !14
  store i32 0, ptr %3, align 4, !tbaa !14
  store i32 0, ptr %4, align 4, !tbaa !14
  %5 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 0, ptr %5, align 4, !tbaa !14
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 0, ptr %6, align 4, !tbaa !14
  %7 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 0, ptr %7, align 4, !tbaa !14
  %8 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 0, ptr %8, align 4, !tbaa !14
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
!5 = !{!6, !8, i64 24}
!6 = !{!"TYPE_4__", !7, i64 0}
!7 = !{!"TYPE_3__", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 16}
!12 = !{!6, !8, i64 8}
!13 = !{!6, !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
