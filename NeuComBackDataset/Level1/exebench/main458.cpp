#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  AccumulateSSE_SSE2 ; 
extern  int /*<<< orphan*/  SSIMGet_SSE2 ; 
extern  int /*<<< orphan*/  VP8AccumulateSSE ; 
extern  int /*<<< orphan*/  VP8SSIMGet ; 
extern "C" { void VP8SSIMDspInitSSE2(void);
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

  output_json["AccumulateSSE_SSE2"] = AccumulateSSE_SSE2;

  output_json["SSIMGet_SSE2"] = SSIMGet_SSE2;

  output_json["VP8AccumulateSSE"] = VP8AccumulateSSE;

  output_json["VP8SSIMGet"] = VP8SSIMGet;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  AccumulateSSE_SSE2 = input_json["AccumulateSSE_SSE2"];
  SSIMGet_SSE2 = input_json["SSIMGet_SSE2"];
  VP8AccumulateSSE = input_json["VP8AccumulateSSE"];
  VP8SSIMGet = input_json["VP8SSIMGet"];
  clock_t begin = clock();
  VP8SSIMDspInitSSE2();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}