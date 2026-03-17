; ModuleID = '../benchmarks/fine_grained/exebench/kernel1546.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1546.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { ptr }

@in6addr_v4mapped_init = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IN6_SET_ADDR_V4MAPPED(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr @in6addr_v4mapped_init, align 8, !tbaa !5
  store i64 %3, ptr %0, align 8, !tbaa !5
  %4 = load i32, ptr %1, align 4, !tbaa !9
  %5 = inttoptr i64 %3 to ptr
  %6 = getelementptr inbounds i32, ptr %5, i64 3
  store i32 %4, ptr %6, align 4, !tbaa !12
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"TYPE_6__", !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!11, !11, i64 0}
