#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  modifier_t ;
struct TYPE_3__ {int /*<<< orphan*/  modifier_equip; } ;
typedef  TYPE_1__ chr_t ;
typedef  int bool_t ;

/* Variables and functions */
extern "C" { bool_t get_modifier_equip( chr_t *chr, modifier_t *m );
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

void write_output(TYPE_1__* chr, int* m, int returnv) {
  json output_json;
  TYPE_1__ output_temp_2 = *chr;
  json output_temp_3;

  output_temp_3["modifier_equip"] = output_temp_2.modifier_equip;
  output_json["chr"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = m[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["m"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int chr_pointer__modifier_equip = input_json["chr"]["modifier_equip"];
  TYPE_1__ chr_pointer = {chr_pointer__modifier_equip};
  TYPE_1__* chr = &chr_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["m"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* m = &input_temp_1_vec[0];
  clock_t begin = clock();
  int returnv = get_modifier_equip(chr, m);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(chr, m, returnv);
}