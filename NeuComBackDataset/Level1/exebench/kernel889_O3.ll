; ModuleID = '../benchmarks/fine_grained/exebench/kernel889.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel889.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @righttensor(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = fadd double %0, 1.000000e+00
  %6 = fcmp olt double %5, 1.000000e+00
  %7 = select i1 %6, double 1.000000e+00, double %5
  store double %7, ptr %3, align 8, !tbaa !5
  %8 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %9 = getelementptr inbounds [3 x double], ptr %3, i64 1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store double %7, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds [3 x double], ptr %3, i64 1, i64 2
  %11 = getelementptr inbounds [3 x double], ptr %3, i64 2, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store double %7, ptr %11, align 8, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
