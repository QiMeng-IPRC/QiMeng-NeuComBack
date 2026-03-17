; ModuleID = '../benchmarks/fine_grained/exebench/kernel968.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel968.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i64, i32, i64, i64 }

@z80_state = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@uint8_even_parity = dso_local local_unnamed_addr global ptr null, align 8
@used_cycles = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @z80_b4_or_a_h() local_unnamed_addr #0 {
  %1 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 1), align 8, !tbaa !5
  %2 = load i64, ptr @z80_state, align 8, !tbaa !11
  %3 = or i64 %2, %1
  store i64 %3, ptr @z80_state, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 6), i8 0, i64 16, i1 false)
  %4 = load ptr, ptr @uint8_even_parity, align 8, !tbaa !12
  %5 = getelementptr inbounds i32, ptr %4, i64 %3
  %6 = load i32, ptr %5, align 4, !tbaa !14
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 5), align 8, !tbaa !15
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 4), align 8, !tbaa !16
  %7 = icmp eq i64 %3, 0
  %8 = zext i1 %7 to i32
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 2), align 8, !tbaa !17
  %9 = lshr i64 %3, 7
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 3), align 4, !tbaa !18
  %11 = load i32, ptr @used_cycles, align 4, !tbaa !14
  %12 = add nsw i32 %11, 4
  store i32 %12, ptr @used_cycles, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 8}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !7, i64 24, !10, i64 32, !7, i64 40, !7, i64 48}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!6, !10, i64 32}
!16 = !{!6, !7, i64 24}
!17 = !{!6, !10, i64 16}
!18 = !{!6, !10, i64 20}
