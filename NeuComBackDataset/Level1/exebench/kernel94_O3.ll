; ModuleID = '../benchmarks/fine_grained/exebench/kernel94.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel94.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, ptr }

@ERR = dso_local local_unnamed_addr global i32 0, align 4
@OK = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @int_to_string(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = lshr i32 %1, 31
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %15, %2
  %10 = phi i64 [ %20, %15 ], [ %8, %2 ]
  %11 = phi i32 [ %19, %15 ], [ %4, %2 ]
  %12 = phi i32 [ %18, %15 ], [ 0, %2 ]
  %13 = icmp sgt i64 %6, %10
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, ptr %0, align 8, !tbaa !12
  br label %69

15:                                               ; preds = %9
  %16 = mul nsw i32 %12, 10
  %17 = urem i32 %11, 10
  %18 = add nsw i32 %16, %17
  %19 = udiv i32 %11, 10
  %20 = add nuw nsw i64 %10, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %0, align 8, !tbaa !12
  %22 = icmp ugt i32 %11, 9
  br i1 %22, label %9, label %23, !llvm.loop !13

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  br i1 %3, label %26, label %30

26:                                               ; preds = %23
  store i8 45, ptr %25, align 1, !tbaa !16
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  %28 = load ptr, ptr %24, align 8, !tbaa !15
  %29 = load i32, ptr %0, align 8, !tbaa !12
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %29, %26 ], [ %21, %23 ]
  %32 = phi ptr [ %28, %26 ], [ %25, %23 ]
  %33 = phi ptr [ %27, %26 ], [ %25, %23 ]
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  %36 = icmp ult ptr %33, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %30
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %32 to i64
  %40 = add i64 %39, %34
  %41 = sub i64 %40, %38
  %42 = add i64 %38, 1
  %43 = and i64 %41, 1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = srem i32 %18, 10
  %47 = trunc i32 %46 to i8
  %48 = add nsw i8 %47, 48
  store i8 %48, ptr %33, align 1, !tbaa !16
  %49 = getelementptr inbounds i8, ptr %33, i64 1
  %50 = sdiv i32 %18, 10
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi ptr [ %33, %37 ], [ %49, %45 ]
  %53 = phi i32 [ %18, %37 ], [ %50, %45 ]
  %54 = icmp eq i64 %40, %42
  br i1 %54, label %69, label %55

55:                                               ; preds = %51, %55
  %56 = phi ptr [ %66, %55 ], [ %52, %51 ]
  %57 = phi i32 [ %67, %55 ], [ %53, %51 ]
  %58 = srem i32 %57, 10
  %59 = trunc i32 %58 to i8
  %60 = add nsw i8 %59, 48
  store i8 %60, ptr %56, align 1, !tbaa !16
  %61 = getelementptr inbounds i8, ptr %56, i64 1
  %62 = sdiv i32 %57, 10
  %63 = srem i32 %62, 10
  %64 = trunc i32 %63 to i8
  %65 = add nsw i8 %64, 48
  store i8 %65, ptr %61, align 1, !tbaa !16
  %66 = getelementptr inbounds i8, ptr %56, i64 2
  %67 = sdiv i32 %57, 100
  %68 = icmp ult ptr %66, %35
  br i1 %68, label %55, label %69, !llvm.loop !17

69:                                               ; preds = %51, %55, %30, %14
  %70 = phi ptr [ @ERR, %14 ], [ @OK, %30 ], [ @OK, %55 ], [ @OK, %51 ]
  %71 = load i32, ptr %70, align 4, !tbaa !18
  ret i32 %71
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !10, i64 8}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8, !11, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !11, i64 16}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !14}
!18 = !{!7, !7, i64 0}
