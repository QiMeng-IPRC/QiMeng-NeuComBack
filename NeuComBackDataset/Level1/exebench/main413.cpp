#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int DACPixelFormat; int DACStreamCtrl; } ;
typedef  TYPE_1__ STG4000REG ;

/* Variables and functions */
extern "C" { void EnableOverlayPlane(volatile STG4000REG * pSTGReg);
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

void write_output(TYPE_1__* pSTGReg) {
  json output_json;
  TYPE_1__ output_temp_1 = *pSTGReg;
  json output_temp_2;

  output_temp_2["DACPixelFormat"] = output_temp_1.DACPixelFormat;

  output_temp_2["DACStreamCtrl"] = output_temp_1.DACStreamCtrl;
  output_json["pSTGReg"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pSTGReg_pointer__DACPixelFormat = input_json["pSTGReg"]["DACPixelFormat"];
  int pSTGReg_pointer__DACStreamCtrl = input_json["pSTGReg"]["DACStreamCtrl"];
  TYPE_1__ pSTGReg_pointer = {pSTGReg_pointer__DACPixelFormat, pSTGReg_pointer__DACStreamCtrl};
  TYPE_1__* pSTGReg = &pSTGReg_pointer;
  clock_t begin = clock();
  EnableOverlayPlane(pSTGReg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pSTGReg);
}