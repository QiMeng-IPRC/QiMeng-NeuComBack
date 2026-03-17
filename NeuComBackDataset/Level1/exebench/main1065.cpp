#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int OPM_opt ; 
extern  int OPV_ansi ; 
extern  int OPV_assert ; 
extern  int OPV_inxchk ; 
extern  int OPV_mainprog ; 
extern  scalar_t__ OPV_nofExitLabels ; 
extern  scalar_t__ OPV_recno ; 
extern  scalar_t__ OPV_stamp ; 
extern "C" { void OPV_Init (void);
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

  output_json["OPM_opt"] = OPM_opt;

  output_json["OPV_ansi"] = OPV_ansi;

  output_json["OPV_assert"] = OPV_assert;

  output_json["OPV_inxchk"] = OPV_inxchk;

  output_json["OPV_mainprog"] = OPV_mainprog;

  output_json["OPV_nofExitLabels"] = OPV_nofExitLabels;

  output_json["OPV_recno"] = OPV_recno;

  output_json["OPV_stamp"] = OPV_stamp;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  OPM_opt = input_json["OPM_opt"];
  OPV_ansi = input_json["OPV_ansi"];
  OPV_assert = input_json["OPV_assert"];
  OPV_inxchk = input_json["OPV_inxchk"];
  OPV_mainprog = input_json["OPV_mainprog"];
  OPV_nofExitLabels = input_json["OPV_nofExitLabels"];
  OPV_recno = input_json["OPV_recno"];
  OPV_stamp = input_json["OPV_stamp"];
  clock_t begin = clock();
  OPV_Init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}