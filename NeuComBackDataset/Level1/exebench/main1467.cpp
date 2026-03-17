#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  SharpYUVFilterRow_SSE2 ; 
extern  int /*<<< orphan*/  SharpYUVUpdateRGB_SSE2 ; 
extern  int /*<<< orphan*/  SharpYUVUpdateY_SSE2 ; 
extern  int /*<<< orphan*/  WebPSharpYUVFilterRow ; 
extern  int /*<<< orphan*/  WebPSharpYUVUpdateRGB ; 
extern  int /*<<< orphan*/  WebPSharpYUVUpdateY ; 
extern "C" { void WebPInitSharpYUVSSE2(void);
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

  output_json["SharpYUVFilterRow_SSE2"] = SharpYUVFilterRow_SSE2;

  output_json["SharpYUVUpdateRGB_SSE2"] = SharpYUVUpdateRGB_SSE2;

  output_json["SharpYUVUpdateY_SSE2"] = SharpYUVUpdateY_SSE2;

  output_json["WebPSharpYUVFilterRow"] = WebPSharpYUVFilterRow;

  output_json["WebPSharpYUVUpdateRGB"] = WebPSharpYUVUpdateRGB;

  output_json["WebPSharpYUVUpdateY"] = WebPSharpYUVUpdateY;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  SharpYUVFilterRow_SSE2 = input_json["SharpYUVFilterRow_SSE2"];
  SharpYUVUpdateRGB_SSE2 = input_json["SharpYUVUpdateRGB_SSE2"];
  SharpYUVUpdateY_SSE2 = input_json["SharpYUVUpdateY_SSE2"];
  WebPSharpYUVFilterRow = input_json["WebPSharpYUVFilterRow"];
  WebPSharpYUVUpdateRGB = input_json["WebPSharpYUVUpdateRGB"];
  WebPSharpYUVUpdateY = input_json["WebPSharpYUVUpdateY"];
  clock_t begin = clock();
  WebPInitSharpYUVSSE2();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}