; ModuleID = '../benchmarks/fine_grained/exebench/kernel1605.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1605.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dec_detl = dso_local global i32 0, align 4
@detl = dso_local global i32 0, align 4
@dec_deth = dso_local global i32 0, align 4
@deth = dso_local global i32 0, align 4
@rlt2 = dso_local global i64 0, align 8
@rlt1 = dso_local global i64 0, align 8
@plt2 = dso_local global i64 0, align 8
@plt1 = dso_local global i64 0, align 8
@al2 = dso_local global i64 0, align 8
@al1 = dso_local global i64 0, align 8
@nbl = dso_local global i64 0, align 8
@rh2 = dso_local global i64 0, align 8
@rh1 = dso_local global i64 0, align 8
@ph2 = dso_local global i64 0, align 8
@ph1 = dso_local global i64 0, align 8
@ah2 = dso_local global i64 0, align 8
@ah1 = dso_local global i64 0, align 8
@nbh = dso_local global i64 0, align 8
@dec_rlt2 = dso_local global i64 0, align 8
@dec_rlt1 = dso_local global i64 0, align 8
@dec_plt2 = dso_local global i64 0, align 8
@dec_plt1 = dso_local global i64 0, align 8
@dec_al2 = dso_local global i64 0, align 8
@dec_al1 = dso_local global i64 0, align 8
@dec_nbl = dso_local global i64 0, align 8
@dec_rh2 = dso_local global i64 0, align 8
@dec_rh1 = dso_local global i64 0, align 8
@dec_ph2 = dso_local global i64 0, align 8
@dec_ph1 = dso_local global i64 0, align 8
@dec_ah2 = dso_local global i64 0, align 8
@dec_ah1 = dso_local global i64 0, align 8
@dec_nbh = dso_local global i64 0, align 8
@delay_dltx = dso_local global ptr null, align 8
@delay_dhx = dso_local global ptr null, align 8
@dec_del_dltx = dso_local global ptr null, align 8
@dec_del_dhx = dso_local global ptr null, align 8
@delay_bpl = dso_local global ptr null, align 8
@delay_bph = dso_local global ptr null, align 8
@dec_del_bpl = dso_local global ptr null, align 8
@dec_del_bph = dso_local global ptr null, align 8
@tqmf = dso_local global ptr null, align 8
@accumc = dso_local global ptr null, align 8
@accumd = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset() #0 {
  %1 = alloca i32, align 4
  store i32 32, ptr @dec_detl, align 4
  store i32 32, ptr @detl, align 4
  store i32 8, ptr @dec_deth, align 4
  store i32 8, ptr @deth, align 4
  store i64 0, ptr @rlt2, align 8
  store i64 0, ptr @rlt1, align 8
  store i64 0, ptr @plt2, align 8
  store i64 0, ptr @plt1, align 8
  store i64 0, ptr @al2, align 8
  store i64 0, ptr @al1, align 8
  store i64 0, ptr @nbl, align 8
  store i64 0, ptr @rh2, align 8
  store i64 0, ptr @rh1, align 8
  store i64 0, ptr @ph2, align 8
  store i64 0, ptr @ph1, align 8
  store i64 0, ptr @ah2, align 8
  store i64 0, ptr @ah1, align 8
  store i64 0, ptr @nbh, align 8
  store i64 0, ptr @dec_rlt2, align 8
  store i64 0, ptr @dec_rlt1, align 8
  store i64 0, ptr @dec_plt2, align 8
  store i64 0, ptr @dec_plt1, align 8
  store i64 0, ptr @dec_al2, align 8
  store i64 0, ptr @dec_al1, align 8
  store i64 0, ptr @dec_nbl, align 8
  store i64 0, ptr @dec_rh2, align 8
  store i64 0, ptr @dec_rh1, align 8
  store i64 0, ptr @dec_ph2, align 8
  store i64 0, ptr @dec_ph1, align 8
  store i64 0, ptr @dec_ah2, align 8
  store i64 0, ptr @dec_ah1, align 8
  store i64 0, ptr @dec_nbh, align 8
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 6
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = load ptr, ptr @delay_dltx, align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %6, i64 %8
  store i64 0, ptr %9, align 8
  %10 = load ptr, ptr @delay_dhx, align 8
  %11 = load i32, ptr %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, ptr %10, i64 %12
  store i64 0, ptr %13, align 8
  %14 = load ptr, ptr @dec_del_dltx, align 8
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %14, i64 %16
  store i64 0, ptr %17, align 8
  %18 = load ptr, ptr @dec_del_dhx, align 8
  %19 = load i32, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %18, i64 %20
  store i64 0, ptr %21, align 8
  br label %22

22:                                               ; preds = %5
  %23 = load i32, ptr %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %1, align 4
  br label %2, !llvm.loop !6

25:                                               ; preds = %2
  store i32 0, ptr %1, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, ptr %1, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load ptr, ptr @delay_bpl, align 8
  %31 = load i32, ptr %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %30, i64 %32
  store i64 0, ptr %33, align 8
  %34 = load ptr, ptr @delay_bph, align 8
  %35 = load i32, ptr %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, ptr %34, i64 %36
  store i64 0, ptr %37, align 8
  %38 = load ptr, ptr @dec_del_bpl, align 8
  %39 = load i32, ptr %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, ptr %38, i64 %40
  store i64 0, ptr %41, align 8
  %42 = load ptr, ptr @dec_del_bph, align 8
  %43 = load i32, ptr %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %42, i64 %44
  store i64 0, ptr %45, align 8
  br label %46

46:                                               ; preds = %29
  %47 = load i32, ptr %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 4
  br label %26, !llvm.loop !8

49:                                               ; preds = %26
  store i32 0, ptr %1, align 4
  br label %50

50:                                               ; preds = %58, %49
  %51 = load i32, ptr %1, align 4
  %52 = icmp slt i32 %51, 23
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load ptr, ptr @tqmf, align 8
  %55 = load i32, ptr %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, ptr %54, i64 %56
  store i64 0, ptr %57, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %1, align 4
  br label %50, !llvm.loop !9

61:                                               ; preds = %50
  store i32 0, ptr %1, align 4
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, ptr %1, align 4
  %64 = icmp slt i32 %63, 11
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load ptr, ptr @accumc, align 8
  %67 = load i32, ptr %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, ptr %66, i64 %68
  store i64 0, ptr %69, align 8
  %70 = load ptr, ptr @accumd, align 8
  %71 = load i32, ptr %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, ptr %70, i64 %72
  store i64 0, ptr %73, align 8
  br label %74

74:                                               ; preds = %65
  %75 = load i32, ptr %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %1, align 4
  br label %62, !llvm.loop !10

77:                                               ; preds = %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
