#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int high; unsigned int low; } ;

/* Variables and functions */
extern  TYPE_1__ bb_flips ; 
extern  int* lsb_mask ; 
extern  int* right_contiguous ; 
extern  int* right_flip ; 
extern "C" { int TestFlips_bitboard_b2( unsigned int my_bits_high, unsigned int my_bits_low, unsigned int opp_bits_high, unsigned int opp_bits_low );
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

void write_output(unsigned int my_bits_high, unsigned int my_bits_low, unsigned int opp_bits_high, unsigned int opp_bits_low, int returnv) {
  json output_json;
  json output_temp_4;

  output_temp_4["high"] = bb_flips.high;

  output_temp_4["low"] = bb_flips.low;
  output_json["bb_flips"] = output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = lsb_mask[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["lsb_mask"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = right_contiguous[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["right_contiguous"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = right_flip[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["right_flip"] = output_temp_11;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int my_bits_high = input_json["my_bits_high"];
  unsigned int my_bits_low = input_json["my_bits_low"];
  unsigned int opp_bits_high = input_json["opp_bits_high"];
  unsigned int opp_bits_low = input_json["opp_bits_low"];
  unsigned int bb_flips__high = input_json["bb_flips"]["high"];
  unsigned int bb_flips__low = input_json["bb_flips"]["low"];
  bb_flips = {bb_flips__high, bb_flips__low};
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["lsb_mask"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  lsb_mask = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["right_contiguous"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  right_contiguous = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["right_flip"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  right_flip = &input_temp_3_vec[0];
  clock_t begin = clock();
  int returnv = TestFlips_bitboard_b2(my_bits_high, my_bits_low, opp_bits_high, opp_bits_low);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(my_bits_high, my_bits_low, opp_bits_high, opp_bits_low, returnv);
}