#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {TYPE_1__ t_elapsed; } ;
typedef  TYPE_2__ fer_timer_t ;

/* Variables and functions */
extern "C" { float ferTimerElapsedInSF(const fer_timer_t *t);
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

void write_output(TYPE_2__* t, float returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *t;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["tv_nsec"] = output_temp_1.t_elapsed.tv_nsec;

  output_temp_3["tv_sec"] = output_temp_1.t_elapsed.tv_sec;
  output_temp_2["t_elapsed"] = output_temp_3;
  output_json["t"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float t_pointer__t_elapsed__tv_nsec = input_json["t"]["t_elapsed"]["tv_nsec"];
  long int t_pointer__t_elapsed__tv_sec = input_json["t"]["t_elapsed"]["tv_sec"];
  TYPE_1__ t_pointer__t_elapsed = {t_pointer__t_elapsed__tv_nsec, t_pointer__t_elapsed__tv_sec};
  TYPE_2__ t_pointer = {t_pointer__t_elapsed};
  TYPE_2__* t = &t_pointer;
  clock_t begin = clock();
  float returnv = ferTimerElapsedInSF(t);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(t, returnv);
}