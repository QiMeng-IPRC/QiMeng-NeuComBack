; ModuleID = '../benchmarks/fine_grained/exebench/kernel152.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel152.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itoaBuffer = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local ptr @u8toString(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %66

4:                                                ; preds = %1
  store i32 48, ptr %2, align 16, !tbaa !5
  %5 = load ptr, ptr @itoaBuffer, align 8, !tbaa !9
  br label %10

6:                                                ; preds = %66
  %7 = trunc i64 %71 to i32
  %8 = icmp sgt i32 %7, 0
  %9 = load ptr, ptr @itoaBuffer, align 8, !tbaa !9
  br i1 %8, label %10, label %104

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %5, %4 ], [ %9, %6 ]
  %12 = phi i32 [ 1, %4 ], [ %7, %6 ]
  %13 = zext i32 %12 to i64
  %14 = icmp ult i32 %12, 16
  br i1 %14, label %43, label %15

15:                                               ; preds = %10
  %16 = add nsw i64 %13, -1
  %17 = add i32 %12, -1
  %18 = trunc i64 %16 to i32
  %19 = icmp ult i32 %17, %18
  %20 = icmp ugt i64 %16, 4294967295
  %21 = or i1 %19, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = and i64 %13, 4294967288
  %24 = and i64 %13, 7
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ 0, %22 ], [ %39, %25 ]
  %27 = xor i64 %26, -1
  %28 = add i64 %27, %13
  %29 = and i64 %28, 4294967295
  %30 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %29
  %31 = getelementptr inbounds i32, ptr %30, i64 -3
  %32 = load <4 x i32>, ptr %31, align 4, !tbaa !5
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %34 = getelementptr inbounds i32, ptr %30, i64 -7
  %35 = load <4 x i32>, ptr %34, align 4, !tbaa !5
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %37 = getelementptr inbounds i32, ptr %11, i64 %26
  store <4 x i32> %33, ptr %37, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %37, i64 4
  store <4 x i32> %36, ptr %38, align 4, !tbaa !5
  %39 = add nuw i64 %26, 8
  %40 = icmp eq i64 %39, %23
  br i1 %40, label %41, label %25, !llvm.loop !11

41:                                               ; preds = %25
  %42 = icmp eq i64 %23, %13
  br i1 %42, label %104, label %43

43:                                               ; preds = %15, %10, %41
  %44 = phi i64 [ %13, %15 ], [ %13, %10 ], [ %24, %41 ]
  %45 = phi i64 [ 0, %15 ], [ 0, %10 ], [ %23, %41 ]
  %46 = xor i64 %45, -1
  %47 = add nsw i64 %46, %13
  %48 = and i64 %13, 3
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %43, %50
  %51 = phi i64 [ %54, %50 ], [ %44, %43 ]
  %52 = phi i64 [ %59, %50 ], [ %45, %43 ]
  %53 = phi i64 [ %60, %50 ], [ 0, %43 ]
  %54 = add nsw i64 %51, -1
  %55 = and i64 %54, 4294967295
  %56 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !5
  %58 = getelementptr inbounds i32, ptr %11, i64 %52
  store i32 %57, ptr %58, align 4, !tbaa !5
  %59 = add nuw nsw i64 %52, 1
  %60 = add i64 %53, 1
  %61 = icmp eq i64 %60, %48
  br i1 %61, label %62, label %50, !llvm.loop !15

62:                                               ; preds = %50, %43
  %63 = phi i64 [ %44, %43 ], [ %54, %50 ]
  %64 = phi i64 [ %45, %43 ], [ %59, %50 ]
  %65 = icmp ult i64 %47, 3
  br i1 %65, label %104, label %76

66:                                               ; preds = %1, %66
  %67 = phi i64 [ %71, %66 ], [ 0, %1 ]
  %68 = phi i32 [ %73, %66 ], [ %0, %1 ]
  %69 = srem i32 %68, 10
  %70 = add nsw i32 %69, 48
  %71 = add nuw i64 %67, 1
  %72 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %67
  store i32 %70, ptr %72, align 4, !tbaa !5
  %73 = sdiv i32 %68, 10
  %74 = add i32 %68, 9
  %75 = icmp ult i32 %74, 19
  br i1 %75, label %6, label %66, !llvm.loop !17

76:                                               ; preds = %62, %76
  %77 = phi i64 [ %97, %76 ], [ %63, %62 ]
  %78 = phi i64 [ %102, %76 ], [ %64, %62 ]
  %79 = add i64 %77, 4294967295
  %80 = and i64 %79, 4294967295
  %81 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !5
  %83 = getelementptr inbounds i32, ptr %11, i64 %78
  store i32 %82, ptr %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %78, 1
  %85 = add i64 %77, 4294967294
  %86 = and i64 %85, 4294967295
  %87 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = getelementptr inbounds i32, ptr %11, i64 %84
  store i32 %88, ptr %89, align 4, !tbaa !5
  %90 = add nuw nsw i64 %78, 2
  %91 = add i64 %77, 4294967293
  %92 = and i64 %91, 4294967295
  %93 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !5
  %95 = getelementptr inbounds i32, ptr %11, i64 %90
  store i32 %94, ptr %95, align 4, !tbaa !5
  %96 = add nuw nsw i64 %78, 3
  %97 = add nsw i64 %77, -4
  %98 = and i64 %97, 4294967295
  %99 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = getelementptr inbounds i32, ptr %11, i64 %96
  store i32 %100, ptr %101, align 4, !tbaa !5
  %102 = add nuw nsw i64 %78, 4
  %103 = icmp eq i64 %102, %13
  br i1 %103, label %104, label %76, !llvm.loop !18

104:                                              ; preds = %62, %76, %41, %6
  %105 = phi ptr [ %9, %6 ], [ %11, %41 ], [ %11, %76 ], [ %11, %62 ]
  %106 = phi i32 [ 0, %6 ], [ %12, %41 ], [ %12, %76 ], [ %12, %62 ]
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %105, i64 %107
  store i32 0, ptr %108, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #3
  ret ptr %105
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !13}
