; ModuleID = '../benchmarks/fine_grained/exebench/kernel752.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel752.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITMASK_31 = dso_local local_unnamed_addr global ptr null, align 8
@BITMASK_LOWER1 = dso_local local_unnamed_addr global ptr null, align 8
@BITMASK_UPPER1_ = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BARRAY_reset_interval(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sdiv i32 %1, 32
  %5 = srem i32 %1, 32
  %6 = sdiv i32 %2, 32
  %7 = srem i32 %2, 32
  %8 = icmp eq i32 %4, %6
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = srem i32 %1, 32
  %11 = srem i32 %2, 32
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %75, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @BITMASK_31, align 8, !tbaa !5
  %15 = load i64, ptr %0, align 8, !tbaa !9
  %16 = add nsw i32 %11, 1
  %17 = sub nsw i32 %16, %10
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = sext i32 %10 to i64
  %22 = getelementptr inbounds i64, ptr %14, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !9
  %24 = and i64 %15, %23
  store i64 %24, ptr %0, align 8, !tbaa !9
  %25 = add nsw i32 %10, 1
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi i64 [ %15, %13 ], [ %24, %20 ]
  %28 = phi i32 [ %10, %13 ], [ %25, %20 ]
  %29 = icmp eq i32 %11, %10
  br i1 %29, label %75, label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ %43, %30 ], [ %27, %26 ]
  %32 = phi i32 [ %44, %30 ], [ %28, %26 ]
  %33 = srem i32 %32, 32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, ptr %14, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !9
  %37 = and i64 %31, %36
  store i64 %37, ptr %0, align 8, !tbaa !9
  %38 = add nsw i32 %32, 1
  %39 = srem i32 %38, 32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, ptr %14, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !9
  %43 = and i64 %37, %42
  store i64 %43, ptr %0, align 8, !tbaa !9
  %44 = add nsw i32 %32, 2
  %45 = icmp eq i32 %38, %11
  br i1 %45, label %75, label %30, !llvm.loop !11

46:                                               ; preds = %3
  %47 = load ptr, ptr @BITMASK_LOWER1, align 8, !tbaa !5
  %48 = sext i32 %5 to i64
  %49 = getelementptr inbounds i64, ptr %47, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !9
  %51 = sext i32 %4 to i64
  %52 = getelementptr inbounds i64, ptr %0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !9
  %54 = and i64 %53, %50
  store i64 %54, ptr %52, align 8, !tbaa !9
  %55 = add nsw i32 %4, 1
  %56 = icmp slt i32 %55, %6
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = shl nsw i64 %51, 3
  %59 = add nsw i64 %58, 8
  %60 = getelementptr i8, ptr %0, i64 %59
  %61 = add nsw i32 %6, -2
  %62 = sub nsw i32 %61, %4
  %63 = zext i32 %62 to i64
  %64 = shl nuw nsw i64 %63, 3
  %65 = add nuw nsw i64 %64, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %60, i8 0, i64 %65, i1 false), !tbaa !9
  br label %66

66:                                               ; preds = %57, %46
  %67 = load ptr, ptr @BITMASK_UPPER1_, align 8, !tbaa !5
  %68 = sext i32 %7 to i64
  %69 = getelementptr inbounds i64, ptr %67, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !9
  %71 = sext i32 %6 to i64
  %72 = getelementptr inbounds i64, ptr %0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !9
  %74 = and i64 %73, %70
  store i64 %74, ptr %72, align 8, !tbaa !9
  br label %75

75:                                               ; preds = %26, %30, %9, %66
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
