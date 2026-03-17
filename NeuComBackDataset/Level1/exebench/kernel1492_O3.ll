; ModuleID = '../benchmarks/fine_grained/exebench/kernel1492.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8 }

@SCH_tasks = dso_local local_unnamed_addr global ptr null, align 8
@Error_code = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local signext i8 @SCH_Delete_Task(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @SCH_tasks, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.TYPE_2__, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 2, ptr @Error_code, align 4, !tbaa !12
  br label %8

8:                                                ; preds = %1, %7
  %9 = phi i8 [ -1, %7 ], [ 0, %1 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %4, i8 0, i64 13, i1 false)
  ret i8 %9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!"TYPE_2__", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 12}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
