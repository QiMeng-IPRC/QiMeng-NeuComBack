; ModuleID = '../benchmarks/fine_grained/exebench/kernel1382.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1382.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sbox_table = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubBytes(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @sbox_table, align 8, !tbaa !5
  %4 = load i64, ptr %0, align 8, !tbaa !9
  %5 = getelementptr inbounds i64, ptr %3, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !9
  store i64 %6, ptr %1, align 8, !tbaa !9
  %7 = getelementptr inbounds i64, ptr %0, i64 1
  %8 = load i64, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds i64, ptr %3, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 %10, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds i64, ptr %0, i64 2
  %13 = load i64, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds i64, ptr %3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 %15, ptr %16, align 8, !tbaa !9
  %17 = getelementptr inbounds i64, ptr %0, i64 3
  %18 = load i64, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds i64, ptr %3, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds i64, ptr %1, i64 3
  store i64 %20, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds i64, ptr %0, i64 4
  %23 = load i64, ptr %22, align 8, !tbaa !9
  %24 = getelementptr inbounds i64, ptr %3, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds i64, ptr %1, i64 4
  store i64 %25, ptr %26, align 8, !tbaa !9
  %27 = getelementptr inbounds i64, ptr %0, i64 5
  %28 = load i64, ptr %27, align 8, !tbaa !9
  %29 = getelementptr inbounds i64, ptr %3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !9
  %31 = getelementptr inbounds i64, ptr %1, i64 5
  store i64 %30, ptr %31, align 8, !tbaa !9
  %32 = getelementptr inbounds i64, ptr %0, i64 6
  %33 = load i64, ptr %32, align 8, !tbaa !9
  %34 = getelementptr inbounds i64, ptr %3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !9
  %36 = getelementptr inbounds i64, ptr %1, i64 6
  store i64 %35, ptr %36, align 8, !tbaa !9
  %37 = getelementptr inbounds i64, ptr %0, i64 7
  %38 = load i64, ptr %37, align 8, !tbaa !9
  %39 = getelementptr inbounds i64, ptr %3, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !9
  %41 = getelementptr inbounds i64, ptr %1, i64 7
  store i64 %40, ptr %41, align 8, !tbaa !9
  %42 = getelementptr inbounds i64, ptr %0, i64 8
  %43 = load i64, ptr %42, align 8, !tbaa !9
  %44 = getelementptr inbounds i64, ptr %3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds i64, ptr %1, i64 8
  store i64 %45, ptr %46, align 8, !tbaa !9
  %47 = getelementptr inbounds i64, ptr %0, i64 9
  %48 = load i64, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds i64, ptr %3, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !9
  %51 = getelementptr inbounds i64, ptr %1, i64 9
  store i64 %50, ptr %51, align 8, !tbaa !9
  %52 = getelementptr inbounds i64, ptr %0, i64 10
  %53 = load i64, ptr %52, align 8, !tbaa !9
  %54 = getelementptr inbounds i64, ptr %3, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !9
  %56 = getelementptr inbounds i64, ptr %1, i64 10
  store i64 %55, ptr %56, align 8, !tbaa !9
  %57 = getelementptr inbounds i64, ptr %0, i64 11
  %58 = load i64, ptr %57, align 8, !tbaa !9
  %59 = getelementptr inbounds i64, ptr %3, i64 %58
  %60 = load i64, ptr %59, align 8, !tbaa !9
  %61 = getelementptr inbounds i64, ptr %1, i64 11
  store i64 %60, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds i64, ptr %0, i64 12
  %63 = load i64, ptr %62, align 8, !tbaa !9
  %64 = getelementptr inbounds i64, ptr %3, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !9
  %66 = getelementptr inbounds i64, ptr %1, i64 12
  store i64 %65, ptr %66, align 8, !tbaa !9
  %67 = getelementptr inbounds i64, ptr %0, i64 13
  %68 = load i64, ptr %67, align 8, !tbaa !9
  %69 = getelementptr inbounds i64, ptr %3, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !9
  %71 = getelementptr inbounds i64, ptr %1, i64 13
  store i64 %70, ptr %71, align 8, !tbaa !9
  %72 = getelementptr inbounds i64, ptr %0, i64 14
  %73 = load i64, ptr %72, align 8, !tbaa !9
  %74 = getelementptr inbounds i64, ptr %3, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !9
  %76 = getelementptr inbounds i64, ptr %1, i64 14
  store i64 %75, ptr %76, align 8, !tbaa !9
  %77 = getelementptr inbounds i64, ptr %0, i64 15
  %78 = load i64, ptr %77, align 8, !tbaa !9
  %79 = getelementptr inbounds i64, ptr %3, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !9
  %81 = getelementptr inbounds i64, ptr %1, i64 15
  store i64 %80, ptr %81, align 8, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
