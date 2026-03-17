; ModuleID = '../benchmarks/fine_grained/exebench/kernel1032.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1032.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = dso_local local_unnamed_addr global ptr null, align 8
@d = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@rsl = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @aum() local_unnamed_addr #0 {
  %1 = load ptr, ptr @state, align 8, !tbaa !5
  %2 = load ptr, ptr @rsl, align 8, !tbaa !5
  br label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ 0, %0 ], [ %22, %3 ]
  %5 = load i32, ptr @d, align 4, !tbaa !9
  %6 = and i32 %5, 15
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  store i32 %9, ptr @e, align 4, !tbaa !9
  %10 = load i32, ptr @b, align 4, !tbaa !9
  %11 = load i32, ptr @c, align 4, !tbaa !9
  %12 = xor i32 %11, %10
  store i32 %12, ptr %8, align 4, !tbaa !9
  %13 = load i32, ptr @c, align 4, !tbaa !9
  %14 = load i32, ptr @d, align 4, !tbaa !9
  %15 = sub nsw i32 %13, %14
  store i32 %15, ptr @b, align 4, !tbaa !9
  %16 = load i32, ptr @e, align 4, !tbaa !9
  %17 = add nsw i32 %16, %14
  store i32 %17, ptr @c, align 4, !tbaa !9
  %18 = getelementptr inbounds i32, ptr %1, i64 %4
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %20 = add nsw i32 %19, %16
  store i32 %20, ptr @d, align 4, !tbaa !9
  %21 = getelementptr inbounds i32, ptr %2, i64 %4
  store i32 %20, ptr %21, align 4, !tbaa !9
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %24, label %3, !llvm.loop !11

24:                                               ; preds = %3
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
