; ModuleID = '../benchmarks/fine_grained/exebench/kernel542.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { float, float, float, float, float, float }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }

@ORL_CART_POSITION = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @apply_delta_position(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @ORL_CART_POSITION, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1, i32 6
  store i32 %3, ptr %5, align 8, !tbaa !9
  %6 = load i64, ptr %4, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !17
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load float, ptr %0, align 8, !tbaa !18
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %2
  %14 = icmp sgt i64 %6, %8
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = load float, ptr %0, align 8, !tbaa !18
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %10
  %19 = phi float [ %16, %15 ], [ %11, %10 ]
  %20 = sitofp i64 %6 to float
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %1, float %20)
  %22 = fptosi float %21 to i64
  store i64 %22, ptr %4, align 8, !tbaa !16
  br label %23

23:                                               ; preds = %18, %15, %13
  %24 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !20
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !21
  %32 = fcmp ogt float %31, 0.000000e+00
  br i1 %32, label %39, label %33

33:                                               ; preds = %29, %23
  %34 = icmp sgt i64 %25, %27
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !21
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %29
  %40 = phi float [ %37, %35 ], [ %31, %29 ]
  %41 = sitofp i64 %25 to float
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %1, float %41)
  %43 = fptosi float %42 to i64
  store i64 %43, ptr %24, align 8, !tbaa !19
  br label %44

44:                                               ; preds = %39, %35, %33
  %45 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !23
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !24
  %53 = fcmp ogt float %52, 0.000000e+00
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %44
  %55 = icmp sgt i64 %46, %48
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 2
  %58 = load float, ptr %57, align 8, !tbaa !24
  %59 = fcmp olt float %58, 0.000000e+00
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %50
  %61 = phi float [ %58, %56 ], [ %52, %50 ]
  %62 = sitofp i64 %46 to float
  %63 = tail call float @llvm.fmuladd.f32(float %61, float %1, float %62)
  %64 = fptosi float %63 to i64
  store i64 %64, ptr %45, align 8, !tbaa !22
  br label %65

65:                                               ; preds = %60, %56, %54
  %66 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !25
  %68 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !26
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 3
  %73 = load float, ptr %72, align 4, !tbaa !27
  %74 = fcmp ogt float %73, 0.000000e+00
  br i1 %74, label %81, label %75

75:                                               ; preds = %71, %65
  %76 = icmp sgt i64 %67, %69
  br i1 %76, label %77, label %86

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 3
  %79 = load float, ptr %78, align 4, !tbaa !27
  %80 = fcmp olt float %79, 0.000000e+00
  br i1 %80, label %81, label %86

81:                                               ; preds = %77, %71
  %82 = phi float [ %79, %77 ], [ %73, %71 ]
  %83 = sitofp i64 %67 to float
  %84 = tail call float @llvm.fmuladd.f32(float %82, float %1, float %83)
  %85 = fptosi float %84 to i64
  store i64 %85, ptr %66, align 8, !tbaa !25
  br label %86

86:                                               ; preds = %81, %77, %75
  %87 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1, i32 4
  %88 = load i64, ptr %87, align 8, !tbaa !28
  %89 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2, i32 4
  %90 = load i64, ptr %89, align 8, !tbaa !29
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 4
  %94 = load float, ptr %93, align 8, !tbaa !30
  %95 = fcmp ogt float %94, 0.000000e+00
  br i1 %95, label %102, label %96

96:                                               ; preds = %92, %86
  %97 = icmp sgt i64 %88, %90
  br i1 %97, label %98, label %107

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 4
  %100 = load float, ptr %99, align 8, !tbaa !30
  %101 = fcmp olt float %100, 0.000000e+00
  br i1 %101, label %102, label %107

102:                                              ; preds = %98, %92
  %103 = phi float [ %100, %98 ], [ %94, %92 ]
  %104 = sitofp i64 %88 to float
  %105 = tail call float @llvm.fmuladd.f32(float %103, float %1, float %104)
  %106 = fptosi float %105 to i64
  store i64 %106, ptr %87, align 8, !tbaa !28
  br label %107

107:                                              ; preds = %102, %98, %96
  %108 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1, i32 5
  %109 = load i64, ptr %108, align 8, !tbaa !31
  %110 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2, i32 5
  %111 = load i64, ptr %110, align 8, !tbaa !32
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 5
  %115 = load float, ptr %114, align 4, !tbaa !33
  %116 = fcmp ogt float %115, 0.000000e+00
  br i1 %116, label %123, label %117

117:                                              ; preds = %113, %107
  %118 = icmp sgt i64 %109, %111
  br i1 %118, label %119, label %128

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.TYPE_8__, ptr %0, i64 0, i32 5
  %121 = load float, ptr %120, align 4, !tbaa !33
  %122 = fcmp olt float %121, 0.000000e+00
  br i1 %122, label %123, label %128

123:                                              ; preds = %119, %113
  %124 = phi float [ %121, %119 ], [ %115, %113 ]
  %125 = sitofp i64 %109 to float
  %126 = tail call float @llvm.fmuladd.f32(float %124, float %1, float %125)
  %127 = fptosi float %126 to i64
  store i64 %127, ptr %108, align 8, !tbaa !31
  br label %128

128:                                              ; preds = %123, %119, %117
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = !{!10, !6, i64 72}
!10 = !{!"TYPE_9__", !11, i64 0, !13, i64 24, !15, i64 80}
!11 = !{!"TYPE_8__", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !7, i64 0}
!13 = !{!"TYPE_7__", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !6, i64 48}
!14 = !{!"long", !7, i64 0}
!15 = !{!"TYPE_6__", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!16 = !{!10, !14, i64 24}
!17 = !{!10, !14, i64 80}
!18 = !{!10, !12, i64 0}
!19 = !{!10, !14, i64 32}
!20 = !{!10, !14, i64 88}
!21 = !{!10, !12, i64 4}
!22 = !{!10, !14, i64 40}
!23 = !{!10, !14, i64 96}
!24 = !{!10, !12, i64 8}
!25 = !{!10, !14, i64 48}
!26 = !{!10, !14, i64 104}
!27 = !{!10, !12, i64 12}
!28 = !{!10, !14, i64 56}
!29 = !{!10, !14, i64 112}
!30 = !{!10, !12, i64 16}
!31 = !{!10, !14, i64 64}
!32 = !{!10, !14, i64 120}
!33 = !{!10, !12, i64 20}
