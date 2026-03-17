; ModuleID = '../benchmarks/fine_grained/exebench/kernel435.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel435.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@package_read_index = dso_local local_unnamed_addr global i64 0, align 8
@nextFrameRead = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Can_Read_First_Frame(ptr nocapture readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store i64 0, ptr @nextFrameRead, align 8, !tbaa !5
  %3 = getelementptr inbounds i32, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !9
  store i32 %4, ptr %1, align 4, !tbaa !9
  %5 = getelementptr inbounds i32, ptr %0, i64 5
  %6 = load i32, ptr %5, align 4, !tbaa !9
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %6, ptr %7, align 4, !tbaa !9
  %8 = getelementptr inbounds i32, ptr %0, i64 6
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = getelementptr inbounds i32, ptr %1, i64 2
  store i32 %9, ptr %10, align 4, !tbaa !9
  %11 = getelementptr inbounds i32, ptr %0, i64 7
  %12 = load i32, ptr %11, align 4, !tbaa !9
  %13 = getelementptr inbounds i32, ptr %1, i64 3
  store i32 %12, ptr %13, align 4, !tbaa !9
  store i64 4, ptr @package_read_index, align 8, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
