; ModuleID = '../benchmarks/fine_grained/exebench/kernel946.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel946.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_bittiming_const = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @can_update_spt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = add nsw i32 %2, 1
  %7 = mul nsw i32 %6, %1
  %8 = sdiv i32 %7, -1000
  %9 = add i32 %8, %6
  store i32 %9, ptr %4, align 4, !tbaa !5
  %10 = load i32, ptr %0, align 4, !tbaa !9
  %11 = tail call i32 @llvm.smax.i32(i32 %9, i32 %10)
  store i32 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.can_bittiming_const, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %13)
  store i32 %14, ptr %4, align 4
  %15 = sub nsw i32 %2, %14
  store i32 %15, ptr %3, align 4, !tbaa !5
  %16 = getelementptr inbounds %struct.can_bittiming_const, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !12
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, ptr %4, align 4, !tbaa !5
  br label %23

21:                                               ; preds = %5
  store i32 %17, ptr %3, align 4, !tbaa !5
  %22 = sub nsw i32 %2, %17
  store i32 %22, ptr %4, align 4, !tbaa !5
  br label %23

23:                                               ; preds = %19, %21
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = sub nsw i32 %6, %24
  %26 = mul nsw i32 %25, 1000
  %27 = sdiv i32 %26, %6
  ret i32 %27
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"can_bittiming_const", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!10, !6, i64 4}
!12 = !{!10, !6, i64 8}
