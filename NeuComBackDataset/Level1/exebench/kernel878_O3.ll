; ModuleID = '../benchmarks/fine_grained/exebench/kernel878.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel878.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@csp = dso_local local_unnamed_addr global i32 0, align 4
@clip_x1 = dso_local local_unnamed_addr global i64 0, align 8
@cstack_x1 = dso_local local_unnamed_addr global ptr null, align 8
@clip_y1 = dso_local local_unnamed_addr global i64 0, align 8
@cstack_y1 = dso_local local_unnamed_addr global ptr null, align 8
@clip_x2 = dso_local local_unnamed_addr global i64 0, align 8
@cstack_x2 = dso_local local_unnamed_addr global ptr null, align 8
@clip_y2 = dso_local local_unnamed_addr global i64 0, align 8
@cstack_y2 = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @clip_push(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @csp, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, 62
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %5, 1
  store i32 %8, ptr @csp, align 4, !tbaa !5
  %9 = load i64, ptr @clip_x1, align 8
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 %0)
  %11 = load ptr, ptr @cstack_x1, align 8, !tbaa !9
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds i64, ptr %11, i64 %12
  store i64 %10, ptr %13, align 8, !tbaa !11
  store i64 %10, ptr @clip_x1, align 8, !tbaa !11
  %14 = load i64, ptr @clip_y1, align 8
  %15 = tail call i64 @llvm.smax.i64(i64 %14, i64 %1)
  %16 = load ptr, ptr @cstack_y1, align 8, !tbaa !9
  %17 = getelementptr inbounds i64, ptr %16, i64 %12
  store i64 %15, ptr %17, align 8, !tbaa !11
  store i64 %15, ptr @clip_y1, align 8, !tbaa !11
  %18 = load i64, ptr @clip_x2, align 8
  %19 = tail call i64 @llvm.smin.i64(i64 %18, i64 %2)
  %20 = load ptr, ptr @cstack_x2, align 8, !tbaa !9
  %21 = getelementptr inbounds i64, ptr %20, i64 %12
  store i64 %19, ptr %21, align 8, !tbaa !11
  store i64 %19, ptr @clip_x2, align 8, !tbaa !11
  %22 = load i64, ptr @clip_y2, align 8
  %23 = tail call i64 @llvm.smin.i64(i64 %22, i64 %3)
  %24 = load ptr, ptr @cstack_y2, align 8, !tbaa !9
  %25 = getelementptr inbounds i64, ptr %24, i64 %12
  store i64 %23, ptr %25, align 8, !tbaa !11
  store i64 %23, ptr @clip_y2, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
