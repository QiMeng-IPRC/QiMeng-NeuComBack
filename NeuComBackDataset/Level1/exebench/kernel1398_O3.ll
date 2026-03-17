; ModuleID = '../benchmarks/fine_grained/exebench/kernel1398.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1398.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @postProcessTrigonometric(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 6
  br i1 %3, label %4, label %11

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ %2, %1 ]
  %6 = sitofp i32 %5 to double
  %7 = fadd double %6, 0xC01921FB4D12D84A
  %8 = fptosi double %7 to i32
  %9 = icmp sgt i32 %8, 6
  br i1 %9, label %4, label %10, !llvm.loop !10

10:                                               ; preds = %4
  store i32 %8, ptr %0, align 4, !tbaa !5
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
