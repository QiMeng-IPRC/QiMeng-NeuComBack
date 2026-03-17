; ModuleID = '../benchmarks/fine_grained/exebench/kernel966.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel966.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relax = type { i64, i64, i32 }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @set_duration(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.relax, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !11
  %6 = sub nsw i64 %3, %5
  %7 = tail call i64 @llvm.abs.i64(i64 %6, i1 true)
  %8 = sitofp i64 %7 to float
  %9 = fcmp oeq float %1, 0.000000e+00
  %10 = select i1 %9, float 0x3EE4F8B580000000, float %1
  %11 = fmul float %8, 4.000000e+00
  %12 = fmul float %10, %10
  %13 = fdiv float %11, %12
  %14 = fptosi float %13 to i32
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %16 = getelementptr inbounds %struct.relax, ptr %0, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"relax", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}
