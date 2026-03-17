; ModuleID = '../benchmarks/fine_grained/exebench/kernel372.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel372.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @expand_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = load i64, ptr %1, align 8, !tbaa !5
  %9 = load i64, ptr %3, align 8, !tbaa !5
  %10 = load i64, ptr %4, align 8, !tbaa !5
  %11 = add nsw i64 %10, %8
  %12 = icmp sgt i64 %5, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = tail call i64 @llvm.smin.i64(i64 %8, i64 %5)
  %15 = tail call i64 @llvm.smin.i64(i64 %9, i64 %14)
  %16 = sub nsw i64 %8, %15
  %17 = sub nsw i64 %9, %15
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i64 [ %17, %13 ], [ %9, %7 ]
  %20 = phi i64 [ %16, %13 ], [ %8, %7 ]
  %21 = icmp sgt i64 %6, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i64, ptr %0, align 8, !tbaa !9
  %24 = sub nsw i64 %23, %11
  %25 = load i64, ptr %2, align 8, !tbaa !9
  %26 = add i64 %10, %9
  %27 = sub i64 %25, %26
  %28 = tail call i64 @llvm.smin.i64(i64 %24, i64 %6)
  %29 = tail call i64 @llvm.smin.i64(i64 %27, i64 %28)
  %30 = add nsw i64 %29, %11
  br label %31

31:                                               ; preds = %22, %18
  %32 = phi i64 [ %30, %22 ], [ %11, %18 ]
  store i64 %20, ptr %1, align 8, !tbaa !5
  store i64 %19, ptr %3, align 8, !tbaa !5
  %33 = sub nsw i64 %32, %20
  store i64 %33, ptr %4, align 8, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_4__", !6, i64 0}
