; ModuleID = '../benchmarks/fine_grained/exebench/kernel1119.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1119.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@snb_msr_uncores = dso_local local_unnamed_addr global i32 0, align 4
@uncore_msr_uncores = dso_local local_unnamed_addr global i32 0, align 4
@snb_uncore_cbox = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 8
@boot_cpu_data = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @snb_uncore_cpu_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @snb_msr_uncores, align 4, !tbaa !5
  store i32 %1, ptr @uncore_msr_uncores, align 4, !tbaa !5
  %2 = load i64, ptr @snb_uncore_cbox, align 8, !tbaa !9
  %3 = load i64, ptr @boot_cpu_data, align 8, !tbaa !12
  %4 = icmp sgt i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i64 %3, ptr @snb_uncore_cbox, align 8, !tbaa !9
  br label %6

6:                                                ; preds = %5, %0
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_3__", !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"TYPE_4__", !11, i64 0}
