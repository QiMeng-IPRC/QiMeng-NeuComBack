#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  DMACR; } ;
typedef  TYPE_1__ LPC_SSP_T ;

/* Variables and functions */
extern  int /*<<< orphan*/  SSP_DMA_BITMASK ; 
extern "C" { void Chip_SSP_DMA_Disable(LPC_SSP_T *pSSP);
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

void write_output(TYPE_1__* pSSP) {
  json output_json;
  TYPE_1__ output_temp_1 = *pSSP;
  json output_temp_2;

  output_temp_2["DMACR"] = output_temp_1.DMACR;
  output_json["pSSP"] = output_temp_2;

  output_json["SSP_DMA_BITMASK"] = SSP_DMA_BITMASK;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pSSP_pointer__DMACR = input_json["pSSP"]["DMACR"];
  TYPE_1__ pSSP_pointer = {pSSP_pointer__DMACR};
  TYPE_1__* pSSP = &pSSP_pointer;
  SSP_DMA_BITMASK = input_json["SSP_DMA_BITMASK"];
  clock_t begin = clock();
  Chip_SSP_DMA_Disable(pSSP);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pSSP);
}