#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ XSTRING ;

/* Variables and functions */
extern "C" { int EqXString(XSTRING * dxs,XSTRING * sxs);
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

void write_output(TYPE_1__* dxs, TYPE_1__* sxs, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *dxs;
  json output_temp_2;

  output_temp_2["len"] = output_temp_1.len;

  output_temp_2["text"] = output_temp_1.text;
  output_json["dxs"] = output_temp_2;
  TYPE_1__ output_temp_3 = *sxs;
  json output_temp_4;

  output_temp_4["len"] = output_temp_3.len;

  output_temp_4["text"] = output_temp_3.text;
  output_json["sxs"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dxs_pointer__len = input_json["dxs"]["len"];
  int dxs_pointer__text = input_json["dxs"]["text"];
  TYPE_1__ dxs_pointer = {dxs_pointer__len, dxs_pointer__text};
  TYPE_1__* dxs = &dxs_pointer;
  int sxs_pointer__len = input_json["sxs"]["len"];
  int sxs_pointer__text = input_json["sxs"]["text"];
  TYPE_1__ sxs_pointer = {sxs_pointer__len, sxs_pointer__text};
  TYPE_1__* sxs = &sxs_pointer;
  clock_t begin = clock();
  int returnv = EqXString(dxs, sxs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dxs, sxs, returnv);
}