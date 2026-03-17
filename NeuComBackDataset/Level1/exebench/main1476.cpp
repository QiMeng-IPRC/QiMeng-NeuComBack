#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  float Cut1 ; 
extern  float Cut2 ; 
extern  int Lambda ; 
extern  float SimTol ; 
extern  scalar_t__ Trace ; 
extern  int VectLen ; 
extern "C" { void Set_Default_Parms();
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

  output_json["Cut1"] = Cut1;

  output_json["Cut2"] = Cut2;

  output_json["Lambda"] = Lambda;

  output_json["SimTol"] = SimTol;

  output_json["Trace"] = Trace;

  output_json["VectLen"] = VectLen;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  Cut1 = input_json["Cut1"];
  Cut2 = input_json["Cut2"];
  Lambda = input_json["Lambda"];
  SimTol = input_json["SimTol"];
  Trace = input_json["Trace"];
  VectLen = input_json["VectLen"];
  clock_t begin = clock();
  Set_Default_Parms();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}