#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ plainchar; int /*<<< orphan*/  step; } ;
typedef  TYPE_1__ htp_base64_decoder ;

/* Variables and functions */
extern  int /*<<< orphan*/  step_a ; 
extern "C" { void htp_base64_decoder_init(htp_base64_decoder *decoder);
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

void write_output(TYPE_1__* decoder) {
  json output_json;
  TYPE_1__ output_temp_1 = *decoder;
  json output_temp_2;

  output_temp_2["plainchar"] = output_temp_1.plainchar;

  output_temp_2["step"] = output_temp_1.step;
  output_json["decoder"] = output_temp_2;

  output_json["step_a"] = step_a;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int decoder_pointer__plainchar = input_json["decoder"]["plainchar"];
  int decoder_pointer__step = input_json["decoder"]["step"];
  TYPE_1__ decoder_pointer = {decoder_pointer__plainchar, decoder_pointer__step};
  TYPE_1__* decoder = &decoder_pointer;
  step_a = input_json["step_a"];
  clock_t begin = clock();
  htp_base64_decoder_init(decoder);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(decoder);
}