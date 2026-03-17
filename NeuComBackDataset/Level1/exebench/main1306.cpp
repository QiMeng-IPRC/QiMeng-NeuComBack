#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct fman_sp_int_context_data_copy {int ext_buf_offset; int size; scalar_t__ int_context_offset; } ;
struct fman_sp_buffer_offsets {int prs_result_offset; int time_stamp_offset; int hash_result_offset; int data_offset; } ;
struct fman_sp_buf_margins {int start_margins; } ;
struct fman_prs_result {int dummy; } ;
struct fman_buffer_prefix_content {int priv_data_size; int data_align; scalar_t__ pass_prs_result; scalar_t__ pass_hash_result; scalar_t__ pass_time_stamp; } ;

/* Variables and functions */
extern  scalar_t__ ILLEGAL_BASE ; 
extern  int OFFSET_UNITS ; 
extern "C" { int fman_sp_build_buffer_struct(struct fman_sp_int_context_data_copy * int_context_data_copy, struct fman_buffer_prefix_content * buffer_prefix_content, struct fman_sp_buf_margins *buf_margins, struct fman_sp_buffer_offsets *buffer_offsets, u8 *internal_buf_offset);
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

void write_output(struct fman_sp_int_context_data_copy* int_context_data_copy, struct fman_buffer_prefix_content* buffer_prefix_content, struct fman_sp_buf_margins* buf_margins, struct fman_sp_buffer_offsets* buffer_offsets, long int* internal_buf_offset, int returnv) {
  json output_json;
  struct fman_sp_int_context_data_copy output_temp_2 = *int_context_data_copy;
  json output_temp_3;

  output_temp_3["ext_buf_offset"] = output_temp_2.ext_buf_offset;

  output_temp_3["size"] = output_temp_2.size;

  output_temp_3["int_context_offset"] = output_temp_2.int_context_offset;
  output_json["int_context_data_copy"] = output_temp_3;
  struct fman_buffer_prefix_content output_temp_4 = *buffer_prefix_content;
  json output_temp_5;

  output_temp_5["priv_data_size"] = output_temp_4.priv_data_size;

  output_temp_5["data_align"] = output_temp_4.data_align;

  output_temp_5["pass_prs_result"] = output_temp_4.pass_prs_result;

  output_temp_5["pass_hash_result"] = output_temp_4.pass_hash_result;

  output_temp_5["pass_time_stamp"] = output_temp_4.pass_time_stamp;
  output_json["buffer_prefix_content"] = output_temp_5;
  struct fman_sp_buf_margins output_temp_6 = *buf_margins;
  json output_temp_7;

  output_temp_7["start_margins"] = output_temp_6.start_margins;
  output_json["buf_margins"] = output_temp_7;
  struct fman_sp_buffer_offsets output_temp_8 = *buffer_offsets;
  json output_temp_9;

  output_temp_9["prs_result_offset"] = output_temp_8.prs_result_offset;

  output_temp_9["time_stamp_offset"] = output_temp_8.time_stamp_offset;

  output_temp_9["hash_result_offset"] = output_temp_8.hash_result_offset;

  output_temp_9["data_offset"] = output_temp_8.data_offset;
  output_json["buffer_offsets"] = output_temp_9;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    long int output_temp_12 = internal_buf_offset[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["internal_buf_offset"] = output_temp_10;

  output_json["ILLEGAL_BASE"] = ILLEGAL_BASE;

  output_json["OFFSET_UNITS"] = OFFSET_UNITS;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int int_context_data_copy_pointer__ext_buf_offset = input_json["int_context_data_copy"]["ext_buf_offset"];
  int int_context_data_copy_pointer__size = input_json["int_context_data_copy"]["size"];
  long int int_context_data_copy_pointer__int_context_offset = input_json["int_context_data_copy"]["int_context_offset"];
  struct fman_sp_int_context_data_copy int_context_data_copy_pointer = {int_context_data_copy_pointer__ext_buf_offset, int_context_data_copy_pointer__size, int_context_data_copy_pointer__int_context_offset};
  struct fman_sp_int_context_data_copy* int_context_data_copy = &int_context_data_copy_pointer;
  int buffer_prefix_content_pointer__priv_data_size = input_json["buffer_prefix_content"]["priv_data_size"];
  int buffer_prefix_content_pointer__data_align = input_json["buffer_prefix_content"]["data_align"];
  long int buffer_prefix_content_pointer__pass_prs_result = input_json["buffer_prefix_content"]["pass_prs_result"];
  long int buffer_prefix_content_pointer__pass_hash_result = input_json["buffer_prefix_content"]["pass_hash_result"];
  long int buffer_prefix_content_pointer__pass_time_stamp = input_json["buffer_prefix_content"]["pass_time_stamp"];
  struct fman_buffer_prefix_content buffer_prefix_content_pointer = {buffer_prefix_content_pointer__priv_data_size, buffer_prefix_content_pointer__data_align, buffer_prefix_content_pointer__pass_prs_result, buffer_prefix_content_pointer__pass_hash_result, buffer_prefix_content_pointer__pass_time_stamp};
  struct fman_buffer_prefix_content* buffer_prefix_content = &buffer_prefix_content_pointer;
  int buf_margins_pointer__start_margins = input_json["buf_margins"]["start_margins"];
  struct fman_sp_buf_margins buf_margins_pointer = {buf_margins_pointer__start_margins};
  struct fman_sp_buf_margins* buf_margins = &buf_margins_pointer;
  int buffer_offsets_pointer__prs_result_offset = input_json["buffer_offsets"]["prs_result_offset"];
  int buffer_offsets_pointer__time_stamp_offset = input_json["buffer_offsets"]["time_stamp_offset"];
  int buffer_offsets_pointer__hash_result_offset = input_json["buffer_offsets"]["hash_result_offset"];
  int buffer_offsets_pointer__data_offset = input_json["buffer_offsets"]["data_offset"];
  struct fman_sp_buffer_offsets buffer_offsets_pointer = {buffer_offsets_pointer__prs_result_offset, buffer_offsets_pointer__time_stamp_offset, buffer_offsets_pointer__hash_result_offset, buffer_offsets_pointer__data_offset};
  struct fman_sp_buffer_offsets* buffer_offsets = &buffer_offsets_pointer;
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["internal_buf_offset"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* internal_buf_offset = &input_temp_1_vec[0];
  ILLEGAL_BASE = input_json["ILLEGAL_BASE"];
  OFFSET_UNITS = input_json["OFFSET_UNITS"];
  clock_t begin = clock();
  int returnv = fman_sp_build_buffer_struct(int_context_data_copy, buffer_prefix_content, buf_margins, buffer_offsets, internal_buf_offset);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(int_context_data_copy, buffer_prefix_content, buf_margins, buffer_offsets, internal_buf_offset, returnv);
}