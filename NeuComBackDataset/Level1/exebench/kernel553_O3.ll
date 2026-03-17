; ModuleID = '../benchmarks/fine_grained/exebench/kernel553.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fptab = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @fp(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @fptab, align 8, !tbaa !5
  %5 = and i64 %1, 15
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = lshr i64 %1, 4
  %9 = and i64 %8, 15
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !9
  %12 = lshr i64 %1, 8
  %13 = and i64 %12, 15
  %14 = getelementptr inbounds i32, ptr %4, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !9
  %16 = ashr i32 %15, 2
  %17 = or i32 %7, %16
  %18 = lshr i64 %1, 12
  %19 = and i64 %18, 15
  %20 = getelementptr inbounds i32, ptr %4, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !9
  %22 = ashr i32 %21, 2
  %23 = or i32 %11, %22
  %24 = lshr i64 %1, 16
  %25 = and i64 %24, 15
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %28 = ashr i32 %27, 4
  %29 = or i32 %17, %28
  %30 = lshr i64 %1, 20
  %31 = and i64 %30, 15
  %32 = getelementptr inbounds i32, ptr %4, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !9
  %34 = ashr i32 %33, 4
  %35 = or i32 %23, %34
  %36 = lshr i64 %1, 24
  %37 = and i64 %36, 15
  %38 = getelementptr inbounds i32, ptr %4, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %40 = ashr i32 %39, 6
  %41 = or i32 %29, %40
  %42 = lshr i64 %1, 28
  %43 = and i64 %42, 15
  %44 = getelementptr inbounds i32, ptr %4, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !9
  %46 = ashr i32 %45, 6
  %47 = or i32 %35, %46
  %48 = and i64 %0, 15
  %49 = getelementptr inbounds i32, ptr %4, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !9
  %51 = ashr i32 %50, 1
  %52 = or i32 %41, %51
  %53 = lshr i64 %0, 4
  %54 = and i64 %53, 15
  %55 = getelementptr inbounds i32, ptr %4, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !9
  %57 = ashr i32 %56, 1
  %58 = or i32 %47, %57
  %59 = lshr i64 %0, 8
  %60 = and i64 %59, 15
  %61 = getelementptr inbounds i32, ptr %4, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !9
  %63 = ashr i32 %62, 3
  %64 = or i32 %52, %63
  %65 = lshr i64 %0, 12
  %66 = and i64 %65, 15
  %67 = getelementptr inbounds i32, ptr %4, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !9
  %69 = ashr i32 %68, 3
  %70 = or i32 %58, %69
  %71 = lshr i64 %0, 16
  %72 = and i64 %71, 15
  %73 = getelementptr inbounds i32, ptr %4, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !9
  %75 = ashr i32 %74, 5
  %76 = or i32 %64, %75
  %77 = lshr i64 %0, 20
  %78 = and i64 %77, 15
  %79 = getelementptr inbounds i32, ptr %4, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !9
  %81 = ashr i32 %80, 5
  %82 = or i32 %70, %81
  %83 = lshr i64 %0, 24
  %84 = and i64 %83, 15
  %85 = getelementptr inbounds i32, ptr %4, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !9
  %87 = ashr i32 %86, 7
  %88 = or i32 %76, %87
  %89 = lshr i64 %0, 28
  %90 = and i64 %89, 15
  %91 = getelementptr inbounds i32, ptr %4, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !9
  %93 = ashr i32 %92, 7
  %94 = or i32 %82, %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %95, ptr %2, align 1, !tbaa !11
  %97 = lshr i32 %94, 8
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %98, ptr %96, align 1, !tbaa !11
  %100 = lshr i32 %94, 16
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %101, ptr %99, align 1, !tbaa !11
  %103 = lshr i32 %94, 24
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %2, i64 4
  store i8 %104, ptr %102, align 1, !tbaa !11
  %106 = trunc i32 %88 to i8
  %107 = getelementptr inbounds i8, ptr %2, i64 5
  store i8 %106, ptr %105, align 1, !tbaa !11
  %108 = lshr i32 %88, 8
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds i8, ptr %2, i64 6
  store i8 %109, ptr %107, align 1, !tbaa !11
  %111 = lshr i32 %88, 16
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %2, i64 7
  store i8 %112, ptr %110, align 1, !tbaa !11
  %114 = lshr i32 %88, 24
  %115 = trunc i32 %114 to i8
  store i8 %115, ptr %113, align 1, !tbaa !11
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
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
