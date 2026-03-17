#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  read_completion_ts; int /*<<< orphan*/  read_dlid_path_bits; int /*<<< orphan*/  read_sl; int /*<<< orphan*/  read_slid; int /*<<< orphan*/  read_src_qp; int /*<<< orphan*/  read_qp_num; int /*<<< orphan*/  read_imm_data; int /*<<< orphan*/  read_byte_len; int /*<<< orphan*/  read_wc_flags; int /*<<< orphan*/  read_vendor_err; int /*<<< orphan*/  read_opcode; int /*<<< orphan*/  next_poll; int /*<<< orphan*/  end_poll; int /*<<< orphan*/  start_poll; } ;
struct mlx4_cq {int flags; TYPE_1__ ibv_cq; } ;
struct ibv_cq_init_attr_ex {int wc_flags; } ;

/* Variables and functions */
extern  int IBV_WC_EX_WITH_BYTE_LEN ; 
extern  int IBV_WC_EX_WITH_COMPLETION_TIMESTAMP ; 
extern  int IBV_WC_EX_WITH_DLID_PATH_BITS ; 
extern  int IBV_WC_EX_WITH_IMM ; 
extern  int IBV_WC_EX_WITH_QP_NUM ; 
extern  int IBV_WC_EX_WITH_SL ; 
extern  int IBV_WC_EX_WITH_SLID ; 
extern  int IBV_WC_EX_WITH_SRC_QP ; 
extern  int MLX4_CQ_FLAGS_SINGLE_THREADED ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_byte_len ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_completion_ts ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_dlid_path_bits ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_flags ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_imm_data ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_opcode ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_qp_num ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_sl ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_slid ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_src_qp ; 
extern  int /*<<< orphan*/  mlx4_cq_read_wc_vendor_err ; 
extern  int /*<<< orphan*/  mlx4_end_poll ; 
extern  int /*<<< orphan*/  mlx4_end_poll_lock ; 
extern  int /*<<< orphan*/  mlx4_next_poll ; 
extern  int /*<<< orphan*/  mlx4_start_poll ; 
extern  int /*<<< orphan*/  mlx4_start_poll_lock ; 
extern "C" { void mlx4_cq_fill_pfns(struct mlx4_cq *cq, const struct ibv_cq_init_attr_ex *cq_attr);
 }

#include <vector>
#include <nlohmann/json.hpp>
#include <fstream>
#include <iomanip>
#include <clib/synthesizer.h>
#include <time.h>
#include <math.h>
#include <iostream>
char* output_file;
char* pre_accel_dump_file;  // optional dump file.
using json = nlohmann::json;
const char* __asan_default_options() {
  return "detect_leaks=0";
}

clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
  AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
  AcceleratorTotalNanos += (clock()) - AcceleratorStart;
}

void write_output(struct mlx4_cq* cq, struct ibv_cq_init_attr_ex* cq_attr) {
  json output_json;
  struct mlx4_cq output_temp_1 = *cq;
  json output_temp_2;

  output_temp_2["flags"] = output_temp_1.flags;
  json output_temp_3;

  output_temp_3["read_completion_ts"] = output_temp_1.ibv_cq.read_completion_ts;

  output_temp_3["read_dlid_path_bits"] = output_temp_1.ibv_cq.read_dlid_path_bits;

  output_temp_3["read_sl"] = output_temp_1.ibv_cq.read_sl;

  output_temp_3["read_slid"] = output_temp_1.ibv_cq.read_slid;

  output_temp_3["read_src_qp"] = output_temp_1.ibv_cq.read_src_qp;

  output_temp_3["read_qp_num"] = output_temp_1.ibv_cq.read_qp_num;

  output_temp_3["read_imm_data"] = output_temp_1.ibv_cq.read_imm_data;

  output_temp_3["read_byte_len"] = output_temp_1.ibv_cq.read_byte_len;

  output_temp_3["read_wc_flags"] = output_temp_1.ibv_cq.read_wc_flags;

  output_temp_3["read_vendor_err"] = output_temp_1.ibv_cq.read_vendor_err;

  output_temp_3["read_opcode"] = output_temp_1.ibv_cq.read_opcode;

  output_temp_3["next_poll"] = output_temp_1.ibv_cq.next_poll;

  output_temp_3["end_poll"] = output_temp_1.ibv_cq.end_poll;

  output_temp_3["start_poll"] = output_temp_1.ibv_cq.start_poll;
  output_temp_2["ibv_cq"] = output_temp_3;
  output_json["cq"] = output_temp_2;
  struct ibv_cq_init_attr_ex output_temp_4 = *cq_attr;
  json output_temp_5;

  output_temp_5["wc_flags"] = output_temp_4.wc_flags;
  output_json["cq_attr"] = output_temp_5;

  output_json["IBV_WC_EX_WITH_BYTE_LEN"] = IBV_WC_EX_WITH_BYTE_LEN;

  output_json["IBV_WC_EX_WITH_COMPLETION_TIMESTAMP"] = IBV_WC_EX_WITH_COMPLETION_TIMESTAMP;

  output_json["IBV_WC_EX_WITH_DLID_PATH_BITS"] = IBV_WC_EX_WITH_DLID_PATH_BITS;

  output_json["IBV_WC_EX_WITH_IMM"] = IBV_WC_EX_WITH_IMM;

  output_json["IBV_WC_EX_WITH_QP_NUM"] = IBV_WC_EX_WITH_QP_NUM;

  output_json["IBV_WC_EX_WITH_SL"] = IBV_WC_EX_WITH_SL;

  output_json["IBV_WC_EX_WITH_SLID"] = IBV_WC_EX_WITH_SLID;

  output_json["IBV_WC_EX_WITH_SRC_QP"] = IBV_WC_EX_WITH_SRC_QP;

  output_json["MLX4_CQ_FLAGS_SINGLE_THREADED"] = MLX4_CQ_FLAGS_SINGLE_THREADED;

  output_json["mlx4_cq_read_wc_byte_len"] = mlx4_cq_read_wc_byte_len;

  output_json["mlx4_cq_read_wc_completion_ts"] = mlx4_cq_read_wc_completion_ts;

  output_json["mlx4_cq_read_wc_dlid_path_bits"] = mlx4_cq_read_wc_dlid_path_bits;

  output_json["mlx4_cq_read_wc_flags"] = mlx4_cq_read_wc_flags;

  output_json["mlx4_cq_read_wc_imm_data"] = mlx4_cq_read_wc_imm_data;

  output_json["mlx4_cq_read_wc_opcode"] = mlx4_cq_read_wc_opcode;

  output_json["mlx4_cq_read_wc_qp_num"] = mlx4_cq_read_wc_qp_num;

  output_json["mlx4_cq_read_wc_sl"] = mlx4_cq_read_wc_sl;

  output_json["mlx4_cq_read_wc_slid"] = mlx4_cq_read_wc_slid;

  output_json["mlx4_cq_read_wc_src_qp"] = mlx4_cq_read_wc_src_qp;

  output_json["mlx4_cq_read_wc_vendor_err"] = mlx4_cq_read_wc_vendor_err;

  output_json["mlx4_end_poll"] = mlx4_end_poll;

  output_json["mlx4_end_poll_lock"] = mlx4_end_poll_lock;

  output_json["mlx4_next_poll"] = mlx4_next_poll;

  output_json["mlx4_start_poll"] = mlx4_start_poll;

  output_json["mlx4_start_poll_lock"] = mlx4_start_poll_lock;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cq_pointer__flags = input_json["cq"]["flags"];
  int cq_pointer__ibv_cq__read_completion_ts = input_json["cq"]["ibv_cq"]["read_completion_ts"];
  int cq_pointer__ibv_cq__read_dlid_path_bits = input_json["cq"]["ibv_cq"]["read_dlid_path_bits"];
  int cq_pointer__ibv_cq__read_sl = input_json["cq"]["ibv_cq"]["read_sl"];
  int cq_pointer__ibv_cq__read_slid = input_json["cq"]["ibv_cq"]["read_slid"];
  int cq_pointer__ibv_cq__read_src_qp = input_json["cq"]["ibv_cq"]["read_src_qp"];
  int cq_pointer__ibv_cq__read_qp_num = input_json["cq"]["ibv_cq"]["read_qp_num"];
  int cq_pointer__ibv_cq__read_imm_data = input_json["cq"]["ibv_cq"]["read_imm_data"];
  int cq_pointer__ibv_cq__read_byte_len = input_json["cq"]["ibv_cq"]["read_byte_len"];
  int cq_pointer__ibv_cq__read_wc_flags = input_json["cq"]["ibv_cq"]["read_wc_flags"];
  int cq_pointer__ibv_cq__read_vendor_err = input_json["cq"]["ibv_cq"]["read_vendor_err"];
  int cq_pointer__ibv_cq__read_opcode = input_json["cq"]["ibv_cq"]["read_opcode"];
  int cq_pointer__ibv_cq__next_poll = input_json["cq"]["ibv_cq"]["next_poll"];
  int cq_pointer__ibv_cq__end_poll = input_json["cq"]["ibv_cq"]["end_poll"];
  int cq_pointer__ibv_cq__start_poll = input_json["cq"]["ibv_cq"]["start_poll"];
  TYPE_1__ cq_pointer__ibv_cq = {cq_pointer__ibv_cq__read_completion_ts, cq_pointer__ibv_cq__read_dlid_path_bits, cq_pointer__ibv_cq__read_sl, cq_pointer__ibv_cq__read_slid, cq_pointer__ibv_cq__read_src_qp, cq_pointer__ibv_cq__read_qp_num, cq_pointer__ibv_cq__read_imm_data, cq_pointer__ibv_cq__read_byte_len, cq_pointer__ibv_cq__read_wc_flags, cq_pointer__ibv_cq__read_vendor_err, cq_pointer__ibv_cq__read_opcode, cq_pointer__ibv_cq__next_poll, cq_pointer__ibv_cq__end_poll, cq_pointer__ibv_cq__start_poll};
  struct mlx4_cq cq_pointer = {cq_pointer__flags, cq_pointer__ibv_cq};
  struct mlx4_cq* cq = &cq_pointer;
  int cq_attr_pointer__wc_flags = input_json["cq_attr"]["wc_flags"];
  struct ibv_cq_init_attr_ex cq_attr_pointer = {cq_attr_pointer__wc_flags};
  struct ibv_cq_init_attr_ex* cq_attr = &cq_attr_pointer;
  IBV_WC_EX_WITH_BYTE_LEN = input_json["IBV_WC_EX_WITH_BYTE_LEN"];
  IBV_WC_EX_WITH_COMPLETION_TIMESTAMP = input_json["IBV_WC_EX_WITH_COMPLETION_TIMESTAMP"];
  IBV_WC_EX_WITH_DLID_PATH_BITS = input_json["IBV_WC_EX_WITH_DLID_PATH_BITS"];
  IBV_WC_EX_WITH_IMM = input_json["IBV_WC_EX_WITH_IMM"];
  IBV_WC_EX_WITH_QP_NUM = input_json["IBV_WC_EX_WITH_QP_NUM"];
  IBV_WC_EX_WITH_SL = input_json["IBV_WC_EX_WITH_SL"];
  IBV_WC_EX_WITH_SLID = input_json["IBV_WC_EX_WITH_SLID"];
  IBV_WC_EX_WITH_SRC_QP = input_json["IBV_WC_EX_WITH_SRC_QP"];
  MLX4_CQ_FLAGS_SINGLE_THREADED = input_json["MLX4_CQ_FLAGS_SINGLE_THREADED"];
  mlx4_cq_read_wc_byte_len = input_json["mlx4_cq_read_wc_byte_len"];
  mlx4_cq_read_wc_completion_ts = input_json["mlx4_cq_read_wc_completion_ts"];
  mlx4_cq_read_wc_dlid_path_bits = input_json["mlx4_cq_read_wc_dlid_path_bits"];
  mlx4_cq_read_wc_flags = input_json["mlx4_cq_read_wc_flags"];
  mlx4_cq_read_wc_imm_data = input_json["mlx4_cq_read_wc_imm_data"];
  mlx4_cq_read_wc_opcode = input_json["mlx4_cq_read_wc_opcode"];
  mlx4_cq_read_wc_qp_num = input_json["mlx4_cq_read_wc_qp_num"];
  mlx4_cq_read_wc_sl = input_json["mlx4_cq_read_wc_sl"];
  mlx4_cq_read_wc_slid = input_json["mlx4_cq_read_wc_slid"];
  mlx4_cq_read_wc_src_qp = input_json["mlx4_cq_read_wc_src_qp"];
  mlx4_cq_read_wc_vendor_err = input_json["mlx4_cq_read_wc_vendor_err"];
  mlx4_end_poll = input_json["mlx4_end_poll"];
  mlx4_end_poll_lock = input_json["mlx4_end_poll_lock"];
  mlx4_next_poll = input_json["mlx4_next_poll"];
  mlx4_start_poll = input_json["mlx4_start_poll"];
  mlx4_start_poll_lock = input_json["mlx4_start_poll_lock"];
  clock_t begin = clock();
  mlx4_cq_fill_pfns(cq, cq_attr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cq, cq_attr);
}