; ModuleID = '../benchmarks/fine_grained/exebench/kernel1341.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1341.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @set_trigger_tags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %2) #4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %2, i8 0, i64 4000, i1 false), !tbaa !5
  %5 = load i64, ptr %0, align 8, !tbaa !9
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %4, %7
  %8 = phi i64 [ %19, %7 ], [ 0, %4 ]
  %9 = phi i32 [ %16, %7 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 %8, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !5
  %15 = icmp sgt i32 %13, 5
  %16 = select i1 %15, i32 1, i32 %9
  %17 = tail call i32 @llvm.smin.i32(i32 %14, i32 7)
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 %8, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !13
  %19 = add nuw nsw i64 %8, 1
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !9
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %7, label %23, !llvm.loop !14

23:                                               ; preds = %7, %4, %1
  %24 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %16, %7 ]
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %2) #4
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_3__", !11, i64 0, !11, i64 8, !6, i64 16}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!10, !6, i64 16}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
