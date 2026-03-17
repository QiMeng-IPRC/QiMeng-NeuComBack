; ModuleID = '../benchmarks/fine_grained/exebench/kernel1168.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@pll_clock = dso_local local_unnamed_addr global ptr null, align 8
@dmac = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @dmac_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pll_clock, align 8, !tbaa !5
  %2 = load <2 x i32>, ptr %1, align 4, !tbaa !9
  %3 = or <2 x i32> %2, <i32 268435456, i32 1048576>
  store <2 x i32> %3, ptr %1, align 4, !tbaa !9
  %4 = load ptr, ptr @dmac, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 -1, i64 24, i1 false)
  store i32 1, ptr %5, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 0, i32 7
  store i32 33280, ptr %6, align 4, !tbaa !13
  ret void
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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 24}
!12 = !{!"TYPE_4__", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28}
!13 = !{!12, !10, i64 28}
