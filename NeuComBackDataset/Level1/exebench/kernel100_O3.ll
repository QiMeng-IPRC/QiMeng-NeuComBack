; ModuleID = '../benchmarks/fine_grained/exebench/kernel100.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @c2c_add_stats(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 24
  %4 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 24
  %5 = load <2 x i64>, ptr %3, align 8, !tbaa !5
  %6 = load <2 x i64>, ptr %4, align 8, !tbaa !5
  %7 = add nsw <2 x i64> %6, %5
  store <2 x i64> %7, ptr %4, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 22
  %9 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 22
  %10 = load <2 x i64>, ptr %8, align 8, !tbaa !5
  %11 = load <2 x i64>, ptr %9, align 8, !tbaa !5
  %12 = add nsw <2 x i64> %11, %10
  store <2 x i64> %12, ptr %9, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 20
  %14 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 20
  %15 = load <2 x i64>, ptr %13, align 8, !tbaa !5
  %16 = load <2 x i64>, ptr %14, align 8, !tbaa !5
  %17 = add nsw <2 x i64> %16, %15
  store <2 x i64> %17, ptr %14, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 18
  %19 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 18
  %20 = load <2 x i64>, ptr %18, align 8, !tbaa !5
  %21 = load <2 x i64>, ptr %19, align 8, !tbaa !5
  %22 = add nsw <2 x i64> %21, %20
  store <2 x i64> %22, ptr %19, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 16
  %24 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 16
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !5
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !5
  %27 = add nsw <2 x i64> %26, %25
  store <2 x i64> %27, ptr %24, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 14
  %29 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 14
  %30 = load <2 x i64>, ptr %28, align 8, !tbaa !5
  %31 = load <2 x i64>, ptr %29, align 8, !tbaa !5
  %32 = add nsw <2 x i64> %31, %30
  store <2 x i64> %32, ptr %29, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 12
  %34 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 12
  %35 = load <2 x i64>, ptr %33, align 8, !tbaa !5
  %36 = load <2 x i64>, ptr %34, align 8, !tbaa !5
  %37 = add nsw <2 x i64> %36, %35
  store <2 x i64> %37, ptr %34, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 10
  %39 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 10
  %40 = load <2 x i64>, ptr %38, align 8, !tbaa !5
  %41 = load <2 x i64>, ptr %39, align 8, !tbaa !5
  %42 = add nsw <2 x i64> %41, %40
  store <2 x i64> %42, ptr %39, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 8
  %44 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 8
  %45 = load <2 x i64>, ptr %43, align 8, !tbaa !5
  %46 = load <2 x i64>, ptr %44, align 8, !tbaa !5
  %47 = add nsw <2 x i64> %46, %45
  store <2 x i64> %47, ptr %44, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 6
  %49 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 6
  %50 = load <2 x i64>, ptr %48, align 8, !tbaa !5
  %51 = load <2 x i64>, ptr %49, align 8, !tbaa !5
  %52 = add nsw <2 x i64> %51, %50
  store <2 x i64> %52, ptr %49, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 4
  %54 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 4
  %55 = load <2 x i64>, ptr %53, align 8, !tbaa !5
  %56 = load <2 x i64>, ptr %54, align 8, !tbaa !5
  %57 = add nsw <2 x i64> %56, %55
  store <2 x i64> %57, ptr %54, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.c2c_stats, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct.c2c_stats, ptr %0, i64 0, i32 2
  %60 = load <2 x i64>, ptr %58, align 8, !tbaa !5
  %61 = load <2 x i64>, ptr %59, align 8, !tbaa !5
  %62 = add nsw <2 x i64> %61, %60
  store <2 x i64> %62, ptr %59, align 8, !tbaa !5
  %63 = load <2 x i64>, ptr %1, align 8, !tbaa !5
  %64 = load <2 x i64>, ptr %0, align 8, !tbaa !5
  %65 = add nsw <2 x i64> %64, %63
  store <2 x i64> %65, ptr %0, align 8, !tbaa !5
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
