; ModuleID = '../benchmarks/fine_grained/exebench/kernel870.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel870.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope210() local_unnamed_addr #0 {
  %1 = load i32, ptr @inst, align 4, !tbaa !5
  %2 = and i32 %1, 7
  %3 = zext i32 %2 to i64
  %4 = load ptr, ptr @reg, align 8, !tbaa !9
  %5 = getelementptr inbounds i64, ptr %4, i64 %3
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = load i32, ptr @status, align 4, !tbaa !5
  %8 = and i32 %7, -32
  %9 = shl i64 %6, 32
  %10 = ashr exact i64 %9, 32
  %11 = shl i32 %7, 4
  %12 = and i32 %11, 256
  %13 = zext i32 %12 to i64
  %14 = or i64 %10, %13
  %15 = shl nsw i64 %14, 8
  %16 = lshr i64 %14, 1
  %17 = or i64 %16, %15
  %18 = and i64 %17, 256
  %19 = icmp eq i64 %18, 0
  %20 = or i32 %7, 17
  %21 = select i1 %19, i32 %8, i32 %20
  %22 = trunc i64 %17 to i32
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %21, -15
  br i1 %23, label %27, label %25

25:                                               ; preds = %0
  %26 = icmp slt i32 %22, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %0, %25
  %28 = phi i32 [ 8, %25 ], [ 4, %0 ]
  %29 = or i32 %24, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %29, %27 ], [ %24, %25 ]
  store i32 %31, ptr @status, align 4, !tbaa !5
  store i32 %22, ptr %5, align 4, !tbaa !5
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
