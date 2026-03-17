; ModuleID = '../benchmarks/fine_grained/exebench/kernel518.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel518.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double, double, double, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@STATE_Tieline_reset = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define dso_local i32 @Tieline_preinit(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e-01, double 0x3FB219652BD3C361>, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 2
  store double 3.141590e+00, ptr %3, align 8, !tbaa !9
  %4 = load i32, ptr @STATE_Tieline_reset, align 4, !tbaa !17
  %5 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 4
  store i32 %4, ptr %5, align 4, !tbaa !18
  %6 = getelementptr inbounds %struct.TYPE_11__, ptr %0, i64 0, i32 3
  store i32 1, ptr %6, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"TYPE_11__", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !12, i64 32, !15, i64 40}
!11 = !{!"int", !7, i64 0}
!12 = !{!"TYPE_9__", !13, i64 0}
!13 = !{!"TYPE_10__", !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"TYPE_8__", !16, i64 0}
!16 = !{!"TYPE_7__", !14, i64 0, !14, i64 8}
!17 = !{!11, !11, i64 0}
!18 = !{!10, !11, i64 28}
!19 = !{!10, !11, i64 24}
