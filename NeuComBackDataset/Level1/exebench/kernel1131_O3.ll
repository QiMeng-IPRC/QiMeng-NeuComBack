; ModuleID = '../benchmarks/fine_grained/exebench/kernel1131.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1131.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@cg = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@qfalse = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @CG_ScoresUp_f() local_unnamed_addr #0 {
  %1 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cg, i64 0, i32 2), align 8, !tbaa !5
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, ptr @qfalse, align 8, !tbaa !11
  store i64 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cg, i64 0, i32 2), align 8, !tbaa !5
  %5 = load i32, ptr @cg, align 8, !tbaa !12
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cg, i64 0, i32 1), align 4, !tbaa !13
  br label %6

6:                                                ; preds = %3, %0
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
!5 = !{!6, !10, i64 8}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 4}
