; ModuleID = '../benchmarks/fine_grained/exebench/kernel616.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel616.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gx_render_plane_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !5
  %5 = icmp sgt i32 %2, -1
  %6 = icmp sgt i32 %4, %2
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = sdiv i32 %10, %4
  store i32 %2, ptr %0, align 4, !tbaa !12
  %12 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !14
  %13 = xor i32 %2, -1
  %14 = add i32 %4, %13
  %15 = mul nsw i32 %11, %14
  %16 = getelementptr inbounds %struct.TYPE_7__, ptr %0, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !15
  br label %17

17:                                               ; preds = %3, %8
  %18 = phi i32 [ 0, %8 ], [ -15, %3 ]
  ret i32 %18
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 0}
!6 = !{!"TYPE_8__", !7, i64 0}
!7 = !{!"TYPE_6__", !8, i64 0, !8, i64 4}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 4}
!12 = !{!13, !8, i64 0}
!13 = !{!"TYPE_7__", !8, i64 0, !8, i64 4, !8, i64 8}
!14 = !{!13, !8, i64 4}
!15 = !{!13, !8, i64 8}
