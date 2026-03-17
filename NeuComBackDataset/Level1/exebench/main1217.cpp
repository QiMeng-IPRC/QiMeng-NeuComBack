#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct apei_exec_context {int /*<<< orphan*/  value; } ;

/* Variables and functions */
extern "C" { void apei_exec_ctx_set_input(struct apei_exec_context *ctx, u64 input);
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

void write_output(struct apei_exec_context* ctx, int input) {
  json output_json;
  struct apei_exec_context output_temp_1 = *ctx;
  json output_temp_2;

  output_temp_2["value"] = output_temp_1.value;
  output_json["ctx"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ctx_pointer__value = input_json["ctx"]["value"];
  struct apei_exec_context ctx_pointer = {ctx_pointer__value};
  struct apei_exec_context* ctx = &ctx_pointer;
  int input = input_json["input"];
  clock_t begin = clock();
  apei_exec_ctx_set_input(ctx, input);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ctx, input);
}