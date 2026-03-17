; ModuleID = '../benchmarks/fine_grained/exebench/kernel267.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel267.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmftraffic = dso_local local_unnamed_addr global i32 0, align 4
@mmftrafficM = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @addftraffic(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @mmftraffic, align 4, !tbaa !5
  %3 = add i32 %2, %0
  store i32 %3, ptr @mmftraffic, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 999999
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, ptr @mmftrafficM, align 4, !tbaa !5
  %7 = add nuw i32 %3, 999999
  %8 = tail call i32 @llvm.smin.i32(i32 %3, i32 1999999)
  %9 = sub nuw i32 %7, %8
  %10 = udiv i32 %9, 1000000
  %11 = mul nsw i32 %10, -1000000
  %12 = add i32 %6, %10
  %13 = add nsw i32 %3, -1000000
  %14 = add nsw i32 %11, %13
  %15 = add i32 %12, 1
  store i32 %14, ptr @mmftraffic, align 4, !tbaa !5
  store i32 %15, ptr @mmftrafficM, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %5, %1
  %17 = phi i32 [ %14, %5 ], [ %3, %1 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 -999999)
  %21 = icmp ult i32 %17, -999999
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 %17, %22
  %24 = sub nsw i32 %20, %23
  %25 = udiv i32 %24, 999999
  %26 = add nuw nsw i32 %25, %22
  %27 = mul i32 %26, 999999
  %28 = add i32 %17, %27
  %29 = add i32 %28, 999999
  store i32 %29, ptr @mmftraffic, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
