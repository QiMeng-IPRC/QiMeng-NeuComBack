#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  font_calc_vref; } ;
typedef  TYPE_1__ ucg_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  ucg_font_calc_vref_top ; 
extern "C" { void ucg_SetFontPosTop(ucg_t *ucg);
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

void write_output(TYPE_1__* ucg) {
  json output_json;
  TYPE_1__ output_temp_1 = *ucg;
  json output_temp_2;

  output_temp_2["font_calc_vref"] = output_temp_1.font_calc_vref;
  output_json["ucg"] = output_temp_2;

  output_json["ucg_font_calc_vref_top"] = ucg_font_calc_vref_top;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ucg_pointer__font_calc_vref = input_json["ucg"]["font_calc_vref"];
  TYPE_1__ ucg_pointer = {ucg_pointer__font_calc_vref};
  TYPE_1__* ucg = &ucg_pointer;
  ucg_font_calc_vref_top = input_json["ucg_font_calc_vref_top"];
  clock_t begin = clock();
  ucg_SetFontPosTop(ucg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ucg);
}