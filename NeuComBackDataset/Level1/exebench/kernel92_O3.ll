; ModuleID = '../benchmarks/fine_grained/exebench/kernel92.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel92.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, i64 }

@ptable = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @print_table_clean() local_unnamed_addr #0 {
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 2), align 8, !tbaa !5
  %1 = load ptr, ptr @ptable, align 8, !tbaa !11
  store i8 115, ptr %1, align 1, !tbaa !12
  %2 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  store i64 0, ptr %2, align 8, !tbaa !14
  %3 = load ptr, ptr @ptable, align 8, !tbaa !11
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 115, ptr %4, align 1, !tbaa !12
  %5 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %6 = getelementptr inbounds i64, ptr %5, i64 1
  store i64 0, ptr %6, align 8, !tbaa !14
  %7 = load ptr, ptr @ptable, align 8, !tbaa !11
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 115, ptr %8, align 1, !tbaa !12
  %9 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %10 = getelementptr inbounds i64, ptr %9, i64 2
  store i64 0, ptr %10, align 8, !tbaa !14
  %11 = load ptr, ptr @ptable, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, ptr %11, i64 3
  store i8 115, ptr %12, align 1, !tbaa !12
  %13 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %14 = getelementptr inbounds i64, ptr %13, i64 3
  store i64 0, ptr %14, align 8, !tbaa !14
  %15 = load ptr, ptr @ptable, align 8, !tbaa !11
  %16 = getelementptr inbounds i8, ptr %15, i64 4
  store i8 115, ptr %16, align 1, !tbaa !12
  %17 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %18 = getelementptr inbounds i64, ptr %17, i64 4
  store i64 0, ptr %18, align 8, !tbaa !14
  %19 = load ptr, ptr @ptable, align 8, !tbaa !11
  %20 = getelementptr inbounds i8, ptr %19, i64 5
  store i8 115, ptr %20, align 1, !tbaa !12
  %21 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %22 = getelementptr inbounds i64, ptr %21, i64 5
  store i64 0, ptr %22, align 8, !tbaa !14
  %23 = load ptr, ptr @ptable, align 8, !tbaa !11
  %24 = getelementptr inbounds i8, ptr %23, i64 6
  store i8 115, ptr %24, align 1, !tbaa !12
  %25 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %26 = getelementptr inbounds i64, ptr %25, i64 6
  store i64 0, ptr %26, align 8, !tbaa !14
  %27 = load ptr, ptr @ptable, align 8, !tbaa !11
  %28 = getelementptr inbounds i8, ptr %27, i64 7
  store i8 115, ptr %28, align 1, !tbaa !12
  %29 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %30 = getelementptr inbounds i64, ptr %29, i64 7
  store i64 0, ptr %30, align 8, !tbaa !14
  %31 = load ptr, ptr @ptable, align 8, !tbaa !11
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  store i8 115, ptr %32, align 1, !tbaa !12
  %33 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %34 = getelementptr inbounds i64, ptr %33, i64 8
  store i64 0, ptr %34, align 8, !tbaa !14
  %35 = getelementptr inbounds i8, ptr %31, i64 9
  store i8 115, ptr %35, align 1, !tbaa !12
  %36 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ptable, i64 0, i32 1), align 8, !tbaa !13
  %37 = getelementptr inbounds i64, ptr %36, i64 9
  store i64 0, ptr %37, align 8, !tbaa !14
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
!5 = !{!6, !10, i64 16}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!10, !10, i64 0}
