#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* title; } ;
typedef  TYPE_1__ vwnd_t ;

/* Variables and functions */
extern "C" { void viper_window_set_title(vwnd_t *vwnd, const char *title);
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

void write_output(TYPE_1__* vwnd, char* title) {
  json output_json;
  TYPE_1__ output_temp_1 = *vwnd;
  json output_temp_2;

  output_temp_2["title"] = output_temp_1.title;
  output_json["vwnd"] = output_temp_2;

  output_json["title"] = title;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* vwnd_pointer__title = strdup(input_json["vwnd"]["title"].get<std::string>().c_str());
  TYPE_1__ vwnd_pointer = {vwnd_pointer__title};
  TYPE_1__* vwnd = &vwnd_pointer;
  char* title = strdup(input_json["title"].get<std::string>().c_str());
  clock_t begin = clock();
  viper_window_set_title(vwnd, title);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(vwnd, title);
}