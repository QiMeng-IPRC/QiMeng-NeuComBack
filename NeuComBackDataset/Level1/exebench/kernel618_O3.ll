; ModuleID = '../benchmarks/fine_grained/exebench/kernel618.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @createRectBox(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = tail call i32 @llvm.smax.i32(i32 %3, i32 %7)
  %9 = tail call i32 @llvm.smin.i32(i32 %3, i32 %7)
  %10 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = icmp sgt i32 %9, %11
  %13 = tail call i32 @llvm.smax.i32(i32 %8, i32 %11)
  %14 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11)
  %15 = select i1 %12, i32 %8, i32 %13
  %16 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = tail call i32 @llvm.smax.i32(i32 %5, i32 %17)
  %19 = tail call i32 @llvm.smin.i32(i32 %5, i32 %17)
  %20 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !18
  %22 = icmp sgt i32 %19, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %18, i32 %21)
  %24 = tail call i32 @llvm.smin.i32(i32 %19, i32 %21)
  %25 = select i1 %22, i32 %18, i32 %23
  store i32 %14, ptr %0, align 4, !tbaa !19
  %26 = getelementptr inbounds %struct.TYPE_10__, ptr %0, i64 0, i32 1
  store i32 %24, ptr %26, align 4, !tbaa !20
  %27 = getelementptr inbounds %struct.TYPE_10__, ptr %0, i64 0, i32 2
  store i32 %15, ptr %27, align 4, !tbaa !21
  %28 = getelementptr inbounds %struct.TYPE_10__, ptr %0, i64 0, i32 3
  store i32 %25, ptr %28, align 4, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 32}
!6 = !{!"TYPE_11__", !7, i64 0, !11, i64 16, !12, i64 24, !13, i64 32}
!7 = !{!"TYPE_10__", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"TYPE_9__", !8, i64 0, !8, i64 4}
!12 = !{!"TYPE_8__", !8, i64 0, !8, i64 4}
!13 = !{!"TYPE_7__", !8, i64 0, !8, i64 4}
!14 = !{!6, !8, i64 36}
!15 = !{!6, !8, i64 24}
!16 = !{!6, !8, i64 16}
!17 = !{!6, !8, i64 28}
!18 = !{!6, !8, i64 20}
!19 = !{!6, !8, i64 0}
!20 = !{!6, !8, i64 4}
!21 = !{!6, !8, i64 8}
!22 = !{!6, !8, i64 12}
