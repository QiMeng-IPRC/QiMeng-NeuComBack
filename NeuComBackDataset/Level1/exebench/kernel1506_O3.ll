; ModuleID = '../benchmarks/fine_grained/exebench/kernel1506.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1506.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fn3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = shl nsw i32 %3, 1
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = or i32 %5, 1
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 2147483616
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %13, %10 ]
  %12 = phi i32 [ 15, %8 ], [ %14, %10 ]
  %13 = add nuw i32 %11, 32
  %14 = add i32 %12, 32
  %15 = icmp eq i32 %13, %9
  br i1 %15, label %16, label %10, !llvm.loop !10

16:                                               ; preds = %10
  %17 = add i32 %12, 16
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ %9, %16 ], [ 0, %2 ]
  %20 = phi i32 [ %17, %16 ], [ 0, %2 ]
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %24, %21 ], [ %19, %18 ]
  %23 = phi i32 [ %22, %21 ], [ %20, %18 ]
  %24 = add nuw nsw i32 %22, 1
  %25 = icmp eq i32 %24, %6
  br i1 %25, label %26, label %21, !llvm.loop !14

26:                                               ; preds = %21
  store i32 %23, ptr %1, align 4, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"dt_interpolation", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !13, !12}
!15 = !{!7, !7, i64 0}
