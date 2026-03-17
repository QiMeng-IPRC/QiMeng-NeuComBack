; ModuleID = '../benchmarks/fine_grained/exebench/kernel1479.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1479.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }

@barrels_fall_nikki_A = dso_local local_unnamed_addr global i32 0, align 4
@level = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @barrelsfall_nikkiA_trigger(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @barrels_fall_nikki_A, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 8, !tbaa !9
  %6 = load i64, ptr @level, align 8, !tbaa !12
  %7 = sitofp i64 %6 to double
  %8 = fadd double %7, 1.000000e-01
  %9 = fptosi double %8 to i64
  store i64 %9, ptr %0, align 8, !tbaa !14
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
!9 = !{!10, !6, i64 8}
!10 = !{!"TYPE_6__", !11, i64 0, !6, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"TYPE_7__", !11, i64 0}
!14 = !{!10, !11, i64 0}
