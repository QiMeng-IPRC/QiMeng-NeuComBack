; ModuleID = '../benchmarks/fine_grained/exebench/kernel280.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel280.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @uni_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %2, -1
  %5 = load i64, ptr %1, align 8, !tbaa !5
  %6 = icmp ne i64 %5, 0
  %7 = icmp ne i64 %4, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %15, %9 ], [ %5, %3 ]
  %11 = phi i64 [ %13, %9 ], [ 0, %3 ]
  %12 = getelementptr inbounds i64, ptr %0, i64 %11
  store i64 %10, ptr %12, align 8, !tbaa !5
  %13 = add nuw i64 %11, 1
  %14 = getelementptr inbounds i64, ptr %1, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !5
  %16 = icmp ne i64 %15, 0
  %17 = icmp ult i64 %13, %4
  %18 = and i1 %17, %16
  br i1 %18, label %9, label %19, !llvm.loop !9

19:                                               ; preds = %9, %3
  %20 = phi i64 [ 0, %3 ], [ %13, %9 ]
  %21 = getelementptr inbounds i64, ptr %0, i64 %20
  store i64 0, ptr %21, align 8, !tbaa !5
  ret i64 %20
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
