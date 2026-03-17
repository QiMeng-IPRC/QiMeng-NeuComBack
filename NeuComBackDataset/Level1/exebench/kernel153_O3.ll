; ModuleID = '../benchmarks/fine_grained/exebench/kernel153.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel153.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NA_IP = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SockadrToNetadr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @NA_IP, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  store i32 %3, ptr %4, align 4, !tbaa !9
  %5 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !5
  %8 = load i32, ptr %0, align 4, !tbaa !14
  store i32 %8, ptr %1, align 4, !tbaa !15
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"TYPE_5__", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!12, !6, i64 4}
!12 = !{!"sockaddr_in", !6, i64 0, !13, i64 4}
!13 = !{!"TYPE_4__", !6, i64 0}
!14 = !{!12, !6, i64 0}
!15 = !{!10, !6, i64 0}
