#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mUINT_16 ;
struct TYPE_3__ {int /*<<< orphan*/  all; } ;
struct TYPE_4__ {TYPE_1__ stepdownCntl0; } ;

/* Variables and functions */
extern  TYPE_2__ rSFRS2 ; 
extern "C" { void mSFR2setStepDnCntl0(mUINT_16 val);
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

void write_output(int val) {
  json output_json;
  json output_temp_1;
  json output_temp_2;

  output_temp_2["all"] = rSFRS2.stepdownCntl0.all;
  output_temp_1["stepdownCntl0"] = output_temp_2;
  output_json["rSFRS2"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int val = input_json["val"];
  int rSFRS2__stepdownCntl0__all = input_json["rSFRS2"]["stepdownCntl0"]["all"];
  TYPE_1__ rSFRS2__stepdownCntl0 = {rSFRS2__stepdownCntl0__all};
  rSFRS2 = {rSFRS2__stepdownCntl0};
  clock_t begin = clock();
  mSFR2setStepDnCntl0(val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(val);
}