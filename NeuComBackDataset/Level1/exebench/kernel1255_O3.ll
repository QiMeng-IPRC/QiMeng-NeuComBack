; ModuleID = '../benchmarks/fine_grained/exebench/kernel1255.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @update_minmax(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  store i32 %1, ptr %0, align 4, !tbaa !9
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 %1, ptr %7, align 4, !tbaa !11
  %8 = load i32, ptr %2, align 4, !tbaa !5
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 4, !tbaa !5
  br label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %1)
  store i32 %13, ptr %11, align 4, !tbaa !11
  %14 = load i32, ptr %0, align 4, !tbaa !9
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %1)
  store i32 %15, ptr %0, align 4, !tbaa !9
  br label %16

16:                                               ; preds = %10, %6
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"TYPE_3__", !6, i64 0, !6, i64 4}
!11 = !{!10, !6, i64 4}
