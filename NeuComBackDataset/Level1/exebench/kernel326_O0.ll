; ModuleID = '../benchmarks/fine_grained/exebench/kernel326.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel326.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@right_contiguous = dso_local global ptr null, align 8
@right_flip = dso_local global ptr null, align 8
@lsb_mask = dso_local global ptr null, align 8
@bb_flips = dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestFlips_bitboard_b2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %13 = load ptr, ptr @right_contiguous, align 8
  %14 = load i32, ptr %8, align 4
  %15 = lshr i32 %14, 10
  %16 = and i32 %15, 31
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %13, i64 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %10, align 4
  %20 = load ptr, ptr @right_flip, align 8
  %21 = load i32, ptr %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 10
  store i32 %25, ptr %12, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i32, ptr %12, align 4
  %28 = and i32 %26, %27
  %29 = sub nsw i32 0, %28
  %30 = ashr i32 %29, 31
  store i32 %30, ptr %11, align 4
  %31 = load i32, ptr %12, align 4
  %32 = load i32, ptr %11, align 4
  %33 = and i32 %31, %32
  %34 = load i32, ptr %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, ptr %6, align 4
  %36 = load i32, ptr %10, align 4
  %37 = load i32, ptr %11, align 4
  %38 = and i32 %36, %37
  store i32 %38, ptr %9, align 4
  %39 = load i32, ptr %8, align 4
  %40 = and i32 %39, 131072
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %4
  %43 = load i32, ptr %8, align 4
  %44 = and i32 %43, 33554432
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %42
  %47 = load i32, ptr %7, align 4
  %48 = lshr i32 %47, 1
  %49 = and i32 %48, 1
  store i32 %49, ptr %11, align 4
  %50 = load i32, ptr %11, align 4
  %51 = add i32 2, %50
  store i32 %51, ptr %10, align 4
  %52 = load i32, ptr %7, align 4
  %53 = lshr i32 %52, 9
  %54 = load i32, ptr %11, align 4
  %55 = and i32 %54, %53
  store i32 %55, ptr %11, align 4
  %56 = load i32, ptr %11, align 4
  %57 = load i32, ptr %10, align 4
  %58 = add i32 %57, %56
  store i32 %58, ptr %10, align 4
  %59 = load i32, ptr %7, align 4
  %60 = lshr i32 %59, 17
  %61 = load i32, ptr %11, align 4
  %62 = and i32 %61, %60
  store i32 %62, ptr %11, align 4
  %63 = load i32, ptr %11, align 4
  %64 = load i32, ptr %10, align 4
  %65 = add i32 %64, %63
  store i32 %65, ptr %10, align 4
  %66 = load ptr, ptr @lsb_mask, align 8
  %67 = load i32, ptr %10, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %66, i64 %69
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 33686018
  store i32 %72, ptr %11, align 4
  %73 = load i32, ptr %5, align 4
  %74 = load i32, ptr %11, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %46
  %78 = load i32, ptr %11, align 4
  %79 = load i32, ptr %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, ptr %5, align 4
  %81 = load i32, ptr %6, align 4
  %82 = or i32 %81, 33685504
  store i32 %82, ptr %6, align 4
  %83 = load i32, ptr %10, align 4
  %84 = load i32, ptr %9, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, ptr %9, align 4
  br label %86

86:                                               ; preds = %77, %46
  br label %98

87:                                               ; preds = %42
  %88 = load i32, ptr %6, align 4
  %89 = lshr i32 %88, 25
  %90 = and i32 %89, 1
  store i32 %90, ptr %11, align 4
  %91 = load i32, ptr %11, align 4
  %92 = shl i32 %91, 17
  %93 = load i32, ptr %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, ptr %6, align 4
  %95 = load i32, ptr %11, align 4
  %96 = load i32, ptr %9, align 4
  %97 = add i32 %96, %95
  store i32 %97, ptr %9, align 4
  br label %98

98:                                               ; preds = %87, %86
  br label %99

99:                                               ; preds = %98, %4
  %100 = load i32, ptr %8, align 4
  %101 = and i32 %100, 262144
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %160

103:                                              ; preds = %99
  %104 = load i32, ptr %8, align 4
  %105 = and i32 %104, 134217728
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = load i32, ptr %7, align 4
  %109 = lshr i32 %108, 4
  %110 = and i32 %109, 1
  store i32 %110, ptr %11, align 4
  %111 = load i32, ptr %11, align 4
  %112 = add i32 2, %111
  store i32 %112, ptr %10, align 4
  %113 = load i32, ptr %7, align 4
  %114 = lshr i32 %113, 13
  %115 = load i32, ptr %11, align 4
  %116 = and i32 %115, %114
  store i32 %116, ptr %11, align 4
  %117 = load i32, ptr %11, align 4
  %118 = load i32, ptr %10, align 4
  %119 = add i32 %118, %117
  store i32 %119, ptr %10, align 4
  %120 = load i32, ptr %7, align 4
  %121 = lshr i32 %120, 22
  %122 = load i32, ptr %11, align 4
  %123 = and i32 %122, %121
  store i32 %123, ptr %11, align 4
  %124 = load i32, ptr %11, align 4
  %125 = load i32, ptr %10, align 4
  %126 = add i32 %125, %124
  store i32 %126, ptr %10, align 4
  %127 = load ptr, ptr @lsb_mask, align 8
  %128 = load i32, ptr %10, align 4
  %129 = sub nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %127, i64 %130
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, -2143281136
  store i32 %133, ptr %11, align 4
  %134 = load i32, ptr %5, align 4
  %135 = load i32, ptr %11, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %107
  %139 = load i32, ptr %11, align 4
  %140 = load i32, ptr %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, ptr %5, align 4
  %142 = load i32, ptr %6, align 4
  %143 = or i32 %142, 134479872
  store i32 %143, ptr %6, align 4
  %144 = load i32, ptr %10, align 4
  %145 = load i32, ptr %9, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, ptr %9, align 4
  br label %147

147:                                              ; preds = %138, %107
  br label %159

148:                                              ; preds = %103
  %149 = load i32, ptr %6, align 4
  %150 = lshr i32 %149, 27
  %151 = and i32 %150, 1
  store i32 %151, ptr %11, align 4
  %152 = load i32, ptr %11, align 4
  %153 = shl i32 %152, 18
  %154 = load i32, ptr %6, align 4
  %155 = or i32 %154, %153
  store i32 %155, ptr %6, align 4
  %156 = load i32, ptr %11, align 4
  %157 = load i32, ptr %9, align 4
  %158 = add i32 %157, %156
  store i32 %158, ptr %9, align 4
  br label %159

159:                                              ; preds = %148, %147
  br label %160

160:                                              ; preds = %159, %99
  %161 = load i32, ptr %6, align 4
  %162 = or i32 %161, 512
  store i32 %162, ptr %6, align 4
  %163 = load i32, ptr %5, align 4
  store i32 %163, ptr @bb_flips, align 4
  %164 = load i32, ptr %6, align 4
  store i32 %164, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bb_flips, i32 0, i32 1), align 4
  %165 = load i32, ptr %9, align 4
  ret i32 %165
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
