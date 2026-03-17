#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ulonglong ;
struct TYPE_3__ {int buflen; int bufpos; int bufbase; } ;
typedef  TYPE_1__ MatroskaFile ;

/* Variables and functions */
extern "C" { void skipbytes(MatroskaFile *mf,ulonglong len);
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

void write_output(TYPE_1__* mf, int len) {
  json output_json;
  TYPE_1__ output_temp_1 = *mf;
  json output_temp_2;

  output_temp_2["buflen"] = output_temp_1.buflen;

  output_temp_2["bufpos"] = output_temp_1.bufpos;

  output_temp_2["bufbase"] = output_temp_1.bufbase;
  output_json["mf"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int mf_pointer__buflen = input_json["mf"]["buflen"];
  int mf_pointer__bufpos = input_json["mf"]["bufpos"];
  int mf_pointer__bufbase = input_json["mf"]["bufbase"];
  TYPE_1__ mf_pointer = {mf_pointer__buflen, mf_pointer__bufpos, mf_pointer__bufbase};
  TYPE_1__* mf = &mf_pointer;
  int len = input_json["len"];
  clock_t begin = clock();
  skipbytes(mf, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mf, len);
}