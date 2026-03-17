#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reg ;
struct TYPE_2__ {int member_0; int member_1; } ;
typedef  size_t SANE_Int ;

/* Variables and functions */
extern "C" { void hp3800_vrefs(SANE_Int res, SANE_Int *ser, SANE_Int *ler);
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

void write_output(unsigned long int res, unsigned long int* ser, unsigned long int* ler) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    unsigned long int output_temp_5 = ser[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["ser"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    unsigned long int output_temp_8 = ler[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["ler"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int res = input_json["res"];
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["ser"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* ser = &input_temp_1_vec[0];
  std::vector<unsigned long int> input_temp_2_vec;
  for (auto& elem : input_json["ler"]) {
    unsigned long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  unsigned long int* ler = &input_temp_2_vec[0];
  clock_t begin = clock();
  hp3800_vrefs(res, ser, ler);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(res, ser, ler);
}