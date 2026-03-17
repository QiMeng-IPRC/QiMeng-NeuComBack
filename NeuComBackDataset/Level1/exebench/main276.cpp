#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float tv_sec; scalar_t__ tv_usec; } ;
struct duration {TYPE_1__ elapsed; } ;

/* Variables and functions */
extern "C" { float duration_elapsed(const struct duration *duration);
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

void write_output(struct duration* duration, float returnv) {
  json output_json;
  struct duration output_temp_1 = *duration;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["tv_sec"] = output_temp_1.elapsed.tv_sec;

  output_temp_3["tv_usec"] = output_temp_1.elapsed.tv_usec;
  output_temp_2["elapsed"] = output_temp_3;
  output_json["duration"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float duration_pointer__elapsed__tv_sec = input_json["duration"]["elapsed"]["tv_sec"];
  long int duration_pointer__elapsed__tv_usec = input_json["duration"]["elapsed"]["tv_usec"];
  TYPE_1__ duration_pointer__elapsed = {duration_pointer__elapsed__tv_sec, duration_pointer__elapsed__tv_usec};
  struct duration duration_pointer = {duration_pointer__elapsed};
  struct duration* duration = &duration_pointer;
  clock_t begin = clock();
  float returnv = duration_elapsed(duration);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(duration, returnv);
}