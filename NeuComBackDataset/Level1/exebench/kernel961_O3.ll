; ModuleID = '../benchmarks/fine_grained/exebench/kernel961.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel961.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@DpUserIdTable = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @dp_get_cref_syntax(i32 noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %3, i64 0, i32 1
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = icmp ugt i32 %0, 126
  %11 = icmp ne i32 %0, 255
  %12 = and i1 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %2, 32
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @DpUserIdTable, align 8, !tbaa !5
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %15, %9, %6
  %22 = phi i32 [ 131089, %6 ], [ 131078, %9 ], [ 131074, %15 ], [ 131074, %13 ]
  store i32 4, ptr %3, align 8, !tbaa !12
  store i32 %22, ptr %7, align 4, !tbaa !15
  br label %23

23:                                               ; preds = %21, %15, %4
  %24 = phi i32 [ 4, %4 ], [ 0, %15 ], [ 4, %21 ]
  ret i32 %24
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!10 = !{!"TYPE_5__", !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"TYPE_4__", !11, i64 0, !11, i64 4, !14, i64 8, !14, i64 16, !14, i64 24}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !11, i64 4}
