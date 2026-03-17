; ModuleID = '../benchmarks/fine_grained/exebench/kernel673.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@red_team_score = dso_local local_unnamed_addr global i32 0, align 4
@DAMAGE_YES = dso_local local_unnamed_addr global i32 0, align 4
@DAMAGE_NO = dso_local local_unnamed_addr global i32 0, align 4
@level = dso_local local_unnamed_addr global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @redspidernode_think(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @red_team_score, align 4, !tbaa !5
  %3 = icmp slt i32 %2, 2
  %4 = load i32, ptr @DAMAGE_YES, align 4
  %5 = load i32, ptr @DAMAGE_NO, align 4
  %6 = select i1 %3, i32 %4, i32 %5
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !9
  %10 = add nsw i32 %9, 1
  %11 = srem i32 %10, 13
  store i32 %11, ptr %8, align 8, !tbaa !9
  %12 = load i64, ptr @level, align 8, !tbaa !13
  %13 = sitofp i64 %12 to double
  %14 = fadd double %13, 1.000000e-01
  %15 = fptosi double %14 to i64
  store i64 %15, ptr %0, align 8, !tbaa !15
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
!10 = !{!"TYPE_6__", !11, i64 0, !12, i64 8, !6, i64 12}
!11 = !{!"long", !7, i64 0}
!12 = !{!"TYPE_5__", !6, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"TYPE_7__", !11, i64 0}
!15 = !{!10, !11, i64 0}
