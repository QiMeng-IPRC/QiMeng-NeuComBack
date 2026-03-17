; ModuleID = '../benchmarks/fine_grained/exebench/kernel400.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local i64 @sqEncodeUTF8CodePoint(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 128
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %117, label %7

7:                                                ; preds = %5
  %8 = trunc i32 %2 to i8
  store i8 %8, ptr %0, align 1, !tbaa !5
  br label %117

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %22, %9 ], [ 0, %3 ]
  %11 = phi i64 [ %21, %9 ], [ 2, %3 ]
  %12 = phi i32 [ %17, %9 ], [ %2, %3 ]
  %13 = phi i64 [ %16, %9 ], [ 1, %3 ]
  %14 = phi <2 x i32> [ %15, %9 ], [ <i32 0, i32 6>, %3 ]
  %15 = add nsw <2 x i32> %14, <i32 6, i32 -1>
  %16 = add i64 %13, 1
  %17 = ashr i32 %12, 6
  %18 = extractelement <2 x i32> %15, i64 1
  %19 = shl nuw i32 1, %18
  %20 = icmp slt i32 %17, %19
  %21 = add i64 %11, 1
  %22 = add i64 %10, 1
  br i1 %20, label %23, label %9, !llvm.loop !8

23:                                               ; preds = %9
  %24 = icmp ugt i64 %16, %1
  br i1 %24, label %117, label %25

25:                                               ; preds = %23
  %26 = add nuw i32 %19, 255
  %27 = extractelement <2 x i32> %15, i64 0
  %28 = lshr i32 %2, %27
  %29 = and i32 %28, %26
  %30 = sub nsw i32 0, %19
  %31 = xor i32 %19, %30
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %0, align 1, !tbaa !5
  %34 = icmp ugt i64 %16, 1
  br i1 %34, label %35, label %117

35:                                               ; preds = %25
  %36 = add i64 %10, 1
  %37 = icmp ult i64 %36, 8
  br i1 %37, label %101, label %38

38:                                               ; preds = %35
  %39 = icmp ult i64 %36, 16
  br i1 %39, label %72, label %40

40:                                               ; preds = %38
  %41 = and i64 %36, -16
  %42 = shufflevector <2 x i32> %15, <2 x i32> poison, <16 x i32> zeroinitializer
  %43 = add <16 x i32> %42, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  %44 = insertelement <16 x i32> poison, i32 %2, i64 0
  %45 = shufflevector <16 x i32> %44, <16 x i32> poison, <16 x i32> zeroinitializer
  %46 = trunc i64 %41 to i32
  %47 = mul i32 %46, -6
  %48 = add i32 %27, %47
  %49 = getelementptr i8, ptr %0, i64 1
  br label %50

50:                                               ; preds = %50, %40
  %51 = phi i64 [ 0, %40 ], [ %59, %50 ]
  %52 = phi <16 x i32> [ %43, %40 ], [ %60, %50 ]
  %53 = getelementptr i8, ptr %49, i64 %51
  %54 = add <16 x i32> %52, <i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6>
  %55 = lshr <16 x i32> %45, %54
  %56 = trunc <16 x i32> %55 to <16 x i8>
  %57 = and <16 x i8> %56, <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>
  %58 = or <16 x i8> %57, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  store <16 x i8> %58, ptr %53, align 1, !tbaa !5
  %59 = add nuw i64 %51, 16
  %60 = add <16 x i32> %52, <i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96, i32 -96>
  %61 = icmp eq i64 %59, %41
  br i1 %61, label %62, label %50, !llvm.loop !10

62:                                               ; preds = %50
  %63 = icmp eq i64 %36, %41
  br i1 %63, label %117, label %64

64:                                               ; preds = %62
  %65 = getelementptr i8, ptr %0, i64 %41
  %66 = trunc i64 %41 to i32
  %67 = mul i32 %66, -6
  %68 = add i32 %27, %67
  %69 = or i64 %41, 1
  %70 = and i64 %36, 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %101, label %72

72:                                               ; preds = %38, %64
  %73 = phi i32 [ %48, %64 ], [ %27, %38 ]
  %74 = phi i64 [ %41, %64 ], [ 0, %38 ]
  %75 = and i64 %36, -8
  %76 = or i64 %75, 1
  %77 = trunc i64 %75 to i32
  %78 = mul i32 %77, -6
  %79 = add i32 %27, %78
  %80 = getelementptr i8, ptr %0, i64 %75
  %81 = insertelement <8 x i32> poison, i32 %73, i64 0
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> zeroinitializer
  %83 = add <8 x i32> %82, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42>
  %84 = insertelement <8 x i32> poison, i32 %2, i64 0
  %85 = shufflevector <8 x i32> %84, <8 x i32> poison, <8 x i32> zeroinitializer
  %86 = getelementptr i8, ptr %0, i64 1
  br label %87

87:                                               ; preds = %87, %72
  %88 = phi i64 [ %74, %72 ], [ %96, %87 ]
  %89 = phi <8 x i32> [ %83, %72 ], [ %97, %87 ]
  %90 = getelementptr i8, ptr %86, i64 %88
  %91 = add <8 x i32> %89, <i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6>
  %92 = lshr <8 x i32> %85, %91
  %93 = trunc <8 x i32> %92 to <8 x i8>
  %94 = and <8 x i8> %93, <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>
  %95 = or <8 x i8> %94, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  store <8 x i8> %95, ptr %90, align 1, !tbaa !5
  %96 = add nuw i64 %88, 8
  %97 = add <8 x i32> %89, <i32 -48, i32 -48, i32 -48, i32 -48, i32 -48, i32 -48, i32 -48, i32 -48>
  %98 = icmp eq i64 %96, %75
  br i1 %98, label %99, label %87, !llvm.loop !13

99:                                               ; preds = %87
  %100 = icmp eq i64 %36, %75
  br i1 %100, label %117, label %101

101:                                              ; preds = %35, %64, %99
  %102 = phi i64 [ 1, %35 ], [ %69, %64 ], [ %76, %99 ]
  %103 = phi i32 [ %27, %35 ], [ %68, %64 ], [ %79, %99 ]
  %104 = phi ptr [ %0, %35 ], [ %65, %64 ], [ %80, %99 ]
  br label %105

105:                                              ; preds = %101, %105
  %106 = phi i64 [ %115, %105 ], [ %102, %101 ]
  %107 = phi i32 [ %110, %105 ], [ %103, %101 ]
  %108 = phi ptr [ %109, %105 ], [ %104, %101 ]
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  %110 = add i32 %107, -6
  %111 = lshr i32 %2, %110
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 63
  %114 = or i8 %113, -128
  store i8 %114, ptr %109, align 1, !tbaa !5
  %115 = add nuw nsw i64 %106, 1
  %116 = icmp eq i64 %115, %11
  br i1 %116, label %117, label %105, !llvm.loop !14

117:                                              ; preds = %105, %62, %99, %25, %23, %5, %7
  %118 = phi i64 [ 1, %7 ], [ 1, %5 ], [ %16, %23 ], [ %16, %25 ], [ %16, %99 ], [ %16, %62 ], [ %16, %105 ]
  ret i64 %118
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !11, !12}
!14 = distinct !{!14, !9, !12, !11}
