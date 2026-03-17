#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int e; int hi; int lo; } ;
typedef  TYPE_1__ Internal ;

/* Variables and functions */
extern  int CarryBit ; 
extern  int ExpInfinity ; 
extern  int FractBits ; 
extern  int HiddenBit ; 
extern "C" { void renormalise(Internal *i);
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

void write_output(TYPE_1__* i) {
  json output_json;
  TYPE_1__ output_temp_1 = *i;
  json output_temp_2;

  output_temp_2["e"] = output_temp_1.e;

  output_temp_2["hi"] = output_temp_1.hi;

  output_temp_2["lo"] = output_temp_1.lo;
  output_json["i"] = output_temp_2;

  output_json["CarryBit"] = CarryBit;

  output_json["ExpInfinity"] = ExpInfinity;

  output_json["FractBits"] = FractBits;

  output_json["HiddenBit"] = HiddenBit;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int i_pointer__e = input_json["i"]["e"];
  int i_pointer__hi = input_json["i"]["hi"];
  int i_pointer__lo = input_json["i"]["lo"];
  TYPE_1__ i_pointer = {i_pointer__e, i_pointer__hi, i_pointer__lo};
  TYPE_1__* i = &i_pointer;
  CarryBit = input_json["CarryBit"];
  ExpInfinity = input_json["ExpInfinity"];
  FractBits = input_json["FractBits"];
  HiddenBit = input_json["HiddenBit"];
  clock_t begin = clock();
  renormalise(i);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(i);
}