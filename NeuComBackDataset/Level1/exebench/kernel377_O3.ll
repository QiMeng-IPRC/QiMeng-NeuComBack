; ModuleID = '../benchmarks/fine_grained/exebench/kernel377.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel377.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@storetop = dso_local local_unnamed_addr global i32 0, align 4
@tset_store = dso_local local_unnamed_addr global ptr null, align 8
@stacktop = dso_local local_unnamed_addr global i32 0, align 4
@tset_stack = dso_local local_unnamed_addr global ptr null, align 8
@tset_card = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @tset_singleton(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @storetop, align 4, !tbaa !5
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @storetop, align 4, !tbaa !5
  %5 = load ptr, ptr @tset_store, align 8, !tbaa !9
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i64 %6
  store i32 %0, ptr %7, align 4, !tbaa !11
  %8 = load i32, ptr @storetop, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i64 %9, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !13
  %11 = load i32, ptr @stacktop, align 4, !tbaa !5
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @stacktop, align 4, !tbaa !5
  %13 = load i32, ptr @storetop, align 4, !tbaa !5
  %14 = load ptr, ptr @tset_stack, align 8, !tbaa !9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  store i32 %13, ptr %16, align 4, !tbaa !5
  %17 = load ptr, ptr @tset_card, align 8, !tbaa !9
  %18 = load i32, ptr @stacktop, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  store i32 1, ptr %20, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!12, !6, i64 0}
!12 = !{!"TYPE_2__", !6, i64 0, !6, i64 4}
!13 = !{!12, !6, i64 4}
