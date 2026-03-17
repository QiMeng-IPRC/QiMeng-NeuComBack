; ModuleID = '../benchmarks/fine_grained/exebench/kernel777.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel777.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i32 @Lzma2Dec_GetOldProps(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 40
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 40
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = and i32 %0, 1
  %8 = or i32 %7, 2
  %9 = sdiv i32 %0, 2
  %10 = add nsw i32 %9, 11
  %11 = shl nuw i32 %8, %10
  br label %12

12:                                               ; preds = %4, %6
  %13 = phi i32 [ %11, %6 ], [ -1, %4 ]
  store i32 4, ptr %1, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !5
  %15 = ashr i32 %13, 8
  %16 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %15, ptr %16, align 4, !tbaa !5
  %17 = ashr i32 %13, 16
  %18 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %17, ptr %18, align 4, !tbaa !5
  %19 = ashr i32 %13, 24
  %20 = getelementptr inbounds i32, ptr %1, i64 4
  store i32 %19, ptr %20, align 4, !tbaa !5
  br label %21

21:                                               ; preds = %2, %12
  %22 = phi i32 [ 0, %12 ], [ 4, %2 ]
  ret i32 %22
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
