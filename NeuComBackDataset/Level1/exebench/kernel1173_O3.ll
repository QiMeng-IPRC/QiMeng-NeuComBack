; ModuleID = '../benchmarks/fine_grained/exebench/kernel1173.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1173.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @picoos_string_to_int32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %10, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp sgt i8 %6, 32
  %8 = icmp eq i8 %6, 0
  %9 = or i1 %7, %8
  %10 = add nuw i64 %4, 1
  br i1 %9, label %11, label %3, !llvm.loop !8

11:                                               ; preds = %3
  %12 = icmp eq i8 %6, 45
  %13 = icmp eq i8 %6, 43
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i64
  %16 = add i64 %4, %15
  %17 = and i64 %16, 4294967295
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = add i8 %19, -48
  %21 = icmp ult i8 %20, 10
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = tail call i1 @llvm.umax.i1(i1 %13, i1 %12)
  %24 = zext i1 %23 to i64
  %25 = add nuw i64 %4, %24
  br label %31

26:                                               ; preds = %31
  %27 = and i64 %39, 4294967295
  br label %28

28:                                               ; preds = %26, %11
  %29 = phi i64 [ %27, %26 ], [ %17, %11 ]
  %30 = phi i32 [ %38, %26 ], [ 0, %11 ]
  br label %44

31:                                               ; preds = %22, %31
  %32 = phi i64 [ %25, %22 ], [ %39, %31 ]
  %33 = phi i8 [ %19, %22 ], [ %41, %31 ]
  %34 = phi i32 [ 0, %22 ], [ %38, %31 ]
  %35 = zext i8 %33 to i32
  %36 = mul nsw i32 %34, 10
  %37 = add i32 %36, -48
  %38 = add i32 %37, %35
  %39 = add i64 %32, 1
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %31, label %26, !llvm.loop !10

44:                                               ; preds = %44, %28
  %45 = phi i64 [ %51, %44 ], [ %29, %28 ]
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = icmp sgt i8 %47, 32
  %49 = icmp eq i8 %47, 0
  %50 = or i1 %48, %49
  %51 = add nuw i64 %45, 1
  br i1 %50, label %52, label %44, !llvm.loop !11

52:                                               ; preds = %44
  %53 = sub nsw i32 0, %30
  %54 = select i1 %12, i32 %53, i32 %30
  %55 = and i1 %21, %49
  %56 = select i1 %55, i32 %54, i32 0
  %57 = select i1 %55, i32 0, i32 -10
  store i32 %56, ptr %1, align 4, !tbaa !12
  ret i32 %57
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.umax.i1(i1, i1) #1

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
