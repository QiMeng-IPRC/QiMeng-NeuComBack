#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  DACC_IDR; } ;

/* Variables and functions */
extern  TYPE_1__* DACC ; 
extern  int /*<<< orphan*/  DACC_IDR_ENDTX ; 
extern "C" { void dacStop();
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
  TYPE_1__ output_temp_1 = *DACC;
  json output_temp_2;

  output_temp_2["DACC_IDR"] = output_temp_1.DACC_IDR;
  output_json["DACC"] = output_temp_2;

  output_json["DACC_IDR_ENDTX"] = DACC_IDR_ENDTX;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int DACC_pointer__DACC_IDR = input_json["DACC"]["DACC_IDR"];
  TYPE_1__ DACC_pointer = {DACC_pointer__DACC_IDR};
  DACC = &DACC_pointer;
  DACC_IDR_ENDTX = input_json["DACC_IDR_ENDTX"];
  clock_t begin = clock();
  dacStop();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}