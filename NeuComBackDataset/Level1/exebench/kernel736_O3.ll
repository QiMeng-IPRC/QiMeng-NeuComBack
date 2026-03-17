; ModuleID = '../benchmarks/fine_grained/exebench/kernel736.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel736.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_data_block = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @init_data_block() local_unnamed_addr #0 {
  %1 = load ptr, ptr @first_data_block, align 8, !tbaa !5
  %2 = load i32, ptr %1, align 4, !tbaa !9
  %3 = icmp sgt i32 %2, 3
  br i1 %3, label %4, label %153

4:                                                ; preds = %0
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %21

7:                                                ; preds = %148
  %8 = getelementptr inbounds i32, ptr %22, i64 1
  %9 = add i32 %23, 32
  %10 = load i32, ptr %8, align 4, !tbaa !9
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7, %21, %29, %33, %37, %41, %45, %49, %53, %57, %61, %65, %69, %73, %77, %81, %85, %89, %93, %97, %101, %105, %109, %113, %117, %121, %125, %129, %133, %137, %141, %145, %4
  %14 = phi i32 [ 0, %4 ], [ %9, %7 ], [ %23, %21 ], [ %23, %29 ], [ %23, %33 ], [ %23, %37 ], [ %23, %41 ], [ %23, %45 ], [ %23, %49 ], [ %23, %53 ], [ %23, %57 ], [ %23, %61 ], [ %23, %65 ], [ %23, %69 ], [ %23, %73 ], [ %23, %77 ], [ %23, %81 ], [ %23, %85 ], [ %23, %89 ], [ %23, %93 ], [ %23, %97 ], [ %23, %101 ], [ %23, %105 ], [ %23, %109 ], [ %23, %113 ], [ %23, %117 ], [ %23, %121 ], [ %23, %125 ], [ %23, %129 ], [ %23, %133 ], [ %23, %137 ], [ %23, %141 ], [ %23, %145 ]
  %15 = phi ptr [ %1, %4 ], [ %8, %7 ], [ %22, %21 ], [ %22, %29 ], [ %22, %33 ], [ %22, %37 ], [ %22, %41 ], [ %22, %45 ], [ %22, %49 ], [ %22, %53 ], [ %22, %57 ], [ %22, %61 ], [ %22, %65 ], [ %22, %69 ], [ %22, %73 ], [ %22, %77 ], [ %22, %81 ], [ %22, %85 ], [ %22, %89 ], [ %22, %93 ], [ %22, %97 ], [ %22, %101 ], [ %22, %105 ], [ %22, %109 ], [ %22, %113 ], [ %22, %117 ], [ %22, %121 ], [ %22, %125 ], [ %22, %129 ], [ %22, %133 ], [ %22, %137 ], [ %22, %141 ], [ %22, %145 ]
  %16 = phi i32 [ 0, %4 ], [ 0, %7 ], [ 1, %21 ], [ 2, %29 ], [ 3, %33 ], [ 4, %37 ], [ 5, %41 ], [ 6, %45 ], [ 7, %49 ], [ 8, %53 ], [ 9, %57 ], [ 10, %61 ], [ 11, %65 ], [ 12, %69 ], [ 13, %73 ], [ 14, %77 ], [ 15, %81 ], [ 16, %85 ], [ 17, %89 ], [ 18, %93 ], [ 19, %97 ], [ 20, %101 ], [ 21, %105 ], [ 22, %109 ], [ 23, %113 ], [ 24, %117 ], [ 25, %121 ], [ 26, %125 ], [ 27, %129 ], [ 28, %133 ], [ 29, %137 ], [ 30, %141 ], [ 31, %145 ]
  %17 = phi i32 [ %2, %4 ], [ %10, %7 ], [ %26, %21 ], [ %30, %29 ], [ %34, %33 ], [ %38, %37 ], [ %42, %41 ], [ %46, %45 ], [ %50, %49 ], [ %54, %53 ], [ %58, %57 ], [ %62, %61 ], [ %66, %65 ], [ %70, %69 ], [ %74, %73 ], [ %78, %77 ], [ %82, %81 ], [ %86, %85 ], [ %90, %89 ], [ %94, %93 ], [ %98, %97 ], [ %102, %101 ], [ %106, %105 ], [ %110, %109 ], [ %114, %113 ], [ %118, %117 ], [ %122, %121 ], [ %126, %125 ], [ %130, %129 ], [ %134, %133 ], [ %138, %137 ], [ %142, %141 ], [ %146, %145 ]
  %18 = shl nuw i32 1, %16
  %19 = or i32 %17, %18
  store i32 %19, ptr %15, align 4, !tbaa !9
  %20 = or i32 %16, %14
  br label %153

21:                                               ; preds = %4, %7
  %22 = phi ptr [ %8, %7 ], [ %1, %4 ]
  %23 = phi i32 [ %9, %7 ], [ 0, %4 ]
  %24 = phi i32 [ %149, %7 ], [ 0, %4 ]
  %25 = phi i32 [ %10, %7 ], [ %2, %4 ]
  %26 = lshr i32 %25, 1
  store i32 %26, ptr %22, align 4, !tbaa !9
  %27 = and i32 %25, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %13, label %29

29:                                               ; preds = %21
  %30 = lshr i32 %25, 2
  store i32 %30, ptr %22, align 4, !tbaa !9
  %31 = and i32 %25, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %13, label %33

33:                                               ; preds = %29
  %34 = lshr i32 %25, 3
  store i32 %34, ptr %22, align 4, !tbaa !9
  %35 = and i32 %25, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %13, label %37

37:                                               ; preds = %33
  %38 = lshr i32 %25, 4
  store i32 %38, ptr %22, align 4, !tbaa !9
  %39 = and i32 %25, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %13, label %41

41:                                               ; preds = %37
  %42 = lshr i32 %25, 5
  store i32 %42, ptr %22, align 4, !tbaa !9
  %43 = and i32 %25, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %13, label %45

45:                                               ; preds = %41
  %46 = lshr i32 %25, 6
  store i32 %46, ptr %22, align 4, !tbaa !9
  %47 = and i32 %25, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %13, label %49

49:                                               ; preds = %45
  %50 = lshr i32 %25, 7
  store i32 %50, ptr %22, align 4, !tbaa !9
  %51 = and i32 %25, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %13, label %53

53:                                               ; preds = %49
  %54 = lshr i32 %25, 8
  store i32 %54, ptr %22, align 4, !tbaa !9
  %55 = and i32 %25, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %13, label %57

57:                                               ; preds = %53
  %58 = lshr i32 %25, 9
  store i32 %58, ptr %22, align 4, !tbaa !9
  %59 = and i32 %25, 512
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %13, label %61

61:                                               ; preds = %57
  %62 = lshr i32 %25, 10
  store i32 %62, ptr %22, align 4, !tbaa !9
  %63 = and i32 %25, 1024
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %13, label %65

65:                                               ; preds = %61
  %66 = lshr i32 %25, 11
  store i32 %66, ptr %22, align 4, !tbaa !9
  %67 = and i32 %25, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %13, label %69

69:                                               ; preds = %65
  %70 = lshr i32 %25, 12
  store i32 %70, ptr %22, align 4, !tbaa !9
  %71 = and i32 %25, 4096
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %13, label %73

73:                                               ; preds = %69
  %74 = lshr i32 %25, 13
  store i32 %74, ptr %22, align 4, !tbaa !9
  %75 = and i32 %25, 8192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %13, label %77

77:                                               ; preds = %73
  %78 = lshr i32 %25, 14
  store i32 %78, ptr %22, align 4, !tbaa !9
  %79 = and i32 %25, 16384
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %13, label %81

81:                                               ; preds = %77
  %82 = lshr i32 %25, 15
  store i32 %82, ptr %22, align 4, !tbaa !9
  %83 = and i32 %25, 32768
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %13, label %85

85:                                               ; preds = %81
  %86 = lshr i32 %25, 16
  store i32 %86, ptr %22, align 4, !tbaa !9
  %87 = and i32 %25, 65536
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %13, label %89

89:                                               ; preds = %85
  %90 = lshr i32 %25, 17
  store i32 %90, ptr %22, align 4, !tbaa !9
  %91 = and i32 %25, 131072
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %13, label %93

93:                                               ; preds = %89
  %94 = lshr i32 %25, 18
  store i32 %94, ptr %22, align 4, !tbaa !9
  %95 = and i32 %25, 262144
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %13, label %97

97:                                               ; preds = %93
  %98 = lshr i32 %25, 19
  store i32 %98, ptr %22, align 4, !tbaa !9
  %99 = and i32 %25, 524288
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %13, label %101

101:                                              ; preds = %97
  %102 = lshr i32 %25, 20
  store i32 %102, ptr %22, align 4, !tbaa !9
  %103 = and i32 %25, 1048576
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %13, label %105

105:                                              ; preds = %101
  %106 = lshr i32 %25, 21
  store i32 %106, ptr %22, align 4, !tbaa !9
  %107 = and i32 %25, 2097152
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %13, label %109

109:                                              ; preds = %105
  %110 = lshr i32 %25, 22
  store i32 %110, ptr %22, align 4, !tbaa !9
  %111 = and i32 %25, 4194304
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %13, label %113

113:                                              ; preds = %109
  %114 = lshr i32 %25, 23
  store i32 %114, ptr %22, align 4, !tbaa !9
  %115 = and i32 %25, 8388608
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %13, label %117

117:                                              ; preds = %113
  %118 = lshr i32 %25, 24
  store i32 %118, ptr %22, align 4, !tbaa !9
  %119 = and i32 %25, 16777216
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %13, label %121

121:                                              ; preds = %117
  %122 = lshr i32 %25, 25
  store i32 %122, ptr %22, align 4, !tbaa !9
  %123 = and i32 %25, 33554432
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %13, label %125

125:                                              ; preds = %121
  %126 = lshr i32 %25, 26
  store i32 %126, ptr %22, align 4, !tbaa !9
  %127 = and i32 %25, 67108864
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %13, label %129

129:                                              ; preds = %125
  %130 = lshr i32 %25, 27
  store i32 %130, ptr %22, align 4, !tbaa !9
  %131 = and i32 %25, 134217728
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %13, label %133

133:                                              ; preds = %129
  %134 = lshr i32 %25, 28
  store i32 %134, ptr %22, align 4, !tbaa !9
  %135 = and i32 %25, 268435456
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %13, label %137

137:                                              ; preds = %133
  %138 = lshr i32 %25, 29
  store i32 %138, ptr %22, align 4, !tbaa !9
  %139 = and i32 %25, 536870912
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %13, label %141

141:                                              ; preds = %137
  %142 = lshr i32 %25, 30
  store i32 %142, ptr %22, align 4, !tbaa !9
  %143 = and i32 %25, 1073741824
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %13, label %145

145:                                              ; preds = %141
  %146 = lshr i32 %25, 31
  store i32 %146, ptr %22, align 4, !tbaa !9
  %147 = icmp sgt i32 %25, -1
  br i1 %147, label %13, label %148

148:                                              ; preds = %145
  store i32 0, ptr %22, align 4, !tbaa !9
  %149 = add nuw nsw i32 %24, 1
  %150 = load i32, ptr %1, align 4, !tbaa !9
  %151 = sdiv i32 %150, 4
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %7, label %153, !llvm.loop !11

153:                                              ; preds = %148, %0, %13
  %154 = phi i32 [ %20, %13 ], [ 0, %0 ], [ 0, %148 ]
  ret i32 %154
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
