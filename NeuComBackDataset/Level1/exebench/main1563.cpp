#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* b; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;

/* Variables and functions */
extern  size_t AH ; 
extern  size_t AL ; 
extern  TYPE_2__ I ; 
extern  int nec_ICount ; 
extern "C" { void i_cbw(void);
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

  output_json["AH"] = AH;

  output_json["AL"] = AL;
  json output_temp_2;
  json output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = I.regs.b[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_temp_3["b"] = output_temp_4;
  output_temp_2["regs"] = output_temp_3;
  output_json["I"] = output_temp_2;

  output_json["nec_ICount"] = nec_ICount;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  AH = input_json["AH"];
  AL = input_json["AL"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["I"]["regs"]["b"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* I__regs__b = &input_temp_1_vec[0];
  TYPE_1__ I__regs = {I__regs__b};
  I = {I__regs};
  nec_ICount = input_json["nec_ICount"];
  clock_t begin = clock();
  i_cbw();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}