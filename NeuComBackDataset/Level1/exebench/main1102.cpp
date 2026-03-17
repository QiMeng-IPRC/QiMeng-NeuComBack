#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dimnnbr; } ;
struct TYPE_5__ {int bitsset; scalar_t__ dimncur; } ;
typedef  TYPE_1__ ArchHcubDom ;
typedef  TYPE_2__ ArchHcub ;
typedef  int ArchDomNum ;

/* Variables and functions */
extern "C" { int archHcubDomTerm ( const ArchHcub * const archptr, ArchHcubDom * const domnptr, const ArchDomNum domnnum);
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

void write_output(TYPE_2__* archptr, TYPE_1__* domnptr, int domnnum, int returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *archptr;
  json output_temp_2;

  output_temp_2["dimnnbr"] = output_temp_1.dimnnbr;
  output_json["archptr"] = output_temp_2;
  TYPE_1__ output_temp_3 = *domnptr;
  json output_temp_4;

  output_temp_4["bitsset"] = output_temp_3.bitsset;

  output_temp_4["dimncur"] = output_temp_3.dimncur;
  output_json["domnptr"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int archptr_pointer__dimnnbr = input_json["archptr"]["dimnnbr"];
  TYPE_2__ archptr_pointer = {archptr_pointer__dimnnbr};
  TYPE_2__* archptr = &archptr_pointer;
  int domnptr_pointer__bitsset = input_json["domnptr"]["bitsset"];
  long int domnptr_pointer__dimncur = input_json["domnptr"]["dimncur"];
  TYPE_1__ domnptr_pointer = {domnptr_pointer__bitsset, domnptr_pointer__dimncur};
  TYPE_1__* domnptr = &domnptr_pointer;
  int domnnum = input_json["domnnum"];
  clock_t begin = clock();
  int returnv = archHcubDomTerm(archptr, domnptr, domnnum);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(archptr, domnptr, domnnum, returnv);
}