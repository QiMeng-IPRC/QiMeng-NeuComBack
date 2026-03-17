; ModuleID = '../benchmarks/fine_grained/exebench/kernel660.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel660.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_storeTypeInfo(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 5, ptr %6, align 4, !tbaa !10
  br label %23

7:                                                ; preds = %1
  %8 = and i32 %2, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 1, ptr %11, align 4, !tbaa !10
  br label %23

12:                                               ; preds = %7
  %13 = and i32 %2, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  store i32 2, ptr %16, align 4, !tbaa !10
  br label %23

17:                                               ; preds = %12
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  br i1 %19, label %22, label %21

21:                                               ; preds = %17
  store i32 3, ptr %20, align 4, !tbaa !10
  br label %23

22:                                               ; preds = %17
  store i32 4, ptr %20, align 4, !tbaa !10
  br label %23

23:                                               ; preds = %10, %21, %22, %15, %5
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
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
