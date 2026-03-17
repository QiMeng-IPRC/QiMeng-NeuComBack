; ModuleID = '../benchmarks/fine_grained/exebench/kernel1537.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1537.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @calc_mulu(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = insertelement <16 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <16 x i32> %4, <16 x i32> poison, <16 x i32> zeroinitializer
  %6 = and <16 x i32> %5, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768>
  %7 = shl i32 %0, 1
  %8 = insertelement <2 x i32> poison, i32 %0, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = shl <2 x i32> %9, <i32 2, i32 3>
  %11 = insertelement <8 x i32> poison, i32 %0, i64 0
  %12 = shufflevector <8 x i32> %11, <8 x i32> poison, <8 x i32> zeroinitializer
  %13 = shl <8 x i32> %12, <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %14 = insertelement <4 x i32> poison, i32 %0, i64 0
  %15 = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> zeroinitializer
  %16 = shl <4 x i32> %15, <i32 12, i32 13, i32 14, i32 15>
  %17 = icmp eq <16 x i32> %6, zeroinitializer
  %18 = insertelement <16 x i32> poison, i32 %0, i64 0
  %19 = insertelement <16 x i32> %18, i32 %7, i64 1
  %20 = shufflevector <2 x i32> %10, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <16 x i32> %19, <16 x i32> %20, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <8 x i32> %13, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <16 x i32> %21, <16 x i32> %22, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <4 x i32> %16, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <16 x i32> %23, <16 x i32> %24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %26 = select <16 x i1> %17, <16 x i32> zeroinitializer, <16 x i32> %25
  %27 = shl <8 x i32> %12, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %28 = insertelement <8 x i32> poison, i32 %1, i64 0
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> zeroinitializer
  %30 = and <8 x i32> %29, <i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608>
  %31 = icmp eq <8 x i32> %30, zeroinitializer
  %32 = select <8 x i1> %31, <8 x i32> zeroinitializer, <8 x i32> %27
  %33 = shl <4 x i32> %15, <i32 24, i32 25, i32 26, i32 27>
  %34 = insertelement <4 x i32> poison, i32 %1, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = and <4 x i32> %35, <i32 16777216, i32 33554432, i32 67108864, i32 134217728>
  %37 = icmp eq <4 x i32> %36, zeroinitializer
  %38 = select <4 x i1> %37, <4 x i32> zeroinitializer, <4 x i32> %33
  %39 = shl i32 %0, 28
  %40 = and i32 %1, 268435456
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 %39
  %43 = shl i32 %0, 29
  %44 = and i32 %1, 536870912
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 %43
  %47 = shl i32 %0, 30
  %48 = and i32 %1, 1073741824
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 0, i32 %47
  %51 = shl i32 %0, 31
  %52 = icmp slt i32 %1, 0
  %53 = select i1 %52, i32 %51, i32 0
  %54 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %26)
  %55 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %32)
  %56 = add i32 %54, %55
  %57 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %58 = add i32 %56, %57
  %59 = add i32 %58, %42
  %60 = add i32 %46, %50
  %61 = add i32 %59, %60
  %62 = add i32 %61, %53
  store i32 %62, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
