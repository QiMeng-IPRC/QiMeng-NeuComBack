#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int BRC_X0 ; 
extern  int BRC_X1 ; 
extern  int BRC_X2 ; 
extern  int BRC_X3 ; 
extern  int LFSR_S0 ; 
extern  int LFSR_S11 ; 
extern  int LFSR_S14 ; 
extern  int LFSR_S15 ; 
extern  int LFSR_S2 ; 
extern  int LFSR_S5 ; 
extern  int LFSR_S7 ; 
extern  int LFSR_S9 ; 
extern "C" { void BitReorganization();
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

  output_json["BRC_X0"] = BRC_X0;

  output_json["BRC_X1"] = BRC_X1;

  output_json["BRC_X2"] = BRC_X2;

  output_json["BRC_X3"] = BRC_X3;

  output_json["LFSR_S0"] = LFSR_S0;

  output_json["LFSR_S11"] = LFSR_S11;

  output_json["LFSR_S14"] = LFSR_S14;

  output_json["LFSR_S15"] = LFSR_S15;

  output_json["LFSR_S2"] = LFSR_S2;

  output_json["LFSR_S5"] = LFSR_S5;

  output_json["LFSR_S7"] = LFSR_S7;

  output_json["LFSR_S9"] = LFSR_S9;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  BRC_X0 = input_json["BRC_X0"];
  BRC_X1 = input_json["BRC_X1"];
  BRC_X2 = input_json["BRC_X2"];
  BRC_X3 = input_json["BRC_X3"];
  LFSR_S0 = input_json["LFSR_S0"];
  LFSR_S11 = input_json["LFSR_S11"];
  LFSR_S14 = input_json["LFSR_S14"];
  LFSR_S15 = input_json["LFSR_S15"];
  LFSR_S2 = input_json["LFSR_S2"];
  LFSR_S5 = input_json["LFSR_S5"];
  LFSR_S7 = input_json["LFSR_S7"];
  LFSR_S9 = input_json["LFSR_S9"];
  clock_t begin = clock();
  BitReorganization();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}