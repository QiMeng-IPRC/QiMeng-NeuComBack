#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  EncoderMode_I1 ; 
extern  int /*<<< orphan*/  Mode_CalI2v ; 
extern  scalar_t__ cal2Disp ; 
extern  int /*<<< orphan*/  encoderMode ; 
extern  int /*<<< orphan*/  mode ; 
extern "C" { void startCalI2v();
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

  output_json["EncoderMode_I1"] = EncoderMode_I1;

  output_json["Mode_CalI2v"] = Mode_CalI2v;

  output_json["cal2Disp"] = cal2Disp;

  output_json["encoderMode"] = encoderMode;

  output_json["mode"] = mode;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  EncoderMode_I1 = input_json["EncoderMode_I1"];
  Mode_CalI2v = input_json["Mode_CalI2v"];
  cal2Disp = input_json["cal2Disp"];
  encoderMode = input_json["encoderMode"];
  mode = input_json["mode"];
  clock_t begin = clock();
  startCalI2v();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}