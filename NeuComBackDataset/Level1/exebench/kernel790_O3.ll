; ModuleID = '../benchmarks/fine_grained/exebench/kernel790.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel790.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { ptr }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@g = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @formatVfs() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g, align 8, !tbaa !5
  store i32 -1, ptr %1, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 0, i32 1
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 1, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 -1, ptr %5, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 2, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 -1, ptr %7, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 3, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 -1, ptr %9, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 4, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i32 -1, ptr %11, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 5, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store i32 -1, ptr %13, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 6, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store i32 -1, ptr %15, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 7, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store i32 -1, ptr %17, align 8, !tbaa !10
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 8, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store i32 -1, ptr %19, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i64 9, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"TYPE_3__", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
