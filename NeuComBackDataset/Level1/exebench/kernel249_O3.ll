; ModuleID = '../benchmarks/fine_grained/exebench/kernel249.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel249.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pc2(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = shl i32 %3, 9
  %5 = and i32 %4, 8388608
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr %0, align 4, !tbaa !5
  %7 = and i32 %6, 267893687
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %79, label %9

9:                                                ; preds = %2
  %10 = shl i32 %6, 11
  %11 = and i32 %10, 4194304
  %12 = shl i32 %6, 4
  %13 = and i32 %12, 2097152
  %14 = or i32 %11, %13
  %15 = shl i32 %6, 16
  %16 = and i32 %15, 1048576
  %17 = or i32 %14, %16
  %18 = lshr i32 %6, 8
  %19 = and i32 %18, 524288
  %20 = or i32 %17, %19
  %21 = lshr i32 %6, 5
  %22 = and i32 %21, 262144
  %23 = or i32 %20, %22
  %24 = lshr i32 %6, 8
  %25 = and i32 %24, 131072
  %26 = or i32 %23, %25
  %27 = shl i32 %6, 16
  %28 = and i32 %27, 65536
  %29 = or i32 %26, %28
  %30 = shl i32 %6, 2
  %31 = and i32 %30, 32768
  %32 = or i32 %29, %31
  %33 = lshr i32 %6, 8
  %34 = and i32 %33, 16384
  %35 = or i32 %32, %34
  %36 = shl i32 %6, 6
  %37 = and i32 %36, 8192
  %38 = or i32 %35, %37
  %39 = lshr i32 %6, 6
  %40 = and i32 %39, 4096
  %41 = or i32 %38, %40
  %42 = shl i32 %6, 6
  %43 = and i32 %42, 2048
  %44 = or i32 %41, %43
  %45 = shl i32 %6, 1
  %46 = and i32 %45, 1024
  %47 = or i32 %44, %46
  %48 = lshr i32 %6, 7
  %49 = and i32 %48, 512
  %50 = or i32 %47, %49
  %51 = lshr i32 %6, 16
  %52 = and i32 %51, 256
  %53 = or i32 %50, %52
  %54 = shl i32 %6, 5
  %55 = and i32 %54, 128
  %56 = or i32 %53, %55
  %57 = lshr i32 %6, 14
  %58 = and i32 %57, 64
  %59 = or i32 %56, %58
  %60 = lshr i32 %6, 7
  %61 = and i32 %60, 32
  %62 = or i32 %59, %61
  %63 = lshr i32 %6, 17
  %64 = and i32 %63, 16
  %65 = or i32 %62, %64
  %66 = shl i32 %6, 2
  %67 = and i32 %66, 8
  %68 = or i32 %65, %67
  %69 = lshr i32 %6, 6
  %70 = and i32 %69, 4
  %71 = or i32 %68, %70
  %72 = lshr i32 %6, 14
  %73 = and i32 %72, 2
  %74 = or i32 %71, %73
  %75 = lshr i32 %6, 26
  %76 = and i32 %75, 1
  %77 = or i32 %74, %76
  %78 = or i32 %77, %5
  store i32 %78, ptr %1, align 4, !tbaa !10
  br label %79

79:                                               ; preds = %2, %9
  %80 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, ptr %0, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !12
  %83 = shl i32 %82, 8
  %84 = and i32 %83, 8388608
  store i32 %84, ptr %80, align 4
  %85 = load i32, ptr %81, align 4, !tbaa !12
  %86 = and i32 %85, 266035195
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %157, label %88

88:                                               ; preds = %79
  %89 = shl i32 %85, 18
  %90 = and i32 %89, 4194304
  %91 = lshr i32 %85, 4
  %92 = and i32 %91, 2097152
  %93 = or i32 %90, %92
  %94 = shl i32 %85, 1
  %95 = and i32 %94, 1048576
  %96 = or i32 %93, %95
  %97 = shl i32 %85, 10
  %98 = and i32 %97, 524288
  %99 = or i32 %96, %98
  %100 = shl i32 %85, 17
  %101 = and i32 %100, 262144
  %102 = or i32 %99, %101
  %103 = lshr i32 %85, 9
  %104 = and i32 %103, 131072
  %105 = or i32 %102, %104
  %106 = and i32 %85, 65536
  %107 = or i32 %105, %106
  %108 = shl i32 %85, 10
  %109 = and i32 %108, 32768
  %110 = or i32 %107, %109
  %111 = shl i32 %85, 3
  %112 = and i32 %111, 16384
  %113 = or i32 %110, %112
  %114 = lshr i32 %85, 10
  %115 = and i32 %114, 8192
  %116 = or i32 %113, %115
  %117 = shl i32 %85, 4
  %118 = and i32 %117, 4096
  %119 = or i32 %116, %118
  %120 = lshr i32 %85, 1
  %121 = and i32 %120, 2048
  %122 = or i32 %119, %121
  %123 = shl i32 %85, 3
  %124 = and i32 %123, 1024
  %125 = or i32 %122, %124
  %126 = lshr i32 %85, 8
  %127 = and i32 %126, 512
  %128 = or i32 %125, %127
  %129 = shl i32 %85, 8
  %130 = and i32 %129, 256
  %131 = or i32 %128, %130
  %132 = lshr i32 %85, 15
  %133 = and i32 %132, 128
  %134 = or i32 %131, %133
  %135 = shl i32 %85, 3
  %136 = and i32 %135, 64
  %137 = or i32 %134, %136
  %138 = lshr i32 %85, 5
  %139 = and i32 %138, 32
  %140 = or i32 %137, %139
  %141 = lshr i32 %85, 10
  %142 = and i32 %141, 16
  %143 = or i32 %140, %142
  %144 = lshr i32 %85, 3
  %145 = and i32 %144, 8
  %146 = or i32 %143, %145
  %147 = lshr i32 %85, 18
  %148 = and i32 %147, 4
  %149 = or i32 %146, %148
  %150 = lshr i32 %85, 26
  %151 = and i32 %150, 2
  %152 = or i32 %149, %151
  %153 = lshr i32 %85, 24
  %154 = and i32 %153, 1
  %155 = or i32 %152, %154
  %156 = or i32 %155, %84
  store i32 %156, ptr %80, align 4, !tbaa !13
  br label %157

157:                                              ; preds = %79, %88
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_6__", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"TYPE_5__", !7, i64 0, !7, i64 4}
!12 = !{!6, !7, i64 4}
!13 = !{!11, !7, i64 4}
