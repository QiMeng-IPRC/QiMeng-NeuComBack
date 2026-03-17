; ModuleID = '../benchmarks/fine_grained/exebench/kernel760.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@Vdp2Regs = dso_local local_unnamed_addr global ptr null, align 8
@yabsys = dso_local local_unnamed_addr global %struct.TYPE_15__ zeroinitializer, align 4
@Vdp2Internal = dso_local local_unnamed_addr global %struct.TYPE_17__ zeroinitializer, align 8
@Vdp2External = dso_local local_unnamed_addr global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Vdp2Reset() local_unnamed_addr #0 {
  %1 = load ptr, ptr @Vdp2Regs, align 8, !tbaa !5
  store i32 0, ptr %1, align 4, !tbaa !9
  %2 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !17
  %3 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !18
  %5 = and i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !18
  %6 = getelementptr inbounds %struct.TYPE_16__, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(292) %6, i8 0, i64 292, i1 false)
  store i32 224, ptr @yabsys, align 4, !tbaa !19
  store i64 0, ptr @Vdp2Internal, align 8, !tbaa !21
  store i32 255, ptr @Vdp2External, align 4, !tbaa !24
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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_16__", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !12, i64 284, !13, i64 288, !14, i64 292, !15, i64 296, !16, i64 300}
!11 = !{!"int", !7, i64 0}
!12 = !{!"TYPE_14__", !11, i64 0}
!13 = !{!"TYPE_13__", !11, i64 0}
!14 = !{!"TYPE_12__", !11, i64 0}
!15 = !{!"TYPE_11__", !11, i64 0}
!16 = !{!"TYPE_10__", !11, i64 0}
!17 = !{!10, !11, i64 4}
!18 = !{!10, !11, i64 8}
!19 = !{!20, !11, i64 0}
!20 = !{!"TYPE_15__", !11, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"TYPE_17__", !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!25, !11, i64 0}
!25 = !{!"TYPE_18__", !11, i64 0}
