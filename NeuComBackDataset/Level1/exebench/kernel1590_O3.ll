; ModuleID = '../benchmarks/fine_grained/exebench/kernel1590.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1590.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S1 = dso_local local_unnamed_addr global ptr null, align 8
@S0 = dso_local local_unnamed_addr global ptr null, align 8
@S3 = dso_local local_unnamed_addr global ptr null, align 8
@S2 = dso_local local_unnamed_addr global ptr null, align 8
@S5 = dso_local local_unnamed_addr global ptr null, align 8
@S4 = dso_local local_unnamed_addr global ptr null, align 8
@S7 = dso_local local_unnamed_addr global ptr null, align 8
@S6 = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OneRound(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i32, ptr %0, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %0, i64 5
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds i32, ptr %0, i64 6
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, ptr %0, i64 7
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = load i32, ptr %1, align 4, !tbaa !5
  %12 = xor i32 %11, %4
  store i32 %12, ptr %3, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, ptr %1, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = xor i32 %14, %6
  store i32 %15, ptr %5, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %1, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = xor i32 %17, %8
  store i32 %18, ptr %7, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %1, i64 3
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = xor i32 %20, %10
  store i32 %21, ptr %9, align 4, !tbaa !5
  %22 = load ptr, ptr @S1, align 8, !tbaa !9
  %23 = lshr i32 %12, 4
  %24 = and i32 %23, 15
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !5
  %28 = shl i32 %27, 4
  %29 = load ptr, ptr @S0, align 8, !tbaa !9
  %30 = and i32 %12, 15
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = xor i32 %33, %28
  store i32 %34, ptr %3, align 4, !tbaa !5
  %35 = load ptr, ptr @S3, align 8, !tbaa !9
  %36 = lshr i32 %15, 4
  %37 = and i32 %36, 15
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %35, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = shl i32 %40, 4
  %42 = load ptr, ptr @S2, align 8, !tbaa !9
  %43 = and i32 %15, 15
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %42, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = xor i32 %46, %41
  store i32 %47, ptr %5, align 4, !tbaa !5
  %48 = load ptr, ptr @S5, align 8, !tbaa !9
  %49 = lshr i32 %18, 4
  %50 = and i32 %49, 15
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %48, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = shl i32 %53, 4
  %55 = load ptr, ptr @S4, align 8, !tbaa !9
  %56 = and i32 %18, 15
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %55, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = xor i32 %59, %54
  store i32 %60, ptr %7, align 4, !tbaa !5
  %61 = load ptr, ptr @S7, align 8, !tbaa !9
  %62 = lshr i32 %21, 4
  %63 = and i32 %62, 15
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %61, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !5
  %67 = shl i32 %66, 4
  %68 = load ptr, ptr @S6, align 8, !tbaa !9
  %69 = and i32 %21, 15
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %68, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = xor i32 %72, %67
  %74 = lshr i32 %34, 4
  %75 = and i32 %74, 15
  %76 = and i32 %47, 240
  %77 = or i32 %76, %75
  %78 = and i32 %33, 15
  %79 = shl i32 %46, 4
  %80 = and i32 %79, 240
  %81 = or i32 %80, %78
  %82 = lshr i32 %60, 4
  %83 = and i32 %82, 15
  %84 = and i32 %73, 240
  %85 = or i32 %84, %83
  %86 = and i32 %59, 15
  %87 = shl i32 %72, 4
  %88 = and i32 %87, 240
  %89 = or i32 %88, %86
  %90 = getelementptr inbounds i32, ptr %0, i64 3
  %91 = load i32, ptr %90, align 4, !tbaa !5
  %92 = xor i32 %91, %77
  store i32 %92, ptr %3, align 4, !tbaa !5
  %93 = load i32, ptr %0, align 4, !tbaa !5
  %94 = xor i32 %93, %81
  store i32 %94, ptr %5, align 4, !tbaa !5
  %95 = getelementptr inbounds i32, ptr %0, i64 1
  %96 = load i32, ptr %95, align 4, !tbaa !5
  %97 = xor i32 %96, %85
  store i32 %97, ptr %7, align 4, !tbaa !5
  %98 = getelementptr inbounds i32, ptr %0, i64 2
  %99 = load i32, ptr %98, align 4, !tbaa !5
  %100 = xor i32 %99, %89
  store i32 %100, ptr %9, align 4, !tbaa !5
  store i32 %4, ptr %0, align 4, !tbaa !5
  store i32 %6, ptr %95, align 4, !tbaa !5
  store i32 %8, ptr %98, align 4, !tbaa !5
  store i32 %10, ptr %90, align 4, !tbaa !5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
