#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct gr_info_s {int scalefac_compress; unsigned int preflag; int block_type; scalar_t__ mixed_block_flag; } ;
struct TYPE_14__ {int* wordpointer; int bitindex; } ;
struct TYPE_13__ {int member_0; int member_1; int member_2; int /*<<< orphan*/  member_3; } ;
struct TYPE_12__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_11__ {int member_0; int member_1; int member_2; int /*<<< orphan*/  member_3; } ;
struct TYPE_10__ {int member_0; int member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; int member_3; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; } ;

/* Variables and functions */
extern  TYPE_7__ bsi ; 
extern  unsigned int* i_slen2 ; 
extern  unsigned int* n_slen2 ; 
extern  unsigned long rval ; 
extern "C" { int III_get_scale_factors_2(int *scf,struct gr_info_s *gr_info,int i_stereo);
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

void write_output(int* scf, struct gr_info_s* gr_info, int i_stereo, int returnv) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = scf[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["scf"] = output_temp_5;
  struct gr_info_s output_temp_8 = *gr_info;
  json output_temp_9;

  output_temp_9["scalefac_compress"] = output_temp_8.scalefac_compress;

  output_temp_9["preflag"] = output_temp_8.preflag;

  output_temp_9["block_type"] = output_temp_8.block_type;

  output_temp_9["mixed_block_flag"] = output_temp_8.mixed_block_flag;
  output_json["gr_info"] = output_temp_9;
  json output_temp_10;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = bsi.wordpointer[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_temp_10["wordpointer"] = output_temp_11;

  output_temp_10["bitindex"] = bsi.bitindex;
  output_json["bsi"] = output_temp_10;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    unsigned int output_temp_16 = i_slen2[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["i_slen2"] = output_temp_14;
  std::vector<json> output_temp_17;
  for (unsigned int i18 = 0; i18 < 32; i18++) {
    unsigned int output_temp_19 = n_slen2[i18];

    output_temp_17.push_back(output_temp_19);
  }
  output_json["n_slen2"] = output_temp_17;

  output_json["rval"] = rval;

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
  for (auto& elem : input_json["scf"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* scf = &input_temp_1_vec[0];
  int gr_info_pointer__scalefac_compress = input_json["gr_info"]["scalefac_compress"];
  unsigned int gr_info_pointer__preflag = input_json["gr_info"]["preflag"];
  int gr_info_pointer__block_type = input_json["gr_info"]["block_type"];
  long int gr_info_pointer__mixed_block_flag = input_json["gr_info"]["mixed_block_flag"];
  struct gr_info_s gr_info_pointer = {gr_info_pointer__scalefac_compress, gr_info_pointer__preflag, gr_info_pointer__block_type, gr_info_pointer__mixed_block_flag};
  struct gr_info_s* gr_info = &gr_info_pointer;
  int i_stereo = input_json["i_stereo"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["bsi"]["wordpointer"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* bsi__wordpointer = &input_temp_2_vec[0];
  int bsi__bitindex = input_json["bsi"]["bitindex"];
  bsi = {bsi__wordpointer, bsi__bitindex};
  std::vector<unsigned int> input_temp_3_vec;
  for (auto& elem : input_json["i_slen2"]) {
    unsigned int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  i_slen2 = &input_temp_3_vec[0];
  std::vector<unsigned int> input_temp_4_vec;
  for (auto& elem : input_json["n_slen2"]) {
    unsigned int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  n_slen2 = &input_temp_4_vec[0];
  rval = input_json["rval"];
  clock_t begin = clock();
  int returnv = III_get_scale_factors_2(scf, gr_info, i_stereo);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(scf, gr_info, i_stereo, returnv);
}