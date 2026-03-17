; ModuleID = '../benchmarks/fine_grained/exebench/kernel82.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel82.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MLX4_CQ_FLAGS_SINGLE_THREADED = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_start_poll = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_end_poll = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_start_poll_lock = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_end_poll_lock = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_next_poll = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_opcode = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_vendor_err = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_flags = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_BYTE_LEN = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_byte_len = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_IMM = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_imm_data = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_QP_NUM = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_qp_num = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_SRC_QP = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_src_qp = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_SLID = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_slid = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_SL = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_sl = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_DLID_PATH_BITS = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_dlid_path_bits = dso_local local_unnamed_addr global i32 0, align 4
@IBV_WC_EX_WITH_COMPLETION_TIMESTAMP = dso_local local_unnamed_addr global i32 0, align 4
@mlx4_cq_read_wc_completion_ts = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @mlx4_cq_fill_pfns(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !5
  %4 = load i32, ptr @MLX4_CQ_FLAGS_SINGLE_THREADED, align 4, !tbaa !11
  %5 = and i32 %4, %3
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @mlx4_end_poll_lock, align 4
  %8 = load i32, ptr @mlx4_end_poll, align 4
  %9 = select i1 %6, i32 %7, i32 %8
  %10 = load i32, ptr @mlx4_start_poll_lock, align 4
  %11 = load i32, ptr @mlx4_start_poll, align 4
  %12 = select i1 %6, i32 %10, i32 %11
  %13 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 13
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 12
  store i32 %9, ptr %14, align 4
  %15 = load i32, ptr @mlx4_next_poll, align 4, !tbaa !11
  %16 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 11
  store i32 %15, ptr %17, align 4, !tbaa !12
  %18 = load i32, ptr @mlx4_cq_read_wc_opcode, align 4, !tbaa !11
  %19 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 10
  store i32 %18, ptr %19, align 4, !tbaa !13
  %20 = load i32, ptr @mlx4_cq_read_wc_vendor_err, align 4, !tbaa !11
  %21 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 9
  store i32 %20, ptr %21, align 4, !tbaa !14
  %22 = load i32, ptr @mlx4_cq_read_wc_flags, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 8
  store i32 %22, ptr %23, align 4, !tbaa !15
  %24 = load i32, ptr %1, align 4, !tbaa !16
  %25 = load i32, ptr @IBV_WC_EX_WITH_BYTE_LEN, align 4, !tbaa !11
  %26 = and i32 %25, %24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, ptr @mlx4_cq_read_wc_byte_len, align 4, !tbaa !11
  %30 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 7
  store i32 %29, ptr %30, align 4, !tbaa !18
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, ptr @IBV_WC_EX_WITH_IMM, align 4, !tbaa !11
  %33 = and i32 %32, %24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr @mlx4_cq_read_wc_imm_data, align 4, !tbaa !11
  %37 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 6
  store i32 %36, ptr %37, align 4, !tbaa !19
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, ptr @IBV_WC_EX_WITH_QP_NUM, align 4, !tbaa !11
  %40 = and i32 %39, %24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr @mlx4_cq_read_wc_qp_num, align 4, !tbaa !11
  %44 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 5
  store i32 %43, ptr %44, align 4, !tbaa !20
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, ptr @IBV_WC_EX_WITH_SRC_QP, align 4, !tbaa !11
  %47 = and i32 %46, %24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr @mlx4_cq_read_wc_src_qp, align 4, !tbaa !11
  %51 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 4
  store i32 %50, ptr %51, align 4, !tbaa !21
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, ptr @IBV_WC_EX_WITH_SLID, align 4, !tbaa !11
  %54 = and i32 %53, %24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr @mlx4_cq_read_wc_slid, align 4, !tbaa !11
  %58 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 3
  store i32 %57, ptr %58, align 4, !tbaa !22
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, ptr @IBV_WC_EX_WITH_SL, align 4, !tbaa !11
  %61 = and i32 %60, %24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr @mlx4_cq_read_wc_sl, align 4, !tbaa !11
  %65 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 2
  store i32 %64, ptr %65, align 4, !tbaa !23
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, ptr @IBV_WC_EX_WITH_DLID_PATH_BITS, align 4, !tbaa !11
  %68 = and i32 %67, %24
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr @mlx4_cq_read_wc_dlid_path_bits, align 4, !tbaa !11
  %72 = getelementptr inbounds %struct.mlx4_cq, ptr %0, i64 0, i32 1, i32 1
  store i32 %71, ptr %72, align 4, !tbaa !24
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, ptr @IBV_WC_EX_WITH_COMPLETION_TIMESTAMP, align 4, !tbaa !11
  %75 = and i32 %74, %24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr @mlx4_cq_read_wc_completion_ts, align 4, !tbaa !11
  store i32 %78, ptr %16, align 4, !tbaa !25
  br label %79

79:                                               ; preds = %77, %73
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"mlx4_cq", !7, i64 0, !10, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !7, i64 48}
!13 = !{!6, !7, i64 44}
!14 = !{!6, !7, i64 40}
!15 = !{!6, !7, i64 36}
!16 = !{!17, !7, i64 0}
!17 = !{!"ibv_cq_init_attr_ex", !7, i64 0}
!18 = !{!6, !7, i64 32}
!19 = !{!6, !7, i64 28}
!20 = !{!6, !7, i64 24}
!21 = !{!6, !7, i64 20}
!22 = !{!6, !7, i64 16}
!23 = !{!6, !7, i64 12}
!24 = !{!6, !7, i64 8}
!25 = !{!6, !7, i64 4}
