; ModuleID = '../benchmarks/fine_grained/exebench/kernel1202.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1202.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@level = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @barrels_fall_nikki_B(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp slt i32 %3, 90
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i64, ptr @level, align 8, !tbaa !12
  %7 = sitofp i64 %6 to double
  %8 = fadd double %7, 1.000000e-01
  %9 = fptosi double %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  store i64 %9, ptr %10, align 8, !tbaa !14
  %11 = add nsw i32 %3, 1
  store i32 %11, ptr %2, align 4, !tbaa !5
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, ptr %0, align 8, !tbaa !15
  %15 = and i32 %14, -2
  store i32 %15, ptr %0, align 8, !tbaa !15
  br label %16

16:                                               ; preds = %5, %13, %1
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
!5 = !{!6, !7, i64 4}
!6 = !{!"TYPE_6__", !7, i64 0, !10, i64 4, !11, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_5__", !7, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"TYPE_7__", !11, i64 0}
!14 = !{!6, !11, i64 8}
!15 = !{!6, !7, i64 0}
