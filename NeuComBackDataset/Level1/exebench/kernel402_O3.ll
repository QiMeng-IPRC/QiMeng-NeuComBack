; ModuleID = '../benchmarks/fine_grained/exebench/kernel402.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel402.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float, float }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__ }

@WARP_INTER_OUTSIDE = dso_local local_unnamed_addr global i32 0, align 4
@WARP_INTER_INTERSECTS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @warp_intersects_ray_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x %struct.TYPE_8__], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  %6 = getelementptr inbounds %struct.TYPE_7__, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !5
  %7 = getelementptr inbounds %struct.TYPE_8__, ptr %5, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !5
  %8 = load i32, ptr %0, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %5, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !15
  %16 = sub nsw i32 1, %8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %5, i64 0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !15
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %5, i64 0, i64 %20, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !16
  %23 = sub nsw i32 1, %10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %5, i64 0, i64 %24, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !16
  %27 = load <2 x float>, ptr %11, align 4
  %28 = load <2 x float>, ptr %12, align 4
  %29 = insertelement <2 x float> poison, float %19, i64 0
  %30 = insertelement <2 x float> %29, float %22, i64 1
  %31 = fsub <2 x float> %30, %27
  %32 = fmul <2 x float> %28, %31
  %33 = insertelement <2 x float> poison, float %15, i64 0
  %34 = insertelement <2 x float> %33, float %26, i64 1
  %35 = fsub <2 x float> %34, %27
  %36 = fmul <2 x float> %28, %35
  %37 = extractelement <2 x float> %36, i64 0
  %38 = extractelement <2 x float> %36, i64 1
  %39 = fcmp ogt float %37, %38
  %40 = extractelement <2 x float> %32, i64 0
  %41 = extractelement <2 x float> %32, i64 1
  %42 = fcmp ogt float %41, %40
  %43 = select i1 %39, i1 true, i1 %42
  br i1 %43, label %80, label %44

44:                                               ; preds = %4
  %45 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %46 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 3, i32 2
  %47 = load float, ptr %46, align 4, !tbaa.struct !17
  %48 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 4, i32 2
  %49 = load float, ptr %48, align 4, !tbaa.struct !17
  %50 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !18
  %52 = fcmp olt <2 x float> %45, %32
  %53 = extractelement <2 x i1> %52, i64 1
  %54 = select i1 %53, float %41, float %37
  %55 = extractelement <2 x i1> %52, i64 0
  %56 = select i1 %55, float %38, float %40
  %57 = sext i32 %51 to i64
  %58 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %5, i64 0, i64 %57, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !19
  %60 = fsub float %59, %49
  %61 = fmul float %47, %60
  %62 = sub nsw i32 1, %51
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x %struct.TYPE_8__], ptr %5, i64 0, i64 %63, i32 2
  %65 = load float, ptr %64, align 4, !tbaa !19
  %66 = fsub float %65, %49
  %67 = fmul float %47, %66
  %68 = fcmp ogt float %54, %67
  %69 = fcmp ogt float %61, %56
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %44
  %72 = fcmp ogt float %61, %54
  %73 = select i1 %72, float %61, float %54
  %74 = fcmp olt float %67, %56
  %75 = select i1 %74, float %67, float %56
  %76 = fcmp olt float %73, %3
  %77 = fcmp ogt float %75, %2
  %78 = select i1 %76, i1 %77, i1 false
  %79 = select i1 %78, ptr @WARP_INTER_INTERSECTS, ptr @WARP_INTER_OUTSIDE
  br label %80

80:                                               ; preds = %71, %44, %4
  %81 = phi ptr [ @WARP_INTER_OUTSIDE, %4 ], [ %79, %71 ], [ @WARP_INTER_OUTSIDE, %44 ]
  %82 = load i32, ptr %81, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  ret i32 %82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"TYPE_6__", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 12, !13, i64 24}
!12 = !{!"int", !8, i64 0}
!13 = !{!"TYPE_8__", !7, i64 0, !7, i64 4, !7, i64 8}
!14 = !{!11, !12, i64 4}
!15 = !{!13, !7, i64 0}
!16 = !{!13, !7, i64 4}
!17 = !{i64 0, i64 4, !6}
!18 = !{!11, !12, i64 8}
!19 = !{!13, !7, i64 8}
!20 = !{!12, !12, i64 0}
