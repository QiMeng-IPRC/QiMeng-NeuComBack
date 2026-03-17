; ModuleID = '../benchmarks/fine_grained/exebench/kernel1618.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FractBits = dso_local local_unnamed_addr global i32 0, align 4
@CarryBit = dso_local local_unnamed_addr global i32 0, align 4
@ExpInfinity = dso_local local_unnamed_addr global i32 0, align 4
@HiddenBit = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @renormalise(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = load i32, ptr @FractBits, align 4, !tbaa !10
  %4 = mul nsw i32 %3, -2
  %5 = icmp slt i32 %2, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %4, ptr %0, align 4, !tbaa !5
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ %4, %6 ], [ %2, %1 ]
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %63

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %11, align 4, !tbaa !11
  %14 = load i32, ptr %12, align 4, !tbaa !12
  %15 = sub i32 1, %8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %10
  %19 = add nsw i32 %8, 1
  store i32 %19, ptr %0, align 4, !tbaa !5
  %20 = and i32 %13, 1
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr @CarryBit, align 4
  %23 = select i1 %21, i32 0, i32 %22
  %24 = or i32 %14, %23
  %25 = ashr i32 %13, 1
  %26 = ashr i32 %24, 1
  %27 = and i32 %24, 1
  %28 = or i32 %26, %27
  br label %29

29:                                               ; preds = %18, %10
  %30 = phi i32 [ %14, %10 ], [ %28, %18 ]
  %31 = phi i32 [ %13, %10 ], [ %25, %18 ]
  %32 = phi i32 [ %8, %10 ], [ %19, %18 ]
  %33 = phi i32 [ undef, %10 ], [ %25, %18 ]
  %34 = phi i32 [ undef, %10 ], [ %28, %18 ]
  %35 = icmp eq i32 %8, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %58, %36 ], [ %30, %29 ]
  %38 = phi i32 [ %55, %36 ], [ %31, %29 ]
  %39 = phi i32 [ %49, %36 ], [ %32, %29 ]
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %0, align 4, !tbaa !5
  %41 = and i32 %38, 1
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr @CarryBit, align 4
  %44 = select i1 %42, i32 0, i32 %43
  %45 = or i32 %37, %44
  %46 = ashr i32 %45, 1
  %47 = and i32 %45, 1
  %48 = or i32 %46, %47
  %49 = add nsw i32 %39, 2
  store i32 %49, ptr %0, align 4, !tbaa !5
  %50 = and i32 %38, 2
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr @CarryBit, align 4
  %53 = select i1 %51, i32 0, i32 %52
  %54 = or i32 %48, %53
  %55 = ashr i32 %38, 2
  %56 = ashr i32 %54, 1
  %57 = and i32 %54, 1
  %58 = or i32 %56, %57
  %59 = icmp slt i32 %39, -1
  br i1 %59, label %36, label %60, !llvm.loop !13

60:                                               ; preds = %36, %29
  %61 = phi i32 [ %33, %29 ], [ %55, %36 ]
  %62 = phi i32 [ %34, %29 ], [ %58, %36 ]
  store i32 %61, ptr %11, align 4, !tbaa !11
  store i32 %62, ptr %12, align 4, !tbaa !12
  br label %63

63:                                               ; preds = %60, %7
  %64 = phi i32 [ 1, %60 ], [ %8, %7 ]
  %65 = load i32, ptr @ExpInfinity, align 4, !tbaa !10
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  store i32 %65, ptr %0, align 4, !tbaa !5
  %68 = load i32, ptr @HiddenBit, align 4, !tbaa !10
  %69 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %68, ptr %69, align 4, !tbaa !11
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  store i32 0, ptr %70, align 4, !tbaa !12
  br label %71

71:                                               ; preds = %67, %63
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !7, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
