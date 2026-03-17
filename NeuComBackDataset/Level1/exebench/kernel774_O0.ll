; ModuleID = '../benchmarks/fine_grained/exebench/kernel774.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel774.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Clock_Epoch2YearDay(i64 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 1970, ptr %7, align 8
  %8 = load i64, ptr %4, align 8
  %9 = icmp sle i64 %8, -146097
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %4, align 8
  %12 = icmp sge i64 %11, 146097
  br i1 %12, label %13, label %24

13:                                               ; preds = %10, %3
  %14 = load i64, ptr %4, align 8
  %15 = sdiv i64 %14, 146097
  %16 = mul nsw i64 400, %15
  %17 = load i64, ptr %7, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, ptr %7, align 8
  %19 = load i64, ptr %4, align 8
  %20 = sdiv i64 %19, 146097
  %21 = mul nsw i64 146097, %20
  %22 = load i64, ptr %4, align 8
  %23 = sub nsw i64 %22, %21
  store i64 %23, ptr %4, align 8
  br label %24

24:                                               ; preds = %13, %10
  %25 = load i64, ptr %4, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %102

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %80, %27
  %29 = load i64, ptr %4, align 8
  %30 = icmp sge i64 %29, 366
  br i1 %30, label %31, label %81

31:                                               ; preds = %28
  %32 = load i64, ptr %7, align 8
  %33 = srem i64 %32, 400
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %7, align 8
  %37 = srem i64 %36, 4
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load i64, ptr %7, align 8
  %41 = srem i64 %40, 100
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %39, %31
  %44 = load i64, ptr %4, align 8
  %45 = icmp sge i64 %44, 1461
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i64, ptr %7, align 8
  %48 = add nsw i64 %47, 4
  store i64 %48, ptr %7, align 8
  %49 = load i64, ptr %4, align 8
  %50 = sub nsw i64 %49, 1461
  store i64 %50, ptr %4, align 8
  br label %74

51:                                               ; preds = %43
  %52 = load i64, ptr %4, align 8
  %53 = icmp sge i64 %52, 1096
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, ptr %7, align 8
  %56 = add nsw i64 %55, 3
  store i64 %56, ptr %7, align 8
  %57 = load i64, ptr %4, align 8
  %58 = sub nsw i64 %57, 1096
  store i64 %58, ptr %4, align 8
  br label %73

59:                                               ; preds = %51
  %60 = load i64, ptr %4, align 8
  %61 = icmp sge i64 %60, 731
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i64, ptr %7, align 8
  %64 = add nsw i64 %63, 2
  store i64 %64, ptr %7, align 8
  %65 = load i64, ptr %4, align 8
  %66 = sub nsw i64 %65, 731
  store i64 %66, ptr %4, align 8
  br label %72

67:                                               ; preds = %59
  %68 = load i64, ptr %7, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, ptr %7, align 8
  %70 = load i64, ptr %4, align 8
  %71 = sub nsw i64 %70, 366
  store i64 %71, ptr %4, align 8
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %46
  br label %80

75:                                               ; preds = %39, %35
  %76 = load i64, ptr %7, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, ptr %7, align 8
  %78 = load i64, ptr %4, align 8
  %79 = sub nsw i64 %78, 365
  store i64 %79, ptr %4, align 8
  br label %80

80:                                               ; preds = %75, %74
  br label %28, !llvm.loop !6

81:                                               ; preds = %28
  %82 = load i64, ptr %4, align 8
  %83 = icmp eq i64 %82, 365
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i64, ptr %7, align 8
  %86 = srem i64 %85, 400
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %7, align 8
  %90 = srem i64 %89, 4
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i64, ptr %7, align 8
  %94 = srem i64 %93, 100
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92, %88
  %97 = load i64, ptr %7, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, ptr %7, align 8
  %99 = load i64, ptr %4, align 8
  %100 = sub nsw i64 %99, 365
  store i64 %100, ptr %4, align 8
  br label %101

101:                                              ; preds = %96, %92, %84, %81
  br label %179

102:                                              ; preds = %24
  br label %103

103:                                              ; preds = %153, %102
  %104 = load i64, ptr %4, align 8
  %105 = icmp sle i64 %104, -366
  br i1 %105, label %106, label %154

106:                                              ; preds = %103
  %107 = load i64, ptr %7, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, ptr %7, align 8
  %109 = load i64, ptr %7, align 8
  %110 = srem i64 %109, 400
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %106
  %113 = load i64, ptr %7, align 8
  %114 = srem i64 %113, 4
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %112
  %117 = load i64, ptr %7, align 8
  %118 = srem i64 %117, 100
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %116, %106
  %121 = load i64, ptr %4, align 8
  %122 = icmp sle i64 %121, -1461
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64, ptr %7, align 8
  %125 = sub nsw i64 %124, 3
  store i64 %125, ptr %7, align 8
  %126 = load i64, ptr %4, align 8
  %127 = add nsw i64 %126, 1461
  store i64 %127, ptr %4, align 8
  br label %149

128:                                              ; preds = %120
  %129 = load i64, ptr %4, align 8
  %130 = icmp sle i64 %129, -1096
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i64, ptr %7, align 8
  %133 = sub nsw i64 %132, 2
  store i64 %133, ptr %7, align 8
  %134 = load i64, ptr %4, align 8
  %135 = add nsw i64 %134, 1096
  store i64 %135, ptr %4, align 8
  br label %148

136:                                              ; preds = %128
  %137 = load i64, ptr %4, align 8
  %138 = icmp sle i64 %137, -731
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i64, ptr %7, align 8
  %141 = add nsw i64 %140, -1
  store i64 %141, ptr %7, align 8
  %142 = load i64, ptr %4, align 8
  %143 = add nsw i64 %142, 731
  store i64 %143, ptr %4, align 8
  br label %147

144:                                              ; preds = %136
  %145 = load i64, ptr %4, align 8
  %146 = add nsw i64 %145, 366
  store i64 %146, ptr %4, align 8
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %131
  br label %149

149:                                              ; preds = %148, %123
  br label %153

150:                                              ; preds = %116, %112
  %151 = load i64, ptr %4, align 8
  %152 = add nsw i64 %151, 365
  store i64 %152, ptr %4, align 8
  br label %153

153:                                              ; preds = %150, %149
  br label %103, !llvm.loop !8

154:                                              ; preds = %103
  %155 = load i64, ptr %4, align 8
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %154
  %158 = load i64, ptr %7, align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, ptr %7, align 8
  %160 = load i64, ptr %7, align 8
  %161 = srem i64 %160, 400
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %157
  %164 = load i64, ptr %7, align 8
  %165 = srem i64 %164, 4
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load i64, ptr %7, align 8
  %169 = srem i64 %168, 100
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167, %157
  %172 = load i64, ptr %4, align 8
  %173 = add nsw i64 %172, 366
  store i64 %173, ptr %4, align 8
  br label %177

174:                                              ; preds = %167, %163
  %175 = load i64, ptr %4, align 8
  %176 = add nsw i64 %175, 365
  store i64 %176, ptr %4, align 8
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %154
  br label %179

179:                                              ; preds = %178, %101
  %180 = load i64, ptr %4, align 8
  %181 = trunc i64 %180 to i32
  %182 = load ptr, ptr %5, align 8
  store i32 %181, ptr %182, align 4
  %183 = load i64, ptr %7, align 8
  %184 = load ptr, ptr %6, align 8
  store i64 %183, ptr %184, align 8
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
