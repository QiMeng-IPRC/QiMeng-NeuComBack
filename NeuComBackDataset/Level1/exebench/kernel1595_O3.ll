; ModuleID = '../benchmarks/fine_grained/exebench/kernel1595.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1595.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cumulright_i32vector(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i64 %1, %2
  br i1 %5, label %6, label %90

6:                                                ; preds = %4
  %7 = sub i64 %2, %1
  %8 = icmp ult i64 %7, 12
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = shl i64 %1, 3
  %11 = add i64 %10, 8
  %12 = getelementptr i8, ptr %3, i64 %11
  %13 = shl i64 %2, 3
  %14 = add i64 %13, 8
  %15 = getelementptr i8, ptr %3, i64 %14
  %16 = getelementptr i8, ptr %0, i64 %10
  %17 = getelementptr i8, ptr %0, i64 %13
  %18 = icmp ult ptr %12, %17
  %19 = icmp ult ptr %16, %15
  %20 = and i1 %18, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %9
  %22 = and i64 %7, -4
  %23 = add i64 %22, %1
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi i64 [ 0, %21 ], [ %38, %24 ]
  %26 = add i64 %25, %1
  %27 = add nsw i64 %26, 1
  %28 = getelementptr inbounds i64, ptr %0, i64 %26
  %29 = load <2 x i64>, ptr %28, align 8, !tbaa !5, !alias.scope !9
  %30 = getelementptr inbounds i64, ptr %28, i64 2
  %31 = load <2 x i64>, ptr %30, align 8, !tbaa !5, !alias.scope !9
  %32 = getelementptr inbounds i64, ptr %3, i64 %27
  %33 = load <2 x i64>, ptr %32, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  %34 = getelementptr inbounds i64, ptr %32, i64 2
  %35 = load <2 x i64>, ptr %34, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  %36 = add nsw <2 x i64> %33, %29
  %37 = add nsw <2 x i64> %35, %31
  store <2 x i64> %36, ptr %32, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  store <2 x i64> %37, ptr %34, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  %38 = add nuw i64 %25, 4
  %39 = icmp eq i64 %38, %22
  br i1 %39, label %40, label %24, !llvm.loop !14

40:                                               ; preds = %24
  %41 = icmp eq i64 %7, %22
  br i1 %41, label %90, label %42

42:                                               ; preds = %9, %6, %40
  %43 = phi i64 [ %1, %9 ], [ %1, %6 ], [ %23, %40 ]
  %44 = sub i64 %2, %43
  %45 = xor i64 %43, -1
  %46 = add i64 %45, %2
  %47 = and i64 %44, 3
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %42, %49
  %50 = phi i64 [ %52, %49 ], [ %43, %42 ]
  %51 = phi i64 [ %58, %49 ], [ 0, %42 ]
  %52 = add nsw i64 %50, 1
  %53 = getelementptr inbounds i64, ptr %0, i64 %50
  %54 = load i64, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds i64, ptr %3, i64 %52
  %56 = load i64, ptr %55, align 8, !tbaa !5
  %57 = add nsw i64 %56, %54
  store i64 %57, ptr %55, align 8, !tbaa !5
  %58 = add i64 %51, 1
  %59 = icmp eq i64 %58, %47
  br i1 %59, label %60, label %49, !llvm.loop !18

60:                                               ; preds = %49, %42
  %61 = phi i64 [ %43, %42 ], [ %52, %49 ]
  %62 = icmp ult i64 %46, 3
  br i1 %62, label %90, label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ %83, %63 ], [ %61, %60 ]
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds i64, ptr %0, i64 %64
  %67 = load i64, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds i64, ptr %3, i64 %65
  %69 = load i64, ptr %68, align 8, !tbaa !5
  %70 = add nsw i64 %69, %67
  store i64 %70, ptr %68, align 8, !tbaa !5
  %71 = add nsw i64 %64, 2
  %72 = getelementptr inbounds i64, ptr %0, i64 %65
  %73 = load i64, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds i64, ptr %3, i64 %71
  %75 = load i64, ptr %74, align 8, !tbaa !5
  %76 = add nsw i64 %75, %73
  store i64 %76, ptr %74, align 8, !tbaa !5
  %77 = add nsw i64 %64, 3
  %78 = getelementptr inbounds i64, ptr %0, i64 %71
  %79 = load i64, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds i64, ptr %3, i64 %77
  %81 = load i64, ptr %80, align 8, !tbaa !5
  %82 = add nsw i64 %81, %79
  store i64 %82, ptr %80, align 8, !tbaa !5
  %83 = add nsw i64 %64, 4
  %84 = getelementptr inbounds i64, ptr %0, i64 %77
  %85 = load i64, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds i64, ptr %3, i64 %83
  %87 = load i64, ptr %86, align 8, !tbaa !5
  %88 = add nsw i64 %87, %85
  store i64 %88, ptr %86, align 8, !tbaa !5
  %89 = icmp eq i64 %83, %2
  br i1 %89, label %90, label %63, !llvm.loop !20

90:                                               ; preds = %60, %63, %40, %4
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !15, !16}
