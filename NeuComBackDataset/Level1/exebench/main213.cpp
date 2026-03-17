#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct mb_interpreter_t {int /*<<< orphan*/  error_handler; } ;
typedef  int /*<<< orphan*/  mb_error_handler_t ;

/* Variables and functions */
extern "C" { int mb_set_error_handler(struct mb_interpreter_t* s, mb_error_handler_t h);
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

void write_output(struct mb_interpreter_t* s, int h, int returnv) {
  json output_json;
  struct mb_interpreter_t output_temp_1 = *s;
  json output_temp_2;

  output_temp_2["error_handler"] = output_temp_1.error_handler;
  output_json["s"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__error_handler = input_json["s"]["error_handler"];
  struct mb_interpreter_t s_pointer = {s_pointer__error_handler};
  struct mb_interpreter_t* s = &s_pointer;
  int h = input_json["h"];
  clock_t begin = clock();
  int returnv = mb_set_error_handler(s, h);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, h, returnv);
}