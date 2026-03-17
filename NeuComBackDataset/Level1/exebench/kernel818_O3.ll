; ModuleID = '../benchmarks/fine_grained/exebench/kernel818.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Op06X = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op02FX = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@ObjPX = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op06Y = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op02FY = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@ObjPY = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op06Z = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op02FZ = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@ObjPZ = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op02AAS = dso_local local_unnamed_addr global i32 0, align 4
@tanval2 = dso_local local_unnamed_addr global i64 0, align 8
@CosTable2 = dso_local local_unnamed_addr global ptr null, align 8
@SinTable2 = dso_local local_unnamed_addr global ptr null, align 8
@ObjPX1 = dso_local local_unnamed_addr global i32 0, align 4
@ObjPY1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@ObjPZ1 = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Op02AZS = dso_local local_unnamed_addr global i32 0, align 4
@ObjPX2 = dso_local local_unnamed_addr global i32 0, align 4
@ObjPY2 = dso_local local_unnamed_addr global i32 0, align 4
@ObjPZ2 = dso_local local_unnamed_addr global i32 0, align 4
@Op02LFE = dso_local local_unnamed_addr global i32 0, align 4
@Op02LES = dso_local local_unnamed_addr global i32 0, align 4
@Op06H = dso_local local_unnamed_addr global i16 0, align 2
@Op06V = dso_local local_unnamed_addr global i32 0, align 4
@Op06S = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @DSPOp06() local_unnamed_addr #0 {
  %1 = load double, ptr @Op06X, align 8, !tbaa !5
  %2 = load double, ptr @Op02FX, align 8, !tbaa !5
  %3 = fsub double %1, %2
  store double %3, ptr @ObjPX, align 8, !tbaa !5
  %4 = load double, ptr @Op06Y, align 8, !tbaa !5
  %5 = load double, ptr @Op02FY, align 8, !tbaa !5
  %6 = fsub double %4, %5
  store double %6, ptr @ObjPY, align 8, !tbaa !5
  %7 = load double, ptr @Op06Z, align 8, !tbaa !5
  %8 = load double, ptr @Op02FZ, align 8, !tbaa !5
  %9 = fsub double %7, %8
  store double %9, ptr @ObjPZ, align 8, !tbaa !5
  %10 = load i32, ptr @Op02AAS, align 4, !tbaa !9
  %11 = sub i32 32768, %10
  %12 = sdiv i32 %11, 32
  %13 = and i32 %12, 2047
  %14 = zext i32 %13 to i64
  store i64 %14, ptr @tanval2, align 8, !tbaa !11
  %15 = load ptr, ptr @CosTable2, align 8, !tbaa !13
  %16 = getelementptr inbounds i64, ptr %15, i64 %14
  %17 = load i64, ptr %16, align 8, !tbaa !11
  %18 = sitofp i64 %17 to double
  %19 = load ptr, ptr @SinTable2, align 8, !tbaa !13
  %20 = getelementptr inbounds i64, ptr %19, i64 %14
  %21 = load i64, ptr %20, align 8, !tbaa !11
  %22 = sitofp i64 %21 to double
  %23 = fneg double %22
  %24 = fmul double %6, %23
  %25 = tail call double @llvm.fmuladd.f64(double %3, double %18, double %24)
  %26 = fptosi double %25 to i32
  store i32 %26, ptr @ObjPX1, align 4, !tbaa !9
  %27 = fmul double %6, %18
  %28 = tail call double @llvm.fmuladd.f64(double %3, double %22, double %27)
  store double %28, ptr @ObjPY1, align 8, !tbaa !5
  store double %9, ptr @ObjPZ1, align 8, !tbaa !5
  %29 = load i32, ptr @Op02AZS, align 4, !tbaa !9
  %30 = sdiv i32 %29, -32
  %31 = and i32 %30, 2047
  %32 = zext i32 %31 to i64
  store i64 %32, ptr @tanval2, align 8, !tbaa !11
  store i32 %26, ptr @ObjPX2, align 4, !tbaa !9
  %33 = getelementptr inbounds i64, ptr %15, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !11
  %35 = sitofp i64 %34 to double
  %36 = getelementptr inbounds i64, ptr %19, i64 %32
  %37 = load i64, ptr %36, align 8, !tbaa !11
  %38 = sitofp i64 %37 to double
  %39 = fneg double %38
  %40 = fmul double %9, %39
  %41 = tail call double @llvm.fmuladd.f64(double %28, double %35, double %40)
  %42 = fptosi double %41 to i32
  store i32 %42, ptr @ObjPY2, align 4, !tbaa !9
  %43 = fmul double %9, %35
  %44 = tail call double @llvm.fmuladd.f64(double %28, double %38, double %43)
  %45 = fptosi double %44 to i32
  %46 = load i32, ptr @Op02LFE, align 4, !tbaa !9
  %47 = sub nsw i32 %45, %46
  store i32 %47, ptr @ObjPZ2, align 4, !tbaa !9
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %0
  %50 = load i32, ptr @Op02LES, align 4, !tbaa !9
  %51 = mul i32 %50, %26
  %52 = sub i32 0, %51
  %53 = sub nsw i32 0, %47
  %54 = sdiv i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = mul i32 %50, %42
  %57 = sub i32 0, %56
  %58 = sdiv i32 %57, %53
  %59 = shl i32 %58, 16
  %60 = ashr exact i32 %59, 16
  %61 = sitofp i32 %50 to double
  %62 = fmul double %61, 2.560000e+02
  %63 = sitofp i32 %53 to double
  %64 = fdiv double %62, %63
  %65 = fptoui double %64 to i16
  %66 = zext i16 %65 to i32
  br label %67

67:                                               ; preds = %0, %49
  %68 = phi i16 [ %55, %49 ], [ 0, %0 ]
  %69 = phi i32 [ %60, %49 ], [ 224, %0 ]
  %70 = phi i32 [ %66, %49 ], [ 65535, %0 ]
  store i16 %68, ptr @Op06H, align 2
  store i32 %69, ptr @Op06V, align 4
  store i32 %70, ptr @Op06S, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
