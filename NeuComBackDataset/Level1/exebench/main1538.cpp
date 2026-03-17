#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ ES0 ; 
extern  scalar_t__ ET1 ; 
extern  int PCON ; 
extern  scalar_t__ RI ; 
extern  int SCON ; 
extern  int TH1 ; 
extern  scalar_t__ TI ; 
extern  int TMOD ; 
extern  int TR1 ; 
extern "C" { void InitSerial(void);
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

  output_json["ES0"] = ES0;

  output_json["ET1"] = ET1;

  output_json["PCON"] = PCON;

  output_json["RI"] = RI;

  output_json["SCON"] = SCON;

  output_json["TH1"] = TH1;

  output_json["TI"] = TI;

  output_json["TMOD"] = TMOD;

  output_json["TR1"] = TR1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  ES0 = input_json["ES0"];
  ET1 = input_json["ET1"];
  PCON = input_json["PCON"];
  RI = input_json["RI"];
  SCON = input_json["SCON"];
  TH1 = input_json["TH1"];
  TI = input_json["TI"];
  TMOD = input_json["TMOD"];
  TR1 = input_json["TR1"];
  clock_t begin = clock();
  InitSerial();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}