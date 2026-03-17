; ModuleID = '../benchmarks/fine_grained/exebench/kernel684.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel684.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @dlaqr1_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load i32, ptr %2, align 4, !tbaa !5
  %10 = xor i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %0, align 4, !tbaa !5
  %14 = icmp eq i32 %13, 2
  %15 = load i32, ptr %1, align 4, !tbaa !5
  %16 = load i32, ptr %5, align 4, !tbaa !5
  %17 = sub nsw i32 %15, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = load i32, ptr %6, align 4, !tbaa !5
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 true)
  %21 = add nuw nsw i32 %18, %20
  %22 = add nsw i32 %9, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %12, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %27 = add nuw nsw i32 %21, %26
  br i1 %14, label %28, label %59

28:                                               ; preds = %8
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  store i32 0, ptr %7, align 4, !tbaa !5
  br label %129

31:                                               ; preds = %28
  %32 = sdiv i32 %25, %27
  %33 = shl i32 %9, 1
  %34 = or i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %12, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = mul nsw i32 %37, %32
  %39 = load i32, ptr %3, align 4, !tbaa !5
  %40 = sub nsw i32 %15, %39
  %41 = sdiv i32 %17, %27
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, %38
  %44 = load i32, ptr %4, align 4, !tbaa !5
  %45 = sdiv i32 %19, %27
  %46 = mul nsw i32 %45, %44
  %47 = sub i32 %43, %46
  store i32 %47, ptr %7, align 4, !tbaa !5
  %48 = load i32, ptr %1, align 4, !tbaa !5
  %49 = add nsw i32 %33, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %12, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = load i32, ptr %3, align 4, !tbaa !5
  %54 = load i32, ptr %5, align 4, !tbaa !5
  %55 = add i32 %52, %48
  %56 = add i32 %53, %54
  %57 = sub i32 %55, %56
  %58 = mul nsw i32 %57, %32
  br label %129

59:                                               ; preds = %8
  %60 = add nsw i32 %9, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %12, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !5
  %64 = tail call i32 @llvm.abs.i32(i32 %63, i1 true)
  %65 = add nuw nsw i32 %27, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  store i32 0, ptr %7, align 4, !tbaa !5
  %68 = getelementptr inbounds i32, ptr %7, i64 1
  store i32 0, ptr %68, align 4, !tbaa !5
  br label %129

69:                                               ; preds = %59
  %70 = sdiv i32 %25, %65
  %71 = sdiv i32 %63, %65
  %72 = load i32, ptr %3, align 4, !tbaa !5
  %73 = sub nsw i32 %15, %72
  %74 = sdiv i32 %17, %65
  %75 = mul nsw i32 %73, %74
  %76 = load i32, ptr %4, align 4, !tbaa !5
  %77 = sdiv i32 %19, %65
  %78 = mul nsw i32 %77, %76
  %79 = sub i32 %75, %78
  %80 = shl i32 %9, 1
  %81 = or i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %12, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !5
  %85 = mul nsw i32 %84, %70
  %86 = add nsw i32 %79, %85
  %87 = mul nsw i32 %9, 3
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %12, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !5
  %92 = mul nsw i32 %91, %71
  %93 = add nsw i32 %86, %92
  store i32 %93, ptr %7, align 4, !tbaa !5
  %94 = load i32, ptr %1, align 4, !tbaa !5
  %95 = add nsw i32 %80, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %12, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !5
  %99 = load i32, ptr %3, align 4, !tbaa !5
  %100 = load i32, ptr %5, align 4, !tbaa !5
  %101 = add i32 %98, %94
  %102 = add i32 %99, %100
  %103 = sub i32 %101, %102
  %104 = mul nsw i32 %103, %70
  %105 = add nsw i32 %87, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %12, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !5
  %109 = mul nsw i32 %108, %71
  %110 = add nsw i32 %104, %109
  %111 = getelementptr inbounds i32, ptr %7, i64 1
  store i32 %110, ptr %111, align 4, !tbaa !5
  %112 = load i32, ptr %1, align 4, !tbaa !5
  %113 = add nsw i32 %87, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, ptr %12, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = load i32, ptr %3, align 4, !tbaa !5
  %118 = load i32, ptr %5, align 4, !tbaa !5
  %119 = add i32 %116, %112
  %120 = add i32 %117, %118
  %121 = sub i32 %119, %120
  %122 = mul nsw i32 %121, %71
  %123 = add nsw i32 %80, 3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %12, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = mul nsw i32 %126, %70
  %128 = add nsw i32 %122, %127
  br label %129

129:                                              ; preds = %67, %69, %30, %31
  %130 = phi i64 [ 2, %67 ], [ 2, %69 ], [ 1, %30 ], [ 1, %31 ]
  %131 = phi i32 [ 0, %67 ], [ %128, %69 ], [ 0, %30 ], [ %58, %31 ]
  %132 = getelementptr inbounds i32, ptr %7, i64 %130
  store i32 %131, ptr %132, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
