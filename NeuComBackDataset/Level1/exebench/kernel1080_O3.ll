; ModuleID = '../benchmarks/fine_grained/exebench/kernel1080.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1080.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope2b8() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = getelementptr inbounds i32, ptr %1, i64 1
  %3 = load i32, ptr %2, align 4, !tbaa !9
  %4 = load i32, ptr @inst, align 4, !tbaa !9
  %5 = and i32 %4, 7
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = and i32 %3, 63
  %10 = load i32, ptr @status, align 4, !tbaa !9
  %11 = icmp eq i32 %9, 0
  %12 = and i32 %10, -4
  br i1 %11, label %23, label %13

13:                                               ; preds = %0
  %14 = and i32 %3, 31
  %15 = sub nuw nsw i32 32, %14
  %16 = shl i32 %8, %15
  %17 = ashr i32 %8, %14
  %18 = or i32 %17, %16
  %19 = and i32 %10, -4
  %20 = or i32 %12, 1
  %21 = icmp slt i32 %18, 0
  %22 = select i1 %21, i32 %20, i32 %19
  br label %23

23:                                               ; preds = %0, %13
  %24 = phi i32 [ %22, %13 ], [ %12, %0 ]
  %25 = phi i32 [ %18, %13 ], [ %8, %0 ]
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, -13
  br i1 %26, label %30, label %28

28:                                               ; preds = %23
  %29 = icmp slt i32 %25, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %28
  %31 = phi i32 [ 8, %28 ], [ 4, %23 ]
  %32 = or i32 %27, %31
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %32, %30 ], [ %27, %28 ]
  store i32 %34, ptr @status, align 4, !tbaa !9
  store i32 %25, ptr %7, align 4, !tbaa !9
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
