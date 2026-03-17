; ModuleID = '../benchmarks/fine_grained/exebench/kernel668.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel668.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local i32 @dps_calc_io_data_len_syntax(i32 noundef %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr noundef readnone %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %5
  store i32 0, ptr %4, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %4, i64 0, i32 2
  %9 = icmp sgt i32 %0, 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = icmp eq ptr %2, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp eq ptr %3, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %14, %12, %10, %7
  %17 = phi i32 [ 196620, %7 ], [ 196621, %10 ], [ 196622, %12 ], [ 196623, %14 ]
  store i32 4, ptr %4, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %4, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !11
  br label %19

19:                                               ; preds = %16, %14, %5
  %20 = phi i32 [ 4, %5 ], [ 0, %14 ], [ 4, %16 ]
  ret i32 %20
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 4}
