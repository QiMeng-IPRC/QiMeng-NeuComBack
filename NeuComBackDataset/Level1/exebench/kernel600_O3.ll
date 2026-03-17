; ModuleID = '../benchmarks/fine_grained/exebench/kernel600.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@BIT6 = dso_local local_unnamed_addr global i32 0, align 4
@BIT15 = dso_local local_unnamed_addr global i32 0, align 4
@ANSELG = dso_local local_unnamed_addr global i32 0, align 4
@BIT11 = dso_local local_unnamed_addr global i32 0, align 4
@ANSELB = dso_local local_unnamed_addr global i32 0, align 4
@TRISG = dso_local local_unnamed_addr global i32 0, align 4
@BIT4 = dso_local local_unnamed_addr global i32 0, align 4
@TRISD = dso_local local_unnamed_addr global i32 0, align 4
@TRISB = dso_local local_unnamed_addr global i32 0, align 4
@LATGbits = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 8
@LATDbits = dso_local local_unnamed_addr global %struct.TYPE_5__ zeroinitializer, align 8
@LATBbits = dso_local local_unnamed_addr global %struct.TYPE_6__ zeroinitializer, align 8
@BIT5 = dso_local local_unnamed_addr global i32 0, align 4
@ANSELA = dso_local local_unnamed_addr global i32 0, align 4
@TRISA = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @InitApp() local_unnamed_addr #0 {
  %1 = load i32, ptr @BIT6, align 4, !tbaa !5
  %2 = load i32, ptr @BIT15, align 4, !tbaa !5
  %3 = or i32 %2, %1
  %4 = xor i32 %3, -1
  %5 = load i32, ptr @ANSELG, align 4, !tbaa !5
  %6 = and i32 %5, %4
  store i32 %6, ptr @ANSELG, align 4, !tbaa !5
  %7 = load i32, ptr @BIT11, align 4, !tbaa !5
  %8 = xor i32 %7, -1
  %9 = load i32, ptr @ANSELB, align 4, !tbaa !5
  %10 = and i32 %9, %8
  store i32 %10, ptr @ANSELB, align 4, !tbaa !5
  %11 = load i32, ptr @TRISG, align 4, !tbaa !5
  %12 = and i32 %11, %4
  store i32 %12, ptr @TRISG, align 4, !tbaa !5
  %13 = load i32, ptr @BIT4, align 4, !tbaa !5
  %14 = xor i32 %13, -1
  %15 = load i32, ptr @TRISD, align 4, !tbaa !5
  %16 = and i32 %15, %14
  store i32 %16, ptr @TRISD, align 4, !tbaa !5
  %17 = load i32, ptr @TRISB, align 4, !tbaa !5
  %18 = and i32 %17, %8
  store i32 %18, ptr @TRISB, align 4, !tbaa !5
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @LATGbits, i64 0, i32 1), align 8, !tbaa !9
  store i64 0, ptr @LATDbits, align 8, !tbaa !12
  store i64 0, ptr @LATBbits, align 8, !tbaa !14
  store i64 0, ptr @LATGbits, align 8, !tbaa !16
  %19 = load i32, ptr @BIT5, align 4, !tbaa !5
  %20 = xor i32 %19, -1
  %21 = load i32, ptr @ANSELA, align 4, !tbaa !5
  %22 = and i32 %21, %20
  store i32 %22, ptr @ANSELA, align 4, !tbaa !5
  %23 = load i32, ptr @TRISA, align 4, !tbaa !5
  %24 = or i32 %13, %23
  %25 = or i32 %24, %19
  store i32 %25, ptr @TRISA, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"TYPE_4__", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"TYPE_5__", !11, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"TYPE_6__", !11, i64 0}
!16 = !{!10, !11, i64 0}
