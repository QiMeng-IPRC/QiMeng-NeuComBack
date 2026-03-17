#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int c; int d; } ;
struct TYPE_5__ {int hi; int lo; } ;
typedef  TYPE_1__ CsrWord64 ;
typedef  TYPE_2__ CsrKeySchedule ;

/* Variables and functions */
extern "C" { void pc2(CsrKeySchedule *ks, CsrWord64 *sk);
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

void write_output(TYPE_2__* ks, TYPE_1__* sk) {
  json output_json;
  TYPE_2__ output_temp_1 = *ks;
  json output_temp_2;

  output_temp_2["c"] = output_temp_1.c;

  output_temp_2["d"] = output_temp_1.d;
  output_json["ks"] = output_temp_2;
  TYPE_1__ output_temp_3 = *sk;
  json output_temp_4;

  output_temp_4["hi"] = output_temp_3.hi;

  output_temp_4["lo"] = output_temp_3.lo;
  output_json["sk"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ks_pointer__c = input_json["ks"]["c"];
  int ks_pointer__d = input_json["ks"]["d"];
  TYPE_2__ ks_pointer = {ks_pointer__c, ks_pointer__d};
  TYPE_2__* ks = &ks_pointer;
  int sk_pointer__hi = input_json["sk"]["hi"];
  int sk_pointer__lo = input_json["sk"]["lo"];
  TYPE_1__ sk_pointer = {sk_pointer__hi, sk_pointer__lo};
  TYPE_1__* sk = &sk_pointer;
  clock_t begin = clock();
  pc2(ks, sk);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ks, sk);
}