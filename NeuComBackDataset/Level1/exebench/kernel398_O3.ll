; ModuleID = '../benchmarks/fine_grained/exebench/kernel398.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel398.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@diagram = dso_local local_unnamed_addr global ptr null, align 8
@temp = dso_local local_unnamed_addr global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sort_letter_diagram() local_unnamed_addr #0 {
  %1 = load ptr, ptr @diagram, align 8, !tbaa !5
  br label %2

2:                                                ; preds = %0, %28
  %3 = phi i32 [ 0, %0 ], [ %29, %28 ]
  br label %4

4:                                                ; preds = %2, %26
  %5 = phi i64 [ 0, %2 ], [ %8, %26 ]
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !9
  %8 = add nuw nsw i64 %5, 1
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !9
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @temp, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) @temp, i64 16, i1 false), !tbaa.struct !12
  %13 = load i64, ptr %6, align 8, !tbaa !9
  %14 = load i64, ptr %9, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i64 [ %14, %12 ], [ %10, %4 ]
  %17 = phi i64 [ %13, %12 ], [ %7, %4 ]
  %18 = icmp eq i64 %17, %16
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %5, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 %8, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !14
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @temp, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) @temp, i64 16, i1 false), !tbaa.struct !12
  br label %26

26:                                               ; preds = %15, %25, %19
  %27 = icmp eq i64 %8, 26
  br i1 %27, label %28, label %4, !llvm.loop !15

28:                                               ; preds = %26
  %29 = add nuw nsw i32 %3, 1
  %30 = icmp eq i32 %29, 26
  br i1 %30, label %31, label %2, !llvm.loop !17

31:                                               ; preds = %28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_3__", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{i64 0, i64 8, !13, i64 8, i64 8, !13}
!13 = !{!11, !11, i64 0}
!14 = !{!10, !11, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
