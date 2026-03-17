; ModuleID = '../benchmarks/fine_grained/exebench/kernel1129.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1129.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs = dso_local local_unnamed_addr global ptr null, align 8
@IR = dso_local local_unnamed_addr global i64 0, align 8
@AF = dso_local local_unnamed_addr global i64 0, align 8
@EF = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cmp() local_unnamed_addr #0 {
  %1 = load ptr, ptr @regs, align 8, !tbaa !5
  %2 = load i64, ptr @IR, align 8, !tbaa !9
  %3 = getelementptr inbounds i32, ptr %1, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = lshr i32 %4, 2
  %6 = and i32 %5, 3
  %7 = add nuw nsw i32 %6, 7
  %8 = and i32 %4, 3
  %9 = add nuw nsw i32 %8, 7
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = zext i32 %9 to i64
  %14 = getelementptr inbounds i32, ptr %1, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = icmp sgt i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, ptr @AF, align 8, !tbaa !9
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !11
  %20 = load i32, ptr %11, align 4, !tbaa !11
  %21 = load i32, ptr %14, align 4, !tbaa !11
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, ptr @EF, align 8, !tbaa !9
  %25 = getelementptr inbounds i32, ptr %1, i64 %24
  store i32 %23, ptr %25, align 4, !tbaa !11
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
