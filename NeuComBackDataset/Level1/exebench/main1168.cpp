#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dimr; int disr; int dbtosr; int drtosr; int dsesr; int dbosr; int dcr; int dbtocr; } ;
struct TYPE_3__ {int pccr0; int pccr1; } ;

/* Variables and functions */
extern  TYPE_2__* dmac ; 
extern  TYPE_1__* pll_clock ; 
extern "C" { void dmac_init();
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
  TYPE_2__ output_temp_1 = *dmac;
  json output_temp_2;

  output_temp_2["dimr"] = output_temp_1.dimr;

  output_temp_2["disr"] = output_temp_1.disr;

  output_temp_2["dbtosr"] = output_temp_1.dbtosr;

  output_temp_2["drtosr"] = output_temp_1.drtosr;

  output_temp_2["dsesr"] = output_temp_1.dsesr;

  output_temp_2["dbosr"] = output_temp_1.dbosr;

  output_temp_2["dcr"] = output_temp_1.dcr;

  output_temp_2["dbtocr"] = output_temp_1.dbtocr;
  output_json["dmac"] = output_temp_2;
  TYPE_1__ output_temp_3 = *pll_clock;
  json output_temp_4;

  output_temp_4["pccr0"] = output_temp_3.pccr0;

  output_temp_4["pccr1"] = output_temp_3.pccr1;
  output_json["pll_clock"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dmac_pointer__dimr = input_json["dmac"]["dimr"];
  int dmac_pointer__disr = input_json["dmac"]["disr"];
  int dmac_pointer__dbtosr = input_json["dmac"]["dbtosr"];
  int dmac_pointer__drtosr = input_json["dmac"]["drtosr"];
  int dmac_pointer__dsesr = input_json["dmac"]["dsesr"];
  int dmac_pointer__dbosr = input_json["dmac"]["dbosr"];
  int dmac_pointer__dcr = input_json["dmac"]["dcr"];
  int dmac_pointer__dbtocr = input_json["dmac"]["dbtocr"];
  TYPE_2__ dmac_pointer = {dmac_pointer__dimr, dmac_pointer__disr, dmac_pointer__dbtosr, dmac_pointer__drtosr, dmac_pointer__dsesr, dmac_pointer__dbosr, dmac_pointer__dcr, dmac_pointer__dbtocr};
  dmac = &dmac_pointer;
  int pll_clock_pointer__pccr0 = input_json["pll_clock"]["pccr0"];
  int pll_clock_pointer__pccr1 = input_json["pll_clock"]["pccr1"];
  TYPE_1__ pll_clock_pointer = {pll_clock_pointer__pccr0, pll_clock_pointer__pccr1};
  pll_clock = &pll_clock_pointer;
  clock_t begin = clock();
  dmac_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}