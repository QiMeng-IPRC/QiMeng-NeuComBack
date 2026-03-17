; ModuleID = '../benchmarks/fine_grained/exebench/kernel765.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel765.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = dso_local local_unnamed_addr global ptr null, align 8
@gs_id = dso_local local_unnamed_addr global i64 0, align 8
@gs_is_event = dso_local local_unnamed_addr global i64 0, align 8
@MAX_GROUPS = dso_local local_unnamed_addr global i32 0, align 4
@Gc = dso_local local_unnamed_addr global i32 0, align 4
@GT = dso_local local_unnamed_addr global ptr null, align 8
@adj_rec = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @process_groups_short_row() local_unnamed_addr #0 {
  %1 = load ptr, ptr @I, align 8, !tbaa !5
  %2 = load i64, ptr @gs_id, align 8, !tbaa !9
  %3 = getelementptr inbounds i32, ptr %1, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = load i64, ptr @gs_is_event, align 8, !tbaa !9
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = icmp sgt i32 %4, 0
  %9 = load i32, ptr @MAX_GROUPS, align 4
  %10 = icmp slt i32 %4, %9
  %11 = select i1 %8, i1 %10, i1 false
  %12 = icmp ult i32 %7, 2
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %26

14:                                               ; preds = %0
  %15 = load i32, ptr @Gc, align 4, !tbaa !11
  %16 = icmp sgt i32 %15, %4
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %4, 1
  store i32 %18, ptr @Gc, align 4, !tbaa !11
  br label %19

19:                                               ; preds = %17, %14
  %20 = add nuw nsw i32 %7, 2
  %21 = load ptr, ptr @GT, align 8, !tbaa !5
  %22 = zext i32 %4 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  store i32 %20, ptr %23, align 4, !tbaa !11
  %24 = load i32, ptr @adj_rec, align 4, !tbaa !11
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @adj_rec, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %0, %19
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
