; ModuleID = '../benchmarks/fine_grained/exebench/kernel561.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel561.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @scalar_mult_sum_antiH(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TYPE_10__, ptr %0, i64 0, i32 5, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = mul nsw i32 %5, %1
  %7 = getelementptr inbounds %struct.TYPE_10__, ptr %2, i64 0, i32 5, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = add nsw i32 %8, %6
  store i32 %9, ptr %7, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.TYPE_10__, ptr %0, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, ptr %2, i64 0, i32 3, i32 1
  %12 = load <4 x i32>, ptr %10, align 4, !tbaa !13
  %13 = insertelement <4 x i32> poison, i32 %1, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = mul nsw <4 x i32> %12, %14
  %16 = load <4 x i32>, ptr %11, align 4, !tbaa !13
  %17 = add nsw <4 x i32> %16, %15
  store <4 x i32> %17, ptr %11, align 4, !tbaa !13
  %18 = load <4 x i32>, ptr %0, align 4, !tbaa !13
  %19 = mul nsw <4 x i32> %18, %14
  %20 = load <4 x i32>, ptr %2, align 4, !tbaa !13
  %21 = add nsw <4 x i32> %20, %19
  store <4 x i32> %21, ptr %2, align 4, !tbaa !13
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 32}
!6 = !{!"TYPE_10__", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 12, !11, i64 20, !12, i64 28}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_9__", !7, i64 0, !7, i64 4}
!11 = !{!"TYPE_8__", !7, i64 0, !7, i64 4}
!12 = !{!"TYPE_7__", !7, i64 0, !7, i64 4}
!13 = !{!7, !7, i64 0}
