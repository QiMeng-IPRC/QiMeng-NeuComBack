; ModuleID = '../benchmarks/fine_grained/exebench/kernel970.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel970.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_memUsedLength = dso_local local_unnamed_addr global i32 0, align 4
@g_memTankSize = dso_local local_unnamed_addr global i32 0, align 4
@g_memTank = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @frw_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %3 = load i32, ptr @g_memUsedLength, align 4, !tbaa !5
  %4 = add nsw i32 %3, %2
  %5 = load i32, ptr @g_memTankSize, align 4, !tbaa !5
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @g_memTank, align 8, !tbaa !9
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %4, ptr @g_memUsedLength, align 4, !tbaa !5
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi ptr [ %10, %7 ], [ null, %1 ]
  ret ptr %12
}

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
