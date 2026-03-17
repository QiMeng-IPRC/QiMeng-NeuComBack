; ModuleID = '../benchmarks/fine_grained/exebench/kernel562.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel562.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ScrollList_Init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %3 = load i32, ptr %0, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  store i32 1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !12
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 3, ptr %8, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %7, %11, %5
  %13 = phi i32 [ %3, %7 ], [ %3, %11 ], [ 1, %5 ]
  %14 = phi i32 [ %9, %7 ], [ 3, %11 ], [ 0, %5 ]
  %15 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !13
  %17 = add nsw i32 %14, %16
  %18 = mul nsw i32 %17, %13
  %19 = sub nsw i32 %18, %14
  %20 = shl nsw i32 %19, 3
  %21 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !14
  store i32 %23, ptr %21, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 6
  store i64 %25, ptr %26, align 8, !tbaa !17
  %27 = add nsw i32 %20, %23
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 2
  store i32 %27, ptr %28, align 8, !tbaa !18
  %29 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = shl nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %25, %32
  %34 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !20
  %35 = getelementptr inbounds %struct.TYPE_5__, ptr %0, i64 0, i32 4, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !21
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %12
  %40 = shl nsw i32 %19, 2
  %41 = sub nsw i32 %23, %40
  store i32 %41, ptr %21, align 8, !tbaa !15
  %42 = sub nsw i32 %27, %40
  store i32 %42, ptr %28, align 8, !tbaa !18
  br label %43

43:                                               ; preds = %39, %12
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !11, i64 56, !11, i64 64, !11, i64 72}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_4__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !11, i64 16, !11, i64 24, !11, i64 32}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 20}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !11, i64 32}
!17 = !{!6, !11, i64 48}
!18 = !{!6, !7, i64 24}
!19 = !{!6, !7, i64 12}
!20 = !{!6, !11, i64 40}
!21 = !{!6, !7, i64 28}
