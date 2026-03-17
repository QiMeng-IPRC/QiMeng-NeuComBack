#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int prevuser; int curuser; int PS; int /*<<< orphan*/  KSP; int /*<<< orphan*/ * R; int /*<<< orphan*/  USP; } ;

/* Variables and functions */
extern  TYPE_1__ cpu ; 
extern "C" { void switchmode(const int newm);
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

void write_output(int newm) {
  json output_json;
  json output_temp_2;

  output_temp_2["prevuser"] = cpu.prevuser;

  output_temp_2["curuser"] = cpu.curuser;

  output_temp_2["PS"] = cpu.PS;

  output_temp_2["KSP"] = cpu.KSP;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = cpu.R[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["R"] = output_temp_3;

  output_temp_2["USP"] = cpu.USP;
  output_json["cpu"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int newm = input_json["newm"];
  int cpu__prevuser = input_json["cpu"]["prevuser"];
  int cpu__curuser = input_json["cpu"]["curuser"];
  int cpu__PS = input_json["cpu"]["PS"];
  int cpu__KSP = input_json["cpu"]["KSP"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["cpu"]["R"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* cpu__R = &input_temp_1_vec[0];
  int cpu__USP = input_json["cpu"]["USP"];
  cpu = {cpu__prevuser, cpu__curuser, cpu__PS, cpu__KSP, cpu__R, cpu__USP};
  clock_t begin = clock();
  switchmode(newm);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(newm);
}