; ModuleID = '../benchmarks/fine_grained/exebench/kernel577.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local local_unnamed_addr global ptr null, align 8
@inst = dso_local local_unnamed_addr global i32 0, align 4
@status = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Ope760() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg, align 8, !tbaa !5
  %2 = getelementptr inbounds i64, ptr %1, i64 3
  %3 = load i64, ptr %2, align 8, !tbaa !9
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr @inst, align 4, !tbaa !11
  %6 = and i32 %5, 7
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i64, ptr %1, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !9
  %10 = trunc i64 %9 to i32
  %11 = and i32 %4, 63
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %0
  %14 = lshr i32 32768, %11
  %15 = and i32 %14, %10
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i32 %15, %14
  %18 = or i1 %16, %17
  %19 = load i32, ptr @status, align 4
  %20 = and i32 %19, -32
  %21 = select i1 %18, i32 0, i32 2
  %22 = add nsw i32 %11, -1
  %23 = shl i32 %10, %22
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 17
  %27 = or i32 %26, %21
  %28 = or i32 %27, %20
  %29 = shl i32 %23, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %13
  store i32 %28, ptr @status, align 4, !tbaa !11
  %32 = icmp slt i32 %29, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %31
  %34 = or i32 %28, 8
  br label %48

35:                                               ; preds = %13
  %36 = or i32 %28, 4
  br label %48

37:                                               ; preds = %0
  %38 = icmp eq i32 %10, 0
  %39 = load i32, ptr @status, align 4, !tbaa !11
  br i1 %38, label %45, label %40

40:                                               ; preds = %37
  %41 = and i32 %39, -16
  store i32 %41, ptr @status, align 4, !tbaa !11
  %42 = icmp slt i32 %10, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = or i32 %41, 8
  br label %48

45:                                               ; preds = %37
  %46 = and i32 %39, -15
  %47 = or i32 %46, 4
  br label %48

48:                                               ; preds = %43, %45, %33, %35
  %49 = phi i32 [ %36, %35 ], [ %34, %33 ], [ %47, %45 ], [ %44, %43 ]
  %50 = phi i32 [ 0, %35 ], [ %29, %33 ], [ 0, %45 ], [ %10, %43 ]
  store i32 %49, ptr @status, align 4, !tbaa !11
  br label %51

51:                                               ; preds = %48, %31, %40
  %52 = phi i32 [ %10, %40 ], [ %29, %31 ], [ %50, %48 ]
  store i32 %52, ptr %8, align 4, !tbaa !11
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
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
