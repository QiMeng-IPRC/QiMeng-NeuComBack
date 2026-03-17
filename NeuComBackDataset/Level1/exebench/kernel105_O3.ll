; ModuleID = '../benchmarks/fine_grained/exebench/kernel105.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel105.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@table = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @process(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !11
  %7 = load ptr, ptr @table, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !15
  %12 = mul nsw i32 %11, %6
  store i32 %12, ptr %10, align 4, !tbaa !15
  br label %22

13:                                               ; preds = %1
  %14 = load ptr, ptr @table, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !15
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !11
  %21 = mul nsw i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %13, %4
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !10, i64 8, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 16}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!6, !10, i64 8}
!15 = !{!7, !7, i64 0}
