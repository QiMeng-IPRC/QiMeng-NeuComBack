#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ rate; scalar_t__ last_allowed; int n_calls_since_last_time; } ;
typedef  TYPE_1__ ratelim_t ;

/* Variables and functions */
extern "C" { int rate_limit_is_ready(ratelim_t *lim, time_t now);
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

void write_output(TYPE_1__* lim, long int now, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *lim;
  json output_temp_2;

  output_temp_2["rate"] = output_temp_1.rate;

  output_temp_2["last_allowed"] = output_temp_1.last_allowed;

  output_temp_2["n_calls_since_last_time"] = output_temp_1.n_calls_since_last_time;
  output_json["lim"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int lim_pointer__rate = input_json["lim"]["rate"];
  long int lim_pointer__last_allowed = input_json["lim"]["last_allowed"];
  int lim_pointer__n_calls_since_last_time = input_json["lim"]["n_calls_since_last_time"];
  TYPE_1__ lim_pointer = {lim_pointer__rate, lim_pointer__last_allowed, lim_pointer__n_calls_since_last_time};
  TYPE_1__* lim = &lim_pointer;
  long int now = input_json["now"];
  clock_t begin = clock();
  int returnv = rate_limit_is_ready(lim, now);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(lim, now, returnv);
}