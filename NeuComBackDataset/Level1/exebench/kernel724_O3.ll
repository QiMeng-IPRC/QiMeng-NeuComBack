; ModuleID = '../benchmarks/fine_grained/exebench/kernel724.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel724.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z26_state = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @H_VSYNC(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !12
  %13 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %10, align 4, !tbaa !11
  store i32 1, ptr %13, align 4, !tbaa !13
  %16 = icmp sgt i32 %14, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !14
  br label %21

21:                                               ; preds = %9, %17, %1
  %22 = getelementptr inbounds %struct.z26_state, ptr %0, i64 0, i32 1
  store i32 %3, ptr %22, align 4, !tbaa !10
  br label %23

23:                                               ; preds = %5, %21
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"z26_state", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 12}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !7, i64 16}
!14 = !{!6, !7, i64 20}
