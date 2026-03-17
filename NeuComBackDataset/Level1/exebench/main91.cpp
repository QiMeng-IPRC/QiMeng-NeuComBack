#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  t2 ;
typedef  int t1 ;
struct TYPE_2__ {int* R; int CPSR; } ;

/* Variables and functions */
extern  TYPE_1__ CPU ; 
extern "C" { void thumb_cmp(u16 Rd, u16 Rs);
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

void write_output(unsigned long int Rd, unsigned long int Rs) {
  json output_json;
  json output_temp_2;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = CPU.R[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["R"] = output_temp_3;

  output_temp_2["CPSR"] = CPU.CPSR;
  output_json["CPU"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int Rd = input_json["Rd"];
  unsigned long int Rs = input_json["Rs"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["CPU"]["R"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* CPU__R = &input_temp_1_vec[0];
  int CPU__CPSR = input_json["CPU"]["CPSR"];
  CPU = {CPU__R, CPU__CPSR};
  clock_t begin = clock();
  thumb_cmp(Rd, Rs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(Rd, Rs);
}