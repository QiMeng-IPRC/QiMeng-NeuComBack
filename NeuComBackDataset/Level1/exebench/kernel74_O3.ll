; ModuleID = '../benchmarks/fine_grained/exebench/kernel74.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel74.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HwVIPET = dso_local local_unnamed_addr global ptr null, align 8
@RET_VIQE_EN_DI_DNSP = dso_local local_unnamed_addr global i32 0, align 4
@RET_VIQE_EN_ERRREG = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @viqe_set_modes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = or i32 %4, %2
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @HwVIPET, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.TYPE_9__, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = and i32 %9, -398449
  %11 = select i1 %6, i32 0, i32 64
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.TYPE_9__, ptr %7, i64 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 32
  %18 = or i32 %17, %12
  %19 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 16
  %23 = icmp eq i32 %4, 0
  %24 = select i1 %23, i32 0, i32 1024
  %25 = or i32 %22, %24
  %26 = or i32 %25, %18
  %27 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !20
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i32 0, i32 4096
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 6
  %33 = load i64, ptr %32, align 8, !tbaa !21
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %34, i32 0, i32 262144
  %36 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 5
  %37 = load i64, ptr %36, align 8, !tbaa !22
  %38 = icmp eq i64 %37, 0
  %39 = or i32 %31, %35
  %40 = select i1 %38, i32 0, i32 131072
  %41 = or i32 %39, %40
  store i32 %41, ptr %13, align 4, !tbaa !14
  %42 = icmp ne i64 %28, 0
  %43 = and i32 %20, 1
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %44, %42
  %46 = or i1 %6, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %1
  %48 = load i32, ptr @RET_VIQE_EN_DI_DNSP, align 4, !tbaa !23
  br label %89

49:                                               ; preds = %1
  %50 = and i32 %15, %2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = and i32 %41, -769
  %54 = or i32 %53, 512
  br label %68

55:                                               ; preds = %49
  %56 = and i32 %15, %4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = and i32 %41, -769
  %60 = or i32 %59, 512
  br label %68

61:                                               ; preds = %55
  br i1 %16, label %64, label %62

62:                                               ; preds = %61
  %63 = and i32 %41, -769
  br label %68

64:                                               ; preds = %61
  br i1 %6, label %68, label %65

65:                                               ; preds = %64
  %66 = and i32 %41, -769
  %67 = or i32 %66, 256
  br label %68

68:                                               ; preds = %58, %64, %65, %62, %52
  %69 = phi i32 [ %60, %58 ], [ %41, %64 ], [ %67, %65 ], [ %63, %62 ], [ %54, %52 ]
  %70 = zext i1 %29 to i32
  %71 = and i32 %20, %70
  %72 = and i32 %71, %4
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %69, -73872
  %75 = select i1 %73, i32 0, i32 8192
  %76 = or i32 %74, %75
  %77 = or i32 %71, %15
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 4
  %80 = or i32 %76, %79
  %81 = select i1 %16, i32 0, i32 136
  %82 = or i32 %80, %81
  %83 = or i32 %82, 65539
  store i32 %83, ptr %13, align 4, !tbaa !14
  %84 = load i32, ptr %7, align 4, !tbaa !24
  %85 = and i32 %84, 61440
  %86 = icmp eq i32 %85, 0
  %87 = load i32, ptr @RET_VIQE_EN_ERRREG, align 4
  %88 = select i1 %86, i32 1, i32 %87
  br label %89

89:                                               ; preds = %68, %47
  %90 = phi i32 [ %48, %47 ], [ %88, %68 ]
  ret i32 %90
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_8__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !10, i64 24, !10, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !7, i64 4}
!15 = !{!"TYPE_9__", !16, i64 0, !17, i64 4}
!16 = !{!"TYPE_7__", !7, i64 0}
!17 = !{!"TYPE_6__", !7, i64 0}
!18 = !{!6, !7, i64 8}
!19 = !{!6, !7, i64 12}
!20 = !{!6, !10, i64 16}
!21 = !{!6, !10, i64 32}
!22 = !{!6, !10, i64 24}
!23 = !{!7, !7, i64 0}
!24 = !{!15, !7, i64 0}
