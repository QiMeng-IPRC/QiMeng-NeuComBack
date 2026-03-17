; ModuleID = '../benchmarks/fine_grained/exebench/kernel502.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel502.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TFrame_LDAQCMD_ENC_Start = type { i32, i32, i32, i32 }

@FRAMECMD_ENC_START = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @TFrame_LDAQCMD_ENC_Start_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i32 105, ptr %0, align 4, !tbaa !5
  %2 = load i32, ptr @FRAMECMD_ENC_START, align 4, !tbaa !10
  %3 = getelementptr inbounds %struct.TFrame_LDAQCMD_ENC_Start, ptr %0, i64 0, i32 3
  store i32 %2, ptr %3, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.TFrame_LDAQCMD_ENC_Start, ptr %0, i64 0, i32 1
  store i32 12, ptr %4, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.TFrame_LDAQCMD_ENC_Start, ptr %0, i64 0, i32 2
  store i32 150, ptr %5, align 4, !tbaa !13
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TFrame_LDAQCMD_ENC_Start", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 12}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
