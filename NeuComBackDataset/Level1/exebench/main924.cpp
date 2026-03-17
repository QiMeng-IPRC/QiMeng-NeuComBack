#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pcm_io_func ;
typedef  int /*<<< orphan*/  dev_st ;
struct TYPE_4__ {int /*<<< orphan*/ * pcm_write; int /*<<< orphan*/ * pdevice_st; } ;
struct TYPE_3__ {int /*<<< orphan*/ * pcm_read; int /*<<< orphan*/ * pdevice_st; } ;

/* Variables and functions */
extern  TYPE_2__ dst_dev ; 
extern  TYPE_1__ src_dev ; 
extern "C" { unsigned int pcm_device_init (const dev_st* const src, const dev_st* const dst, const pcm_io_func* const pcm_read, const pcm_io_func* const pcm_write);
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

void write_output(int* src, int* dst, int* pcm_read, int* pcm_write, unsigned int returnv) {
  json output_json;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    int output_temp_11 = src[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["src"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = dst[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["dst"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = pcm_read[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["pcm_read"] = output_temp_15;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    int output_temp_20 = pcm_write[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["pcm_write"] = output_temp_18;
  json output_temp_21;
  std::vector<json> output_temp_22;
  for (unsigned int i23 = 0; i23 < 32; i23++) {
    int output_temp_24 = dst_dev.pcm_write[i23];

    output_temp_22.push_back(output_temp_24);
  }
  output_temp_21["pcm_write"] = output_temp_22;
  std::vector<json> output_temp_25;
  for (unsigned int i26 = 0; i26 < 32; i26++) {
    int output_temp_27 = dst_dev.pdevice_st[i26];

    output_temp_25.push_back(output_temp_27);
  }
  output_temp_21["pdevice_st"] = output_temp_25;
  output_json["dst_dev"] = output_temp_21;
  json output_temp_28;
  std::vector<json> output_temp_29;
  for (unsigned int i30 = 0; i30 < 32; i30++) {
    int output_temp_31 = src_dev.pcm_read[i30];

    output_temp_29.push_back(output_temp_31);
  }
  output_temp_28["pcm_read"] = output_temp_29;
  std::vector<json> output_temp_32;
  for (unsigned int i33 = 0; i33 < 32; i33++) {
    int output_temp_34 = src_dev.pdevice_st[i33];

    output_temp_32.push_back(output_temp_34);
  }
  output_temp_28["pdevice_st"] = output_temp_32;
  output_json["src_dev"] = output_temp_28;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["src"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* src = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["dst"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* dst = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["pcm_read"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* pcm_read = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["pcm_write"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* pcm_write = &input_temp_4_vec[0];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["dst_dev"]["pcm_write"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  int* dst_dev__pcm_write = &input_temp_5_vec[0];
  std::vector<int> input_temp_6_vec;
  for (auto& elem : input_json["dst_dev"]["pdevice_st"]) {
    int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  int* dst_dev__pdevice_st = &input_temp_6_vec[0];
  dst_dev = {dst_dev__pcm_write, dst_dev__pdevice_st};
  std::vector<int> input_temp_7_vec;
  for (auto& elem : input_json["src_dev"]["pcm_read"]) {
    int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  int* src_dev__pcm_read = &input_temp_7_vec[0];
  std::vector<int> input_temp_8_vec;
  for (auto& elem : input_json["src_dev"]["pdevice_st"]) {
    int input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  int* src_dev__pdevice_st = &input_temp_8_vec[0];
  src_dev = {src_dev__pcm_read, src_dev__pdevice_st};
  clock_t begin = clock();
  unsigned int returnv = pcm_device_init(src, dst, pcm_read, pcm_write);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(src, dst, pcm_read, pcm_write, returnv);
}