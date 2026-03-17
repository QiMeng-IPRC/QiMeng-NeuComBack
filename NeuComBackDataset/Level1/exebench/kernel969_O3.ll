; ModuleID = '../benchmarks/fine_grained/exebench/kernel969.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel969.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local i32 @c_codepoint_to_utf8(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 128
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %0, 2048
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = icmp ult i32 %0, 65536
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = icmp ult i32 %0, 2097152
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = icmp ult i32 %0, 67108864
  %12 = select i1 %11, i32 248, i32 252
  %13 = select i1 %11, i32 5, i32 6
  br label %14

14:                                               ; preds = %10, %8, %6, %4
  %15 = phi i32 [ 192, %4 ], [ 224, %6 ], [ 240, %8 ], [ %12, %10 ]
  %16 = phi i32 [ 2, %4 ], [ 3, %6 ], [ 4, %8 ], [ %13, %10 ]
  %17 = icmp eq ptr %1, null
  br i1 %17, label %74, label %20

18:                                               ; preds = %2
  %19 = icmp eq ptr %1, null
  br i1 %19, label %74, label %68

20:                                               ; preds = %14
  %21 = zext i32 %16 to i64
  %22 = add nsw i64 %21, -1
  %23 = trunc i32 %0 to i8
  %24 = and i8 %23, 63
  %25 = or i8 %24, -128
  %26 = getelementptr inbounds i8, ptr %1, i64 %22
  store i8 %25, ptr %26, align 1, !tbaa !5
  %27 = ashr i32 %0, 6
  %28 = icmp ugt i32 %16, 2
  br i1 %28, label %29, label %68, !llvm.loop !8

29:                                               ; preds = %20
  %30 = add nsw i64 %21, -2
  %31 = trunc i32 %27 to i8
  %32 = and i8 %31, 63
  %33 = or i8 %32, -128
  %34 = getelementptr inbounds i8, ptr %1, i64 %30
  store i8 %33, ptr %34, align 1, !tbaa !5
  %35 = ashr i32 %0, 12
  %36 = icmp ugt i64 %22, 2
  br i1 %36, label %37, label %68, !llvm.loop !8

37:                                               ; preds = %29
  %38 = add nsw i64 %21, -3
  %39 = trunc i32 %35 to i8
  %40 = and i8 %39, 63
  %41 = or i8 %40, -128
  %42 = getelementptr inbounds i8, ptr %1, i64 %38
  store i8 %41, ptr %42, align 1, !tbaa !5
  %43 = ashr i32 %0, 18
  %44 = icmp ugt i64 %30, 2
  br i1 %44, label %45, label %68, !llvm.loop !8

45:                                               ; preds = %37
  %46 = add nsw i64 %21, -4
  %47 = trunc i32 %43 to i8
  %48 = and i8 %47, 63
  %49 = or i8 %48, -128
  %50 = getelementptr inbounds i8, ptr %1, i64 %46
  store i8 %49, ptr %50, align 1, !tbaa !5
  %51 = ashr i32 %0, 24
  %52 = icmp ugt i64 %38, 2
  br i1 %52, label %53, label %68, !llvm.loop !8

53:                                               ; preds = %45
  %54 = add nsw i64 %21, -5
  %55 = trunc i32 %51 to i8
  %56 = and i8 %55, 63
  %57 = or i8 %56, -128
  %58 = getelementptr inbounds i8, ptr %1, i64 %54
  store i8 %57, ptr %58, align 1, !tbaa !5
  %59 = ashr i32 %0, 30
  %60 = icmp ugt i64 %46, 2
  br i1 %60, label %61, label %68, !llvm.loop !8

61:                                               ; preds = %53
  %62 = add nsw i64 %21, -6
  %63 = trunc i32 %59 to i8
  %64 = and i8 %63, 63
  %65 = or i8 %64, -128
  %66 = getelementptr inbounds i8, ptr %1, i64 %62
  store i8 %65, ptr %66, align 1, !tbaa !5
  %67 = ashr i32 %0, 31
  br label %68

68:                                               ; preds = %20, %29, %37, %45, %53, %61, %18
  %69 = phi i32 [ 0, %18 ], [ %15, %61 ], [ %15, %53 ], [ %15, %45 ], [ %15, %37 ], [ %15, %29 ], [ %15, %20 ]
  %70 = phi i32 [ 1, %18 ], [ %16, %61 ], [ %16, %53 ], [ %16, %45 ], [ %16, %37 ], [ %16, %29 ], [ %16, %20 ]
  %71 = phi i32 [ %0, %18 ], [ %27, %20 ], [ %35, %29 ], [ %43, %37 ], [ %51, %45 ], [ %59, %53 ], [ %67, %61 ]
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, ptr %1, align 1, !tbaa !5
  br label %74

74:                                               ; preds = %18, %14, %68
  %75 = phi i32 [ 1, %18 ], [ %16, %14 ], [ %70, %68 ]
  ret i32 %75
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
