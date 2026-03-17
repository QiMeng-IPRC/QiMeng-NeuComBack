; ModuleID = '../benchmarks/fine_grained/exebench/kernel783.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel783.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@Cs2Area = dso_local local_unnamed_addr global ptr null, align 8
@CDB_HIRQ_CMOK = dso_local local_unnamed_addr global i32 0, align 4
@CDB_HIRQ_EFLS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Cs2GetFileSystemScope() local_unnamed_addr #0 {
  %1 = load ptr, ptr @Cs2Area, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 8, !tbaa !9
  %3 = shl i32 %2, 8
  %4 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  store i32 %3, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = add nsw i32 %6, -2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2, i32 4
  store i64 %8, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2, i32 1
  store i32 256, ptr %10, align 4, !tbaa !17
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2, i32 2
  store i32 2, ptr %11, align 8, !tbaa !18
  %12 = load i32, ptr @CDB_HIRQ_CMOK, align 4, !tbaa !19
  %13 = load i32, ptr @CDB_HIRQ_EFLS, align 4, !tbaa !19
  %14 = or i32 %13, %12
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !20
  %17 = or i32 %14, %16
  store i32 %17, ptr %15, align 4, !tbaa !20
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
!10 = !{!"TYPE_4__", !11, i64 0, !11, i64 4, !12, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!"TYPE_3__", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !13, i64 16}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !11, i64 8}
!15 = !{!10, !11, i64 4}
!16 = !{!10, !13, i64 24}
!17 = !{!10, !11, i64 12}
!18 = !{!10, !11, i64 16}
!19 = !{!11, !11, i64 0}
!20 = !{!10, !11, i64 20}
