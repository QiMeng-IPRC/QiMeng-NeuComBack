#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  unsigned char al_reg ; 
extern  unsigned char ax_reg ; 
extern  unsigned char bh_reg ; 
extern  unsigned char di_reg ; 
extern  unsigned char eax_reg ; 
extern  unsigned char edi_reg ; 
extern "C" { unsigned char indep_regnum(unsigned char reg);
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

void write_output(unsigned char reg, unsigned char returnv) {
  json output_json;

  output_json["al_reg"] = al_reg;

  output_json["ax_reg"] = ax_reg;

  output_json["bh_reg"] = bh_reg;

  output_json["di_reg"] = di_reg;

  output_json["eax_reg"] = eax_reg;

  output_json["edi_reg"] = edi_reg;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned char reg = input_json["reg"];
  al_reg = input_json["al_reg"];
  ax_reg = input_json["ax_reg"];
  bh_reg = input_json["bh_reg"];
  di_reg = input_json["di_reg"];
  eax_reg = input_json["eax_reg"];
  edi_reg = input_json["edi_reg"];
  clock_t begin = clock();
  unsigned char returnv = indep_regnum(reg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(reg, returnv);
}