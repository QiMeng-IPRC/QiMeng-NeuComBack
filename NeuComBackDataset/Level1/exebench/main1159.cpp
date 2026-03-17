#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mUINT_8 ;
struct TYPE_4__ {int /*<<< orphan*/  fiq1Select; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
struct TYPE_6__ {TYPE_2__ cpuIntrCntl0; } ;

/* Variables and functions */
extern  TYPE_3__ rSFRS ; 
extern "C" { void mSFRfiq1Sel (mUINT_8 value);
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

void write_output(int value) {
  json output_json;
  json output_temp_1;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["fiq1Select"] = rSFRS.cpuIntrCntl0.bits.fiq1Select;
  output_temp_2["bits"] = output_temp_3;
  output_temp_1["cpuIntrCntl0"] = output_temp_2;
  output_json["rSFRS"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int value = input_json["value"];
  int rSFRS__cpuIntrCntl0__bits__fiq1Select = input_json["rSFRS"]["cpuIntrCntl0"]["bits"]["fiq1Select"];
  TYPE_1__ rSFRS__cpuIntrCntl0__bits = {rSFRS__cpuIntrCntl0__bits__fiq1Select};
  TYPE_2__ rSFRS__cpuIntrCntl0 = {rSFRS__cpuIntrCntl0__bits};
  rSFRS = {rSFRS__cpuIntrCntl0};
  clock_t begin = clock();
  mSFRfiq1Sel(value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(value);
}