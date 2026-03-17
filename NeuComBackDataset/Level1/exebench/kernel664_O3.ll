; ModuleID = '../benchmarks/fine_grained/exebench/kernel664.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel664.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@scriptPtr = dso_local local_unnamed_addr global ptr null, align 8
@currentScriptValue = dso_local local_unnamed_addr global i64 0, align 8
@sceneTracks = dso_local local_unnamed_addr global ptr null, align 8
@destX = dso_local local_unnamed_addr global i32 0, align 4
@destY = dso_local local_unnamed_addr global i32 0, align 4
@destZ = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @mPOS_POINT(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !5
  %6 = load ptr, ptr @scriptPtr, align 8, !tbaa !12
  %7 = load i64, ptr %6, align 8, !tbaa !14
  store i64 %7, ptr @currentScriptValue, align 8, !tbaa !14
  %8 = load ptr, ptr @sceneTracks, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.TYPE_7__, ptr %8, i64 %7, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !15
  store i32 %10, ptr @destX, align 4, !tbaa !17
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %8, i64 %7, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !18
  store i32 %12, ptr @destY, align 4, !tbaa !17
  %13 = getelementptr inbounds %struct.TYPE_7__, ptr %8, i64 %7
  %14 = load i32, ptr %13, align 4, !tbaa !19
  store i32 %14, ptr @destZ, align 4, !tbaa !17
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !20
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 3
  store i64 0, ptr %19, align 8, !tbaa !21
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 2
  store i32 %10, ptr %21, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i64 0, i32 1
  store i32 %12, ptr %22, align 4, !tbaa !23
  store i32 %14, ptr %1, align 8, !tbaa !24
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 32}
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !11, i64 24, !7, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"TYPE_5__", !10, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !7, i64 8}
!16 = !{!"TYPE_7__", !7, i64 0, !7, i64 4, !7, i64 8}
!17 = !{!7, !7, i64 0}
!18 = !{!16, !7, i64 4}
!19 = !{!16, !7, i64 0}
!20 = !{!6, !10, i64 24}
!21 = !{!6, !10, i64 16}
!22 = !{!6, !7, i64 8}
!23 = !{!6, !7, i64 4}
!24 = !{!6, !7, i64 0}
