; ModuleID = '../benchmarks/fine_grained/exebench/kernel1608.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RXEN0 = dso_local local_unnamed_addr global i32 0, align 4
@TXEN0 = dso_local local_unnamed_addr global i32 0, align 4
@UCSR0B = dso_local local_unnamed_addr global i32 0, align 4
@UCSZ00 = dso_local local_unnamed_addr global i32 0, align 4
@UCSZ01 = dso_local local_unnamed_addr global i32 0, align 4
@UCSR0C = dso_local local_unnamed_addr global i32 0, align 4
@UBRR0L = dso_local local_unnamed_addr global i64 0, align 8
@UBRR0H = dso_local local_unnamed_addr global i64 0, align 8
@RXEN1 = dso_local local_unnamed_addr global i32 0, align 4
@TXEN1 = dso_local local_unnamed_addr global i32 0, align 4
@UCSR1B = dso_local local_unnamed_addr global i32 0, align 4
@UCSZ10 = dso_local local_unnamed_addr global i32 0, align 4
@UCSZ11 = dso_local local_unnamed_addr global i32 0, align 4
@UCSR1C = dso_local local_unnamed_addr global i32 0, align 4
@UBRR1L = dso_local local_unnamed_addr global i64 0, align 8
@UBRR1H = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @initUSART(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = icmp eq i8 %0, 1
  %3 = select i1 %2, ptr @UCSR1B, ptr @UCSR0B
  %4 = select i1 %2, ptr @UCSR1C, ptr @UCSR0C
  %5 = select i1 %2, ptr @UBRR1L, ptr @UBRR0L
  %6 = select i1 %2, ptr @UBRR1H, ptr @UBRR0H
  %7 = load i32, ptr @RXEN1, align 4
  %8 = load i32, ptr @RXEN0, align 4
  %9 = select i1 %2, i32 %7, i32 %8
  %10 = shl nuw i32 1, %9
  %11 = load i32, ptr @TXEN1, align 4
  %12 = load i32, ptr @TXEN0, align 4
  %13 = select i1 %2, i32 %11, i32 %12
  %14 = shl nuw i32 1, %13
  %15 = or i32 %14, %10
  %16 = load i32, ptr %3, align 4, !tbaa !5
  %17 = or i32 %15, %16
  store i32 %17, ptr %3, align 4, !tbaa !5
  %18 = load i32, ptr @UCSZ10, align 4
  %19 = load i32, ptr @UCSZ00, align 4
  %20 = select i1 %2, i32 %18, i32 %19
  %21 = shl nuw i32 1, %20
  %22 = load i32, ptr @UCSZ11, align 4
  %23 = load i32, ptr @UCSZ01, align 4
  %24 = select i1 %2, i32 %22, i32 %23
  %25 = shl nuw i32 1, %24
  %26 = or i32 %25, %21
  %27 = load i32, ptr %4, align 4, !tbaa !5
  %28 = or i32 %26, %27
  store i32 %28, ptr %4, align 4, !tbaa !5
  store i64 51, ptr %5, align 8, !tbaa !9
  store i64 0, ptr %6, align 8, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"long", !7, i64 0}
