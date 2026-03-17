#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  OSUINT32 ;
typedef  TYPE_1__ OSCTXT ;

/* Variables and functions */
extern "C" { void rtxCtxtClearFlag (OSCTXT* pctxt, OSUINT32 mask);
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

void write_output(TYPE_1__* pctxt, int mask) {
  json output_json;
  TYPE_1__ output_temp_1 = *pctxt;
  json output_temp_2;

  output_temp_2["flags"] = output_temp_1.flags;
  output_json["pctxt"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pctxt_pointer__flags = input_json["pctxt"]["flags"];
  TYPE_1__ pctxt_pointer = {pctxt_pointer__flags};
  TYPE_1__* pctxt = &pctxt_pointer;
  int mask = input_json["mask"];
  clock_t begin = clock();
  rtxCtxtClearFlag(pctxt, mask);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pctxt, mask);
}