; ModuleID = '../benchmarks/fine_grained/exebench/kernel1552.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1552.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@regs = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 4
@regflags = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MakeSR() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i64 0, i32 1), align 4, !tbaa !5
  %2 = shl i32 %1, 15
  %3 = load <4 x i32>, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i64 0, i32 2), align 4, !tbaa !10
  %4 = load <4 x i32>, ptr @regflags, align 16, !tbaa !10
  %5 = shufflevector <4 x i32> %3, <4 x i32> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shl <8 x i32> %5, <i32 14, i32 13, i32 12, i32 8, i32 4, i32 3, i32 2, i32 1>
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @regflags, i64 0, i32 4), align 16, !tbaa !11
  %8 = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %6)
  %9 = or i32 %8, %2
  %10 = or i32 %9, %7
  store i32 %10, ptr @regs, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 4}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !7, i64 16}
!12 = !{!"TYPE_4__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!13 = !{!6, !7, i64 0}
