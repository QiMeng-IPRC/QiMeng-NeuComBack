; ModuleID = '../benchmarks/fine_grained/exebench/kernel82.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel82.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_cq_init_attr_ex = type { i32 }

@MLX4_CQ_FLAGS_SINGLE_THREADED = dso_local global i32 0, align 4
@mlx4_start_poll = dso_local global i32 0, align 4
@mlx4_end_poll = dso_local global i32 0, align 4
@mlx4_start_poll_lock = dso_local global i32 0, align 4
@mlx4_end_poll_lock = dso_local global i32 0, align 4
@mlx4_next_poll = dso_local global i32 0, align 4
@mlx4_cq_read_wc_opcode = dso_local global i32 0, align 4
@mlx4_cq_read_wc_vendor_err = dso_local global i32 0, align 4
@mlx4_cq_read_wc_flags = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_BYTE_LEN = dso_local global i32 0, align 4
@mlx4_cq_read_wc_byte_len = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_IMM = dso_local global i32 0, align 4
@mlx4_cq_read_wc_imm_data = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_QP_NUM = dso_local global i32 0, align 4
@mlx4_cq_read_wc_qp_num = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SRC_QP = dso_local global i32 0, align 4
@mlx4_cq_read_wc_src_qp = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SLID = dso_local global i32 0, align 4
@mlx4_cq_read_wc_slid = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_SL = dso_local global i32 0, align 4
@mlx4_cq_read_wc_sl = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_DLID_PATH_BITS = dso_local global i32 0, align 4
@mlx4_cq_read_wc_dlid_path_bits = dso_local global i32 0, align 4
@IBV_WC_EX_WITH_COMPLETION_TIMESTAMP = dso_local global i32 0, align 4
@mlx4_cq_read_wc_completion_ts = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_fill_pfns(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_cq, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr @MLX4_CQ_FLAGS_SINGLE_THREADED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, ptr @mlx4_start_poll, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i32 0, i32 13
  store i32 %12, ptr %15, align 4
  %16 = load i32, ptr @mlx4_end_poll, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_cq, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %18, i32 0, i32 12
  store i32 %16, ptr %19, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i32, ptr @mlx4_start_poll_lock, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_cq, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, ptr %23, i32 0, i32 13
  store i32 %21, ptr %24, align 4
  %25 = load i32, ptr @mlx4_end_poll_lock, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_cq, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, ptr %27, i32 0, i32 12
  store i32 %25, ptr %28, align 4
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i32, ptr @mlx4_next_poll, align 4
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_cq, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, ptr %32, i32 0, i32 11
  store i32 %30, ptr %33, align 4
  %34 = load i32, ptr @mlx4_cq_read_wc_opcode, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_cq, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i32 0, i32 10
  store i32 %34, ptr %37, align 4
  %38 = load i32, ptr @mlx4_cq_read_wc_vendor_err, align 4
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_cq, ptr %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, ptr %40, i32 0, i32 9
  store i32 %38, ptr %41, align 4
  %42 = load i32, ptr @mlx4_cq_read_wc_flags, align 4
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_cq, ptr %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, ptr %44, i32 0, i32 8
  store i32 %42, ptr %45, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr @IBV_WC_EX_WITH_BYTE_LEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %29
  %53 = load i32, ptr @mlx4_cq_read_wc_byte_len, align 4
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.mlx4_cq, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, ptr %55, i32 0, i32 7
  store i32 %53, ptr %56, align 4
  br label %57

57:                                               ; preds = %52, %29
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr @IBV_WC_EX_WITH_IMM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, ptr @mlx4_cq_read_wc_imm_data, align 4
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_cq, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, ptr %67, i32 0, i32 6
  store i32 %65, ptr %68, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr @IBV_WC_EX_WITH_QP_NUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, ptr @mlx4_cq_read_wc_qp_num, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.mlx4_cq, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, ptr %79, i32 0, i32 5
  store i32 %77, ptr %80, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr @IBV_WC_EX_WITH_SRC_QP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, ptr @mlx4_cq_read_wc_src_qp, align 4
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_cq, ptr %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, ptr %91, i32 0, i32 4
  store i32 %89, ptr %92, align 4
  br label %93

93:                                               ; preds = %88, %81
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr @IBV_WC_EX_WITH_SLID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, ptr @mlx4_cq_read_wc_slid, align 4
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds %struct.mlx4_cq, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, ptr %103, i32 0, i32 3
  store i32 %101, ptr %104, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr @IBV_WC_EX_WITH_SL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, ptr @mlx4_cq_read_wc_sl, align 4
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.mlx4_cq, ptr %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, ptr %115, i32 0, i32 2
  store i32 %113, ptr %116, align 4
  br label %117

117:                                              ; preds = %112, %105
  %118 = load ptr, ptr %4, align 8
  %119 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr @IBV_WC_EX_WITH_DLID_PATH_BITS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load i32, ptr @mlx4_cq_read_wc_dlid_path_bits, align 4
  %126 = load ptr, ptr %3, align 8
  %127 = getelementptr inbounds %struct.mlx4_cq, ptr %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, ptr %127, i32 0, i32 1
  store i32 %125, ptr %128, align 4
  br label %129

129:                                              ; preds = %124, %117
  %130 = load ptr, ptr %4, align 8
  %131 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, ptr %130, i32 0, i32 0
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr @IBV_WC_EX_WITH_COMPLETION_TIMESTAMP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, ptr @mlx4_cq_read_wc_completion_ts, align 4
  %138 = load ptr, ptr %3, align 8
  %139 = getelementptr inbounds %struct.mlx4_cq, ptr %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, ptr %139, i32 0, i32 0
  store i32 %137, ptr %140, align 4
  br label %141

141:                                              ; preds = %136, %129
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
