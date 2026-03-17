#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned short s1; } ;
struct TYPE_6__ {unsigned char b3; } ;
struct TYPE_8__ {TYPE_1__ byshort; TYPE_2__ bybytes; } ;
struct TYPE_7__ {int dcbmode; TYPE_4__ dcbdata0; } ;
struct newport_regs {TYPE_3__ set; } ;

/* Variables and functions */
extern "C" { unsigned short newport_vc2_get(struct newport_regs *regs, unsigned char vc2ireg);
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

void write_output(struct newport_regs* regs, unsigned char vc2ireg, unsigned short returnv) {
  json output_json;
  struct newport_regs output_temp_1 = *regs;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["dcbmode"] = output_temp_1.set.dcbmode;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["s1"] = output_temp_1.set.dcbdata0.byshort.s1;
  output_temp_4["byshort"] = output_temp_5;
  json output_temp_6;

  output_temp_6["b3"] = output_temp_1.set.dcbdata0.bybytes.b3;
  output_temp_4["bybytes"] = output_temp_6;
  output_temp_3["dcbdata0"] = output_temp_4;
  output_temp_2["set"] = output_temp_3;
  output_json["regs"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int regs_pointer__set__dcbmode = input_json["regs"]["set"]["dcbmode"];
  unsigned short regs_pointer__set__dcbdata0__byshort__s1 = input_json["regs"]["set"]["dcbdata0"]["byshort"]["s1"];
  TYPE_1__ regs_pointer__set__dcbdata0__byshort = {regs_pointer__set__dcbdata0__byshort__s1};
  unsigned char regs_pointer__set__dcbdata0__bybytes__b3 = input_json["regs"]["set"]["dcbdata0"]["bybytes"]["b3"];
  TYPE_2__ regs_pointer__set__dcbdata0__bybytes = {regs_pointer__set__dcbdata0__bybytes__b3};
  TYPE_4__ regs_pointer__set__dcbdata0 = {regs_pointer__set__dcbdata0__byshort, regs_pointer__set__dcbdata0__bybytes};
  TYPE_3__ regs_pointer__set = {regs_pointer__set__dcbmode, regs_pointer__set__dcbdata0};
  struct newport_regs regs_pointer = {regs_pointer__set};
  struct newport_regs* regs = &regs_pointer;
  unsigned char vc2ireg = input_json["vc2ireg"];
  clock_t begin = clock();
  unsigned short returnv = newport_vc2_get(regs, vc2ireg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(regs, vc2ireg, returnv);
}