; ModuleID = '../benchmarks/fine_grained/exebench/kernel482.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel482.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numleafs = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecompressVis(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @numleafs, align 4, !tbaa !5
  %4 = add nsw i32 %3, 7
  %5 = ashr i32 %4, 3
  %6 = ptrtoint ptr %1 to i64
  %7 = sext i32 %5 to i64
  br label %8

8:                                                ; preds = %28, %2
  %9 = phi ptr [ %1, %2 ], [ %29, %28 ]
  %10 = phi ptr [ %0, %2 ], [ %30, %28 ]
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds i32, ptr %10, i64 1
  br i1 %12, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i32, ptr %9, i64 1
  store i32 %11, ptr %9, align 4, !tbaa !5
  br label %28

16:                                               ; preds = %8
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = getelementptr inbounds i32, ptr %10, i64 2
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = zext i32 %17 to i64
  %22 = shl nuw nsw i64 %21, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 %22, i1 false), !tbaa !5
  %23 = add i32 %17, -1
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = getelementptr i8, ptr %9, i64 4
  %27 = getelementptr i8, ptr %26, i64 %25
  br label %28

28:                                               ; preds = %20, %16, %14
  %29 = phi ptr [ %15, %14 ], [ %9, %16 ], [ %27, %20 ]
  %30 = phi ptr [ %13, %14 ], [ %18, %16 ], [ %18, %20 ]
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %31, %6
  %33 = ashr exact i64 %32, 2
  %34 = icmp slt i64 %33, %7
  br i1 %34, label %8, label %35, !llvm.loop !9

35:                                               ; preds = %28
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
