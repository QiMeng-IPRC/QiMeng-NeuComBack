#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* ops; int memsz; int /*<<< orphan*/ * mem; } ;

/* Variables and functions */
extern  TYPE_1__ ivm ; 
extern "C" { int op_not();
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

void write_output(int returnv) {
  json output_json;
  json output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = ivm.ops[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_temp_3["ops"] = output_temp_4;

  output_temp_3["memsz"] = ivm.memsz;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = ivm.mem[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_3["mem"] = output_temp_7;
  output_json["ivm"] = output_temp_3;

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
  for (auto& elem : input_json["ivm"]["ops"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* ivm__ops = &input_temp_1_vec[0];
  int ivm__memsz = input_json["ivm"]["memsz"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["ivm"]["mem"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* ivm__mem = &input_temp_2_vec[0];
  ivm = {ivm__ops, ivm__memsz, ivm__mem};
  clock_t begin = clock();
  int returnv = op_not();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(returnv);
}