#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  syscall_id ;
typedef  int /*<<< orphan*/  ddword ;

/* Variables and functions */
extern  int millis_ellapsed ; 
extern "C" { int on_tick(syscall_id id, ddword arg1, ddword arg2, ddword arg3);
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

void write_output(int id, int arg1, int arg2, int arg3, int returnv) {
  json output_json;

  output_json["millis_ellapsed"] = millis_ellapsed;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int id = input_json["id"];
  int arg1 = input_json["arg1"];
  int arg2 = input_json["arg2"];
  int arg3 = input_json["arg3"];
  millis_ellapsed = input_json["millis_ellapsed"];
  clock_t begin = clock();
  int returnv = on_tick(id, arg1, arg2, arg3);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(id, arg1, arg2, arg3, returnv);
}