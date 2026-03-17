; ModuleID = '../benchmarks/fine_grained/exebench/kernel358.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope500() local_unnamed_addr #0 {
  %1 = load i32, ptr @inst, align 4, !tbaa !5
  %2 = and i32 %1, 7
  %3 = zext i32 %2 to i64
  %4 = load ptr, ptr @reg, align 8, !tbaa !9
  %5 = getelementptr inbounds i64, ptr %4, i64 %3
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = trunc i64 %6 to i32
  %8 = load i32, ptr @status, align 4, !tbaa !5
  %9 = and i32 %8, -32
  %10 = shl i32 %7, 2
  %11 = and i32 %7, 64
  %12 = icmp eq i32 %11, 0
  %13 = or i32 %8, 17
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = icmp eq i32 %10, 0
  %16 = and i32 %14, -15
  br i1 %15, label %19, label %17

17:                                               ; preds = %0
  %18 = icmp slt i32 %10, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0, %17
  %20 = phi i32 [ 8, %17 ], [ 4, %0 ]
  %21 = or i32 %16, %20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %21, %19 ], [ %16, %17 ]
  store i32 %23, ptr @status, align 4, !tbaa !5
  store i32 %10, ptr %5, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
