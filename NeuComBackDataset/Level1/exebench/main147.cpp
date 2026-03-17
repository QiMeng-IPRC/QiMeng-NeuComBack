#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t layer; } ;
struct TYPE_5__ {size_t subseq_layer_num; int average_bit_rate; int average_frame_rate; int* ref_subseq_layer_num; int* ref_subseq_id; scalar_t__ num_referenced_subseqs; scalar_t__ average_rate_flag; scalar_t__ duration_flag; int /*<<< orphan*/  subseq_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  subseq_id; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  TRUE ; 
extern  TYPE_3__* img ; 
extern  int /*<<< orphan*/  seiHasSubseqChar ; 
extern  TYPE_2__ seiSubseqChar ; 
extern  TYPE_1__* seiSubseqInfo ; 
extern "C" { void UpdateSubseqChar();
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

void write_output() {
  json output_json;

  output_json["TRUE"] = TRUE;
  TYPE_3__ output_temp_4 = *img;
  json output_temp_5;

  output_temp_5["layer"] = output_temp_4.layer;
  output_json["img"] = output_temp_5;

  output_json["seiHasSubseqChar"] = seiHasSubseqChar;
  json output_temp_6;

  output_temp_6["subseq_layer_num"] = seiSubseqChar.subseq_layer_num;

  output_temp_6["average_bit_rate"] = seiSubseqChar.average_bit_rate;

  output_temp_6["average_frame_rate"] = seiSubseqChar.average_frame_rate;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = seiSubseqChar.ref_subseq_layer_num[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_6["ref_subseq_layer_num"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = seiSubseqChar.ref_subseq_id[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_temp_6["ref_subseq_id"] = output_temp_10;

  output_temp_6["num_referenced_subseqs"] = seiSubseqChar.num_referenced_subseqs;

  output_temp_6["average_rate_flag"] = seiSubseqChar.average_rate_flag;

  output_temp_6["duration_flag"] = seiSubseqChar.duration_flag;

  output_temp_6["subseq_id"] = seiSubseqChar.subseq_id;
  output_json["seiSubseqChar"] = output_temp_6;
  std::vector<json> output_temp_13;
  for (unsigned int i14 = 0; i14 < 32; i14++) {
    TYPE_1__ output_temp_15 = seiSubseqInfo[i14];
    json output_temp_16;

    output_temp_16["subseq_id"] = output_temp_15.subseq_id;
    output_temp_13.push_back(output_temp_16);
  }
  output_json["seiSubseqInfo"] = output_temp_13;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  TRUE = input_json["TRUE"];
  unsigned long int img_pointer__layer = input_json["img"]["layer"];
  TYPE_3__ img_pointer = {img_pointer__layer};
  img = &img_pointer;
  seiHasSubseqChar = input_json["seiHasSubseqChar"];
  unsigned long int seiSubseqChar__subseq_layer_num = input_json["seiSubseqChar"]["subseq_layer_num"];
  int seiSubseqChar__average_bit_rate = input_json["seiSubseqChar"]["average_bit_rate"];
  int seiSubseqChar__average_frame_rate = input_json["seiSubseqChar"]["average_frame_rate"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["seiSubseqChar"]["ref_subseq_layer_num"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* seiSubseqChar__ref_subseq_layer_num = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["seiSubseqChar"]["ref_subseq_id"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* seiSubseqChar__ref_subseq_id = &input_temp_2_vec[0];
  long int seiSubseqChar__num_referenced_subseqs = input_json["seiSubseqChar"]["num_referenced_subseqs"];
  long int seiSubseqChar__average_rate_flag = input_json["seiSubseqChar"]["average_rate_flag"];
  long int seiSubseqChar__duration_flag = input_json["seiSubseqChar"]["duration_flag"];
  int seiSubseqChar__subseq_id = input_json["seiSubseqChar"]["subseq_id"];
  seiSubseqChar = {seiSubseqChar__subseq_layer_num, seiSubseqChar__average_bit_rate, seiSubseqChar__average_frame_rate, seiSubseqChar__ref_subseq_layer_num, seiSubseqChar__ref_subseq_id, seiSubseqChar__num_referenced_subseqs, seiSubseqChar__average_rate_flag, seiSubseqChar__duration_flag, seiSubseqChar__subseq_id};
  std::vector<TYPE_1__> input_temp_3_vec;
  for (auto& elem : input_json["seiSubseqInfo"]) {
    int input_temp_3_inner__subseq_id = elem["subseq_id"];
    TYPE_1__ input_temp_3_inner = {input_temp_3_inner__subseq_id};
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  seiSubseqInfo = &input_temp_3_vec[0];
  clock_t begin = clock();
  UpdateSubseqChar();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}