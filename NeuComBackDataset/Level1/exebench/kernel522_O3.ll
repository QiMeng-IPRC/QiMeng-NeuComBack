; ModuleID = '../benchmarks/fine_grained/exebench/kernel522.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel522.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@reg = dso_local local_unnamed_addr global ptr null, align 8
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Opd048() local_unnamed_addr #0 {
  %1 = load ptr, ptr @areg, align 8, !tbaa !5
  %2 = load i32, ptr @inst, align 4, !tbaa !9
  %3 = and i32 %2, 7
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i64, ptr %1, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !11
  %7 = trunc i64 %6 to i32
  %8 = load ptr, ptr @reg, align 8, !tbaa !5
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, %7
  %12 = shl i64 %6, 32
  %13 = xor i64 %9, -1
  %14 = shl i64 %13, 32
  %15 = icmp sgt i64 %12, %14
  %16 = load i32, ptr @status, align 4
  %17 = and i32 %16, -32
  %18 = select i1 %15, i32 17, i32 0
  %19 = or i32 %18, %17
  %20 = add i32 %11, -32768
  %21 = icmp ult i32 %20, -65536
  %22 = select i1 %21, i32 2, i32 0
  %23 = or i32 %19, %22
  %24 = icmp eq i32 %11, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = icmp slt i32 %11, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %0, %25
  %28 = phi i32 [ 8, %25 ], [ 4, %0 ]
  %29 = or i32 %23, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %29, %27 ], [ %23, %25 ]
  store i32 %31, ptr @status, align 4, !tbaa !9
  store i32 %11, ptr %8, align 4, !tbaa !9
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
